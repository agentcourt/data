# AgentCourt Data Manual

## Purpose

This dataset preserves retained outputs from repeated AgentCourt arbitration runs.  It covers one broad examples batch, with three direct local runs for each `arb/examples/ex*` case, and one focused `ex11a` batch with an 11-member council.  The dataset supports inspection of lawyer behavior, admitted evidence, council voting, council failures, and variation across repeated runs.

The data comes from direct local `arb` runs.  Each run records its own policy, selected council, evidence, events, final state, transcript, digest, work notes, council-turn files, and logs.  Council member filesystems were removed after execution to control disk use, while the retained files preserve the reviewable run record.

## Directory Layout

Published runs live under `runs/arb/`.  The examples batch lives at [Examples, local direct, three runs each](runs/arb/examples/local-direct-3x-20260629/), with one directory per example and one child directory per attempt.  The focused `ex11a` batch lives at [ex11a, sampled pool, 11-member council](runs/arb/ex11a/newpool-11council-6majority/), with one directory per timestamped run.

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
| `policy-11-of-6.json` | Copy of the explicit 11-member, six-vote policy file used to start the run. |
| `runtime.json` | Runtime limits used by the local runner. |
| `local-run.json` | Local runner completion metadata. |
| `evidence-manifest.json` | Evidence metadata emitted by the runner. |
| `submitted-evidence/` | Text files submitted by lawyers as evidence. |
| `evidence-store/` | Hash-addressed evidence blobs. |
| `council-turns/` | Inputs and outputs for council deliberation turns. |
| `logs/` | Process logs for OpenClaw lawyers, council members, and MCP/API activity. |
| `SHA256SUMS` | Run-level checksum file. |
| `ledger.csv` | Run-set execution ledger for the examples batch. |
| `batch.log` | Run-set execution log for the examples batch. |
| `run-batch.sh` | Batch script retained as provenance for the examples batch. |
| `provenance.md` | Source, policy, cleanup, and import notes for a run set. |

## Inspecting a Run

Start with `digest.md` and `transcript.md` when reading a run by hand.  The digest gives the outcome, evidence list, arguments, and council result in a compact form.  The transcript preserves the sequence of lawyer filings and council votes in a form that is easier to read than the JSON records.

Use `events.ndjson` for chronological analysis.  The file records run initialization, evidence reads, lawyer actions, submitted evidence, council votes, failed opportunities, and member removals.  Each line is one JSON object, so `jq` can filter it without loading unrelated run data.

Use `run.json` when a single complete record is useful.  It contains the final result, final state, council roster, submitted evidence metadata, and the event list.  It duplicates some information from the smaller files, but it is the best single artifact for reproducible analysis.

Example commands:

```sh
jq -r '.status, .phase, .resolution, .started_at, .finished_at' runs/arb/examples/local-direct-3x-20260629/ex13/run-03/run.json
jq -r 'select(.type=="council_vote") | [.timestamp, .payload.member_id, .payload.model, .payload.payload.vote] | @tsv' runs/arb/examples/local-direct-3x-20260629/ex13/run-03/events.ndjson
jq -r '.submitted_evidence[]? | [.role, .phase, .title, .source_url] | @tsv' runs/arb/examples/local-direct-3x-20260629/ex13/run-03/run.json
```

## Evidence

The examples batch includes different case inputs, evidence packets, and case theories.  Some cases begin with a single rules file and rely on lawyer investigation, while others provide richer initial evidence.  Use `complaint.md`, `evidence-manifest.json`, and `submitted-evidence/` to determine what material the lawyers received, found, and admitted in a specific run.

`submitted-evidence/` contains the lawyer-submitted text captures.  `evidence-store/` contains the same retained evidence by content hash.  `evidence-manifest.json` and `run.json` connect each evidence file to its role, phase, title, source URL, retrieval timestamp, hash, and size.

## Council Data

`council.json` records the selected council members and model request specifications.  `events.ndjson` records successful votes and member failures.  `council-turns/` stores council deliberation input and output artifacts for each turn, which makes it the best source for studying what a council member saw and returned.

Failed council members are part of the data.  A failed member appears in `events.ndjson` through `opportunity_failed` and `council_member_removed` events.  The run may still close normally if the policy threshold is reached.

## Logs

`logs/` accounts for most of the retained byte size.  The `pi-C*.stdout` files contain raw council container output and can be large.  The `mcp.stderr` file records API tool calls, wait states, and tool success or failure.

The logs help diagnose council failures and model behavior.  They may also contain verbose provider output or repeated prompt material.  Review logs before using the dataset in a smaller derived publication package.

## Verification

The top-level `SHA256SUMS` file covers retained files except `README.md` files and checksum files.  Run `tools/verify.sh` from the repository root to check file integrity and basic run invariants.  The verifier requires `sha256sum` and `jq`.

`manifest.json` summarizes each run.  It includes the run path, status, phase, resolution, start and finish timestamps, council policy, file count, total byte count, and the per-run checksum file hash.  The manifest is for indexing; `SHA256SUMS` and the per-run checksum files are the integrity sources.
