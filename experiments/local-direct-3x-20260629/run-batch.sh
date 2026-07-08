#!/usr/bin/env bash
set -u

batch_root="out/local-direct-three-per-ex-only-20260629"
ledger="$batch_root/ledger.csv"
batch_log="$batch_root/batch.log"
pool="$(pwd)/pool.jsonl"

mapfile -t examples < <(
  find examples -mindepth 1 -maxdepth 1 -type d -name 'ex*' \
    -exec test -f '{}/complaint.md' \; -print |
    sed 's#^examples/##' |
    sort
)

log() {
  printf '%s %s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$*" | tee -a "$batch_log"
}

json_field() {
  local file="$1"
  local expr="$2"
  if [ -f "$file" ]; then
    jq -r "$expr // \"\"" "$file" 2>/dev/null
  else
    printf ''
  fi
}

append_ledger() {
  local example="$1"
  local attempt="$2"
  local outdir="$3"
  local rc="$4"
  local cleanup_ok="$5"
  local note="$6"
  local run_json="$outdir/run.json"
  local local_run_json="$outdir/local-run.json"
  local status resolution started_at finished_at file_count total_bytes

  status="$(json_field "$run_json" '.status')"
  resolution="$(json_field "$run_json" '.resolution')"
  started_at="$(json_field "$run_json" '.started_at')"
  finished_at="$(json_field "$run_json" '.finished_at')"
  if [ -z "$status" ]; then
    status="$(json_field "$local_run_json" '.status')"
  fi
  if [ -z "$resolution" ]; then
    resolution="$(json_field "$local_run_json" '.resolution')"
  fi
  file_count="$(find "$outdir" -type f | wc -l | tr -d ' ')"
  total_bytes="$(du -sb "$outdir" | awk '{print $1}')"

  printf '%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n' \
    "$example" "$attempt" "$outdir" "$status" "$resolution" \
    "$file_count" "$total_bytes" "$started_at" "$finished_at" \
    "$cleanup_ok" "rc=$rc $note" >> "$ledger"
}

cleanup_run() {
  local outdir="$1"
  local stale_names name failed
  failed=0

  find "$outdir" -maxdepth 1 -type d -name 'pi-C*' -exec rm -rf {} +
  if find "$outdir" -maxdepth 1 -type d -name 'pi-C*' -print -quit | grep -q .; then
    log "cleanup failed: pi-C directories remain in $outdir"
    failed=1
  fi

  stale_names="$(podman ps -a --format '{{.Names}}' | awk '/^aar-/{print}')"
  if [ -n "$stale_names" ]; then
    while IFS= read -r name; do
      [ -n "$name" ] || continue
      log "removing stale podman container $name"
      podman rm -f "$name" >/dev/null || failed=1
    done <<EOF_STALE_PODMAN
$stale_names
EOF_STALE_PODMAN
  fi

  stale_names="$(docker ps -a --format '{{.Names}}' | awk '/^aar-/{print}')"
  if [ -n "$stale_names" ]; then
    while IFS= read -r name; do
      [ -n "$name" ] || continue
      log "removing stale docker container $name"
      docker rm -f "$name" >/dev/null || failed=1
    done <<EOF_STALE_DOCKER
$stale_names
EOF_STALE_DOCKER
  fi

  return "$failed"
}

if [ "${#examples[@]}" -eq 0 ]; then
  printf 'no examples/ex* directories with complaint.md found\n' >&2
  exit 1
fi

if [ ! -f "$ledger" ]; then
  printf '%s\n' 'example,attempt,out_dir,status,resolution,file_count,total_bytes,started_at,finished_at,cleanup_ok,notes' > "$ledger"
fi

log "batch start root=$batch_root examples=${#examples[@]}"
df -h / /media/hd2 | tee -a "$batch_log"

for example in "${examples[@]}"; do
  for attempt in 01 02 03; do
    outdir="$batch_root/$example/run-$attempt"
    if [ -e "$outdir" ]; then
      status="$(json_field "$outdir/run.json" '.status')"
      if [ -n "$status" ] && ! find "$outdir" -maxdepth 1 -type d -name 'pi-C*' -print -quit | grep -q .; then
        log "skip existing example=$example attempt=$attempt outdir=$outdir status=$status"
        continue
      fi
      log "refusing to overwrite incomplete output directory $outdir"
      exit 1
    fi
    mkdir -p "$outdir"
    log "start example=$example attempt=$attempt outdir=$outdir"

    .bin/aar run \
      --out-dir "$outdir" \
      --openclaw-auth codex \
      --openclaw-codex-auth "$HOME/.codex/auth.json" \
      --openclaw-network host \
      --council-pool "$pool" \
      "$example" >"$outdir/aar.stdout" 2>"$outdir/aar.stderr"
    rc=$?

    cleanup_ok=true
    if ! cleanup_run "$outdir"; then
      cleanup_ok=false
    fi

    append_ledger "$example" "$attempt" "$outdir" "$rc" "$cleanup_ok" ""
    log "finish example=$example attempt=$attempt rc=$rc cleanup_ok=$cleanup_ok"
    du -sh "$outdir" | tee -a "$batch_log"
    df -h / /media/hd2 | tee -a "$batch_log"

    if [ "$cleanup_ok" != true ]; then
      log "stopping after cleanup failure"
      exit 1
    fi
    if [ "$rc" -ne 0 ]; then
      log "stopping after run failure"
      exit "$rc"
    fi
  done
done

log "batch complete"
