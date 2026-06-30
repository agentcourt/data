#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if grep -q '  .*/README.md$' SHA256SUMS; then
  printf '%s\n' 'SHA256SUMS must not include README.md files' >&2
  exit 1
fi

if grep -q '  .*/SHA256SUMS$' SHA256SUMS; then
  printf '%s\n' 'top-level SHA256SUMS must not include checksum files' >&2
  exit 1
fi

sha256sum --quiet -c SHA256SUMS

jq -e '
  all(.runs[];
    .status == "ok" and
    .phase == "closed" and
    (.path | type == "string") and
    (.sha256sums_path | type == "string") and
    (.sha256sums_sha256 | type == "string")
  )
' manifest.json >/dev/null

manifest_runs="$(mktemp)"
actual_runs="$(mktemp)"
trap 'rm -f "$manifest_runs" "$actual_runs"' EXIT

jq -r '.runs[].path' manifest.json | sort >"$manifest_runs"
find runs -name run.json -printf '%h\n' | sort >"$actual_runs"
diff -u "$manifest_runs" "$actual_runs" >/dev/null

while IFS= read -r path; do
  sums="$path/SHA256SUMS"
  run="$path/run.json"

  test -f "$sums"
  test -f "$run"
  (cd "$path" && sha256sum --quiet -c SHA256SUMS)

  actual_sums_sha="$(sha256sum "$sums" | awk '{print $1}')"
  expected_sums_sha="$(jq -r --arg path "$path" '.runs[] | select(.path == $path) | .sha256sums_sha256' manifest.json)"
  test "$actual_sums_sha" = "$expected_sums_sha"

  jq -e '
    .status == "ok" and
    .phase == "closed"
  ' "$run" >/dev/null

  jq -e --arg path "$path" --slurpfile run "$run" '
    .runs[]
    | select(.path == $path)
    | .status == $run[0].status
      and .phase == $run[0].phase
      and .resolution == $run[0].resolution
      and .started_at == $run[0].started_at
      and .finished_at == $run[0].finished_at
      and .run_id == $run[0].run_id
      and .case_id == $run[0].case_id
      and .policy.council_size == $run[0].final_state.policy.council_size
      and .policy.required_votes_for_decision == $run[0].final_state.policy.required_votes_for_decision
      and .policy.max_deliberation_rounds == $run[0].final_state.policy.max_deliberation_rounds
      and .policy.evidence_standard == $run[0].final_state.policy.evidence_standard
  ' manifest.json >/dev/null
done <"$manifest_runs"

printf '%s\n' 'verification passed'
