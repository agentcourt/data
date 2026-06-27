#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

sha256sum --quiet -c SHA256SUMS

for sums in runs/arb/ex11a/newpool-11council-6majority/*/SHA256SUMS; do
  (cd "$(dirname "$sums")" && sha256sum --quiet -c SHA256SUMS)
done

jq -e '
  all(.runs[];
    .status == "ok" and
    .phase == "closed" and
    .policy.council_size == 11 and
    .policy.required_votes_for_decision == 6
  )
' manifest.json >/dev/null

for run in runs/arb/ex11a/newpool-11council-6majority/*/run.json; do
  jq -e '
    .status == "ok" and
    .phase == "closed" and
    .final_state.policy.council_size == 11 and
    .final_state.policy.required_votes_for_decision == 6
  ' "$run" >/dev/null
done

printf '%s\n' 'verification passed'
