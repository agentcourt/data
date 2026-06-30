# Schema Reference

## Overview

The dataset retains runner output rather than a normalized database export.  Several files repeat the same facts because the runner saves chronological events, final state, human-readable summaries, and raw process logs.  Analysis code should prefer the smallest file that contains the needed information.

The JSON files use the field names emitted by the local AAR runner.  The event stream uses newline-delimited JSON, with one event object per line.  The Markdown files are derived human-readable views and should be treated as convenience artifacts rather than authoritative state.

## Core Files

| File | Format | Primary use |
|---|---|---|
| `run.json` | JSON | Complete final run record. |
| `state.json` | JSON | Final state snapshot. |
| `events.ndjson` | NDJSON | Chronological event analysis. |
| `work-notes.ndjson` | NDJSON | Lawyer work notes. |
| `transcript.md` | Markdown | Human-readable proceeding transcript. |
| `digest.md` | Markdown | Human-readable summary. |
| `manifest.json` | JSON | Dataset-level run index. |
| `SHA256SUMS` | Text | File integrity verification. |
| `ledger.csv` | CSV | Run-set execution ledger when retained. |
| `batch.log` | Text | Run-set execution log when retained. |
| `provenance.md` | Markdown | Source, policy, cleanup, and import notes for a run set. |

## `run.json`

`run.json` is the most complete single file in each run directory.  Important top-level fields include `case_id`, `run_id`, `started_at`, `finished_at`, `status`, `phase`, `resolution`, `final_reason`, `complaint`, `evidence_standard`, `council`, `submitted_evidence`, `evidence`, `events`, and `final_state`.  The `final_state.policy` object records the council size, required votes, evidence standard, character limits, evidence limits, and deliberation limits.

The `events` array in `run.json` duplicates the separate `events.ndjson` stream.  The separate stream is easier for line-oriented tools.  The embedded array is useful when loading one JSON document in an analysis program.

## `events.ndjson`

Each line in `events.ndjson` is a JSON object.  Common fields include `timestamp`, `type`, `role`, `phase`, and `payload`.  The payload shape depends on `type`.

Important event types include:

| Event type | Meaning |
|---|---|
| `run_initialized` | Case initialization completed. |
| `evidence_read` | A lawyer or council member read evidence. |
| `attorney_action` | A lawyer filed an opening, argument, rebuttal, surrebuttal, or closing. |
| `submitted_evidence` | A lawyer submitted an evidence item. |
| `council_vote` | A council member voted. |
| `opportunity_failed` | A lawyer or council member opportunity failed. |
| `council_member_removed` | A council member was removed after failure. |
| `run_finished` | The run closed. |

Council votes are available with:

```sh
jq -r 'select(.type=="council_vote") | [.timestamp, .payload.member_id, .payload.model, .payload.payload.vote] | @tsv' events.ndjson
```

## Evidence Files

`submitted-evidence/` stores text evidence submitted by lawyers.  `evidence-store/` stores evidence blobs by hash prefix and full hash.  `evidence-manifest.json` records evidence identifiers, hashes, byte counts, MIME types, titles, source URLs, source descriptions, retrieval timestamps, submitting roles, submitting phases, and relevance statements.

The evidence files contain captured source material from third-party web pages.  The dataset preserves source URLs and retrieval timestamps so the provenance can be reviewed.  See `NOTICE.md` for publication notes.

## Council Turns

`council-turns/` contains one directory per council opportunity.  The directory name includes a turn number and council member identifier.  Each turn directory stores the input supplied to the council member and the output returned by the council member when available.

These files support analysis of what a council member saw during deliberation.  They also preserve failed or incomplete opportunities when the runner retained their inputs or partial outputs.  Use the event stream to distinguish successful votes from failed council opportunities.

## Logs

`logs/` stores stderr and stdout from OpenClaw lawyer processes, council member processes, and the MCP/API layer.  `mcp.stderr` is useful for reconstructing tool calls and wait states.  `pi-C*.stdout` can be large because it includes raw council container output.

The logs are diagnostic artifacts.  They may include repeated prompts, raw model output, and process-level details.  They are useful for failure analysis and less convenient for primary outcome analysis than `events.ndjson`, `run.json`, and `council-turns/`.

## Run-Set Files

Some run sets retain execution files at the run-set root.  `ledger.csv` records one row per attempted run, including example, attempt, output path, status, resolution, file count, byte count, start time, finish time, cleanup status, and runner notes.  `batch.log` records the batch script’s progress messages and disk checks.

`run-batch.sh` is retained when it helps explain how the run set was produced.  It may contain local path references and command options, but it should not contain credential values.  `provenance.md` records source paths, generation times, council pool hashes, cleanup rules, and publication filters.
