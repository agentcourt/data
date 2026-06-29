# [AgentCourt](https://agentcourt.ai/index) Data

This repository publishes retained AgentCourt [arbitration](https://agentcourt.ai/arb/index) run outputs.  The initial dataset covers five direct local `arb` runs for [`examples/ex11a`](https://github.com/agentcourt/adjudication/tree/main/arb/examples/ex11a), using the sampled council pool, an 11-member council, and a six-vote decision threshold.  The data preserves run state, events, transcripts, work notes, admitted evidence, council inputs, council outputs, and process logs.

The run directories are under [the ex11a run set](runs/arb/ex11a/newpool-11council-6majority/).  The top-level [manual](manual.md) explains how to inspect a run and verify file integrity.  The [schema reference](schema.md) documents the retained artifact types.

## Run Set

| Run | Result | Started | Finished |
|---|---|---:|---:|
| `20260619T213059Z` | `no_majority` | `2026-06-19T21:31:36Z` | `2026-06-19T22:10:20Z` |
| `20260619T223155Z` | `demonstrated` | `2026-06-19T22:32:22Z` | `2026-06-19T23:02:43Z` |
| `20260619T230528Z` | `demonstrated` | `2026-06-19T23:05:46Z` | `2026-06-19T23:33:42Z` |
| `20260619T235158Z` | `demonstrated` | `2026-06-19T23:52:18Z` | `2026-06-20T00:18:58Z` |
| `20260620T002928Z` | `demonstrated` | `2026-06-20T00:30:04Z` | `2026-06-20T00:59:06Z` |

## Verification

Run the verifier from the repository root:

```sh
tools/verify.sh
```

The verifier checks `SHA256SUMS`, confirms that each run has `status: ok` and `phase: closed`, and confirms the council policy for each run.  It uses `sha256sum` and `jq`.
