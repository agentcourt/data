# [AgentCourt](https://agentcourt.ai/index) Data

This repository publishes retained AgentCourt [arbitration](https://agentcourt.ai/arb/index) run outputs.  The data preserves run state, events, transcripts, work notes, admitted evidence, council inputs, council outputs, and process logs.  The retained files support review of lawyer behavior, evidence use, council voting, council failures, and variation across repeated runs.

The top-level [manual](manual.md) explains how to inspect a run and verify file integrity.  The [schema reference](schema.md) documents the retained file types.  The [manifest](manifest.json) indexes every published run and records its result, policy, checksum file, and byte count.

## Run Sets

| Run set | Runs | Council policy | Results |
|---|---:|---|---|
| [Examples, local direct, three runs each](runs/arb/examples/local-direct-3x-20260629/) | 48 | 5 members, 3 votes required | 24 demonstrated, 16 not demonstrated, 8 no majority |
| [ex11a, sampled pool, 11-member council](runs/arb/ex11a/newpool-11council-6majority/) | 5 | 11 members, 6 votes required | 4 demonstrated, 1 no majority |

## Derived Data

| Dataset | Rows | Description |
|---|---:|---|
| [Attorney persona juror replays](persona-deliberations/attorney-exhaustive-20260703T180237Z/) | 4,080 | Single-juror replays against saved example arbitration runs, using one fixed model and 17 attorney personas. |

## Verification

Run the verifier from the repository root.  The command checks the top-level checksum file and all published run sets.  It exits with a nonzero status if a checksum, manifest field, or closed-run invariant fails.

```sh
tools/verify.sh
```

The verifier checks `SHA256SUMS`, checks each run-level checksum file, confirms that every run has `status: ok` and `phase: closed`, and compares manifest fields with each run’s `run.json`.  The top-level checksum file covers derived data files as well as retained run files, excluding README files and checksum files.  The verifier uses `sha256sum`, `jq`, `find`, and `diff`.
