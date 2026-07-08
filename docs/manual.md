# AgentCourt Data Manual

## Purpose

This dataset preserves retained outputs from AgentCourt arbitration experiments.  It contains full arbitration runs, single-juror replay tables, and analysis files tied to the source artifacts they describe.  The retained files support inspection of lawyer behavior, evidence use, council voting, council failures, and variation across repeated adjudications.

The full-run experiments come from direct local `arb` runs.  Each run records its policy, selected council, evidence, events, final state, transcript, digest, work notes, council-turn files, and logs.  Council member filesystems were removed after execution to control disk use, while the retained files preserve the reviewable run record.

## Directory Layout

Published material lives under `experiments/`.  Each experiment directory contains the source artifacts needed for that experiment, and summaries or analysis live in the narrowest directory that contains the artifacts they describe.  The repository root serves as the global index, while `docs/` holds cross-experiment documentation.

| Path | Description |
|---|---|
| [Local direct examples, three runs each](../experiments/local-direct-3x-20260629/) | Forty-eight arbitration runs across 16 examples, with three local direct runs per example. |
| [ex11a, 11-member council](../experiments/ex11a-11council-6majority-20260619/) | Five `ex11a` arbitration runs with an 11-member council and six-vote threshold. |
| [Attorney persona juror replays](../experiments/attorney-persona-juror-replay-20260703/) | Single-juror replay table and analysis, using one fixed model and 17 attorney personas. |
| [Fixed-persona five-model juror replays](../experiments/fixed-persona-5model-juror-replay-20260706/) | Single-juror replay tables, configs, plan, and analysis, using one fixed persona and five model configs. |

## Run Files

Full arbitration run directories retain the runner layout.  Some files appear in every full run, while batch-level files appear at the experiment root when the generator produced them.  The table describes the retained file types used across the full-run experiments.

| Path | Description |
|---|---|
| `run.json` | Final serialized run result, including parties, evidence, council roster, events, final state, and final resolution. |
| `state.json` | Final case state saved by the runner. |
| `events.ndjson` | Append-only event stream for the run. |
| `transcript.md` | Human-readable proceeding transcript. |
| `digest.md` | Human-readable run digest. |
| `work-notes.ndjson` | Lawyer work notes sent during the run. |
| `council.json` | Council roster and model request specifications. |
| `policy.json` | Policy used by the run. |
| `policy-11-of-6.json` | Copy of the explicit 11-member, six-vote policy file used by the focused `ex11a` runs. |
| `runtime.json` | Runtime limits used by the local runner. |
| `local-run.json` | Local runner completion metadata. |
| `evidence-manifest.json` | Evidence metadata emitted by the runner. |
| `submitted-evidence/` | Text files submitted by lawyers as evidence. |
| `evidence-store/` | Hash-addressed evidence blobs. |
| `council-turns/` | Inputs and outputs for council deliberation turns. |
| `logs/` | Process logs for OpenClaw lawyers, council members, and MCP/API activity. |
| `ledger.csv` | Execution ledger retained for an experiment when available. |
| `batch.log` | Execution log retained for an experiment when available. |
| `run-batch.sh` | Batch script retained as provenance when available. |
| `provenance.md` | Source, policy, cleanup, and import notes retained for an experiment when available. |

## Inspecting a Full Run

Start with `digest.md` and `transcript.md` when reading a run by hand.  The digest gives the outcome, evidence list, arguments, and council result in compact form.  The transcript preserves the sequence of lawyer filings and council votes in a form that is easier to read than the JSON records.

Use `events.ndjson` for chronological analysis.  The file records run initialization, evidence reads, lawyer actions, submitted evidence, council votes, failed opportunities, and member removals.  Each line is one JSON object, so `jq` can filter it without loading unrelated run data.

Use `run.json` when a single complete record is useful.  It contains the final result, final state, council roster, submitted evidence metadata, and the event list.  It duplicates some information from the smaller files, but it is the best single artifact for reproducible analysis.

Example commands from the repository root:

```sh
jq -r '.status, .phase, .resolution, .started_at, .finished_at' experiments/local-direct-3x-20260629/ex13/run-03/run.json
jq -r 'select(.type=="council_vote") | [.timestamp, .payload.member_id, .payload.model, .payload.payload.vote] | @tsv' experiments/local-direct-3x-20260629/ex13/run-03/events.ndjson
jq -r '.submitted_evidence[]? | [.role, .phase, .title, .source_url] | @tsv' experiments/local-direct-3x-20260629/ex13/run-03/run.json
```

## Evidence

The local direct experiment includes different case inputs, evidence packets, and case theories.  Some cases begin with a single rules file and rely on lawyer investigation, while others provide richer initial evidence.  Use `complaint.md`, `evidence-manifest.json`, and `submitted-evidence/` to determine what material the lawyers received, found, and admitted in a specific run.

`submitted-evidence/` contains the lawyer-submitted text captures.  `evidence-store/` contains the same retained evidence by content hash.  `evidence-manifest.json` and `run.json` connect each evidence file to its role, phase, title, source URL, retrieval timestamp, hash, and size.

## Council Data

`council.json` records the selected council members and model request specifications.  `events.ndjson` records successful votes and member failures.  `council-turns/` stores council deliberation input and output artifacts for each turn, which makes it the best source for studying what a council member saw and returned.

Failed council members are part of the data.  A failed member appears in `events.ndjson` through `opportunity_failed` and `council_member_removed` events.  The run may still close normally if the policy threshold is reached.

## Logs

`logs/` accounts for most of the retained byte size.  The `pi-C*.stdout` files contain raw council container output and can be large.  The `mcp.stderr` file records API tool calls, wait states, and tool success or failure.

The logs help diagnose council failures and model behavior.  They may also contain verbose provider output or repeated prompt material.  Review logs before using the dataset in a smaller publication package.

## Replay Tables

The attorney persona replay experiment publishes `persona-runs.jsonl`, with one JSON object per planned replay.  Each row records `status`, `case_id`, `model`, `vote`, `rationale`, `persona_file`, and `out_dir`.  The experiment README and analysis file describe the design, row counts, outcome counts, and limitations.

The fixed-persona five-model replay experiment publishes three JSONL ledgers: `model-runs.jsonl`, `attempts.jsonl`, and `failed-attempts.jsonl`.  `model-runs.jsonl` contains one terminal row per planned replay condition, while the other ledgers preserve retry history and failed attempts.  The experiment README and analysis file describe the model configs, terminal outcomes, and failure counts.

Example commands from the repository root:

```sh
jq -r 'select(.status == "ok") | .vote' experiments/attorney-persona-juror-replay-20260703/persona-runs.jsonl | sort | uniq -c
jq -c 'select(.status != "ok")' experiments/attorney-persona-juror-replay-20260703/persona-runs.jsonl
jq -r '[.model_label, .status] | @tsv' experiments/fixed-persona-5model-juror-replay-20260706/model-runs.jsonl | sort | uniq -c
```
