# Fixed-Persona Five-Model Juror Replays

This directory publishes compact output from a fixed-persona AgentCourt juror replay experiment.  The experiment replayed one council-member deliberation against saved arbitration outputs from the local direct examples run set.  The persona was held fixed at `generic.md`, and the model config varied across five council-member model configs.

Each row in `model-runs.jsonl` corresponds to one planned terminal replay condition.  The design used 16 examples, three saved runs per example, five model configs, and five repeats for each model-run condition.  That design produced 1,200 terminal rows: 1,130 successful vote rows and 70 terminal error rows.

The publication package includes the compact ledgers, fixed persona, model configs, plan, and analysis.  The full replay work directories, failed-run directories, resume-repair snapshots, copied source snapshots, process logs, tool-call streams, and Python caches remain in the generating workspace.  The `out_dir` and `persona_file` fields preserve generating workspace paths relative to `adjudication/arb`.

## Files

| Path | Description |
|---|---|
| `model-runs.jsonl` | Compact JSONL table with one row per planned terminal replay. |
| `attempts.jsonl` | JSONL ledger containing terminal rows and retried attempts. |
| `failed-attempts.jsonl` | JSONL ledger containing failed attempts. |
| `analysis.md` | Descriptive analysis of outcomes by example, saved run, and model. |
| `plan.json` | Planned source-run, model-order, and repeat schedule. |
| `config/generic.md` | Fixed council-member persona text. |
| `config/models/*.json` | Model config and endpoint metadata used by the replay runner. |

## Design

The source records came from 16 `arb/examples/ex*` cases, with three saved local direct arbitration runs for each case.  Each replay used the C1 council-turn snapshot from the saved arbitration output.  The replay varied five model configs: `claude-opus-4.8-fast`, `deepseek-r1`, `gpt-oss-120b`, `mistral-medium-3.5`, and `qwen3-next-80b-thinking`.

The model configs are retained as the run used them.  They include endpoint metadata, provider names, pricing snapshot fields, and persona-cluster metadata from the generating experiment.  A publication scan found no request credentials in the retained config or ledger files.

## Row Schema

The three JSONL ledgers use the same row fields.  Successful rows have `status: "ok"` with a vote and rationale.  Failed rows have `status: "error"` with the failure text in `error`.

| Field | Meaning |
|---|---|
| `status` | `ok` for completed deliberations, or `error` for failed attempts. |
| `case_id` | Source arbitration case identifier. |
| `example` | Source example directory name. |
| `run` | Source saved-run label. |
| `source_run` | Source example/run pair. |
| `model` | Model URI used for the replay. |
| `model_label` | Short model label used in analysis tables. |
| `provider` | Provider recorded for the replay. |
| `endpoint` | Endpoint label recorded for the replay. |
| `quantization` | Quantization label when recorded. |
| `repeat` | Repeat index within the source-run/model condition. |
| `attempt` | Attempt index for that replay condition. |
| `vote` | `demonstrated`, `not_demonstrated`, or `null` when the row failed. |
| `rationale` | Council-member rationale text, or `null` when the row failed. |
| `error` | Failure text, or `null` when the row succeeded. |
| `tool_call_count` | Count of recorded tool calls, or `null` when unavailable. |
| `started_at` | Row start timestamp in UTC. |
| `finished_at` | Row finish timestamp in UTC. |
| `duration_seconds` | Row duration in seconds. |
| `persona_file` | Generating workspace persona path. |
| `out_dir` | Generating workspace output directory. |

## Example Queries

Count terminal vote outcomes:

```sh
jq -r 'select(.status == "ok") | .vote' model-runs.jsonl | sort | uniq -c
```

Count terminal rows by model:

```sh
jq -r '[.model_label, .status] | @tsv' model-runs.jsonl \
  | awk '{k=$1 "\t" $2; count[k]++} END {for (k in count) print k "\t" count[k]}' \
  | sort
```

List terminal errors:

```sh
jq -c 'select(.status != "ok")' model-runs.jsonl
```
