# Attorney Persona Juror Replays

This directory publishes a compact output table from an AgentCourt juror replay experiment.  The experiment replayed one council-member deliberation against saved arbitration outputs, using the same model and changing only the attorney persona text.  The source records came from [the local direct examples experiment](../local-direct-3x-20260629/) published in this repository.

Each row in `persona-runs.jsonl` corresponds to one planned replay.  The table contains 4,080 rows: 4,079 completed deliberations and one retained timeout error.  This publication package includes the compact table and analysis.  The full replay work directories, logs, tool-call streams, prompts, and copied source snapshots remain in the generating workspace.

## Files

| Path | Description |
|---|---|
| `persona-runs.jsonl` | Compact JSONL table with one row per planned replay. |
| `analysis.md` | Descriptive analysis of outcomes by example, saved run, and persona. |

## Design

The experiment used 16 `arb/examples/ex*` cases, three saved arbitration runs per case, 17 attorney personas, and five repeats for each saved-run/persona condition.  Each replay used the C1 council-turn snapshot from the saved arbitration output.  The model was `openrouter://openai/gpt-oss-120b`, routed to WandB fp4 with provider fallback disabled.

The published rows preserve votes and rationales.  Reconstructing evidence-tool use, prompt construction, process logs, or provider failures requires the full replay work directories.  Only the compact status field appears here.  The `out_dir` field records the generating workspace path for provenance.

## Row Schema

| Field | Meaning |
|---|---|
| `status` | `ok` for completed deliberations, or `error` for the retained failed condition. |
| `case_id` | Source arbitration case identifier. |
| `model` | Model URI used for the replay. |
| `vote` | `demonstrated`, `not_demonstrated`, or `null` when the row failed. |
| `rationale` | Council-member rationale text, or `null` when the row failed. |
| `persona_file` | Repository-relative persona file path from the adjudication source tree. |
| `out_dir` | Generating replay output directory, relative to `adjudication/arb`. |

## Example Queries

Count completed votes:

```sh
jq -r 'select(.status == "ok") | .vote' persona-runs.jsonl | sort | uniq -c
```

List failed rows:

```sh
jq -c 'select(.status != "ok")' persona-runs.jsonl
```

Compute vote counts by persona:

```sh
jq -r 'select(.status == "ok") | [.persona_file | split("/")[-1] | sub("\\.txt$"; ""), .vote] | @tsv' persona-runs.jsonl \
  | awk '{k=$1 "\t" $2; count[k]++} END {for (k in count) print k "\t" count[k]}' \
  | sort
```
