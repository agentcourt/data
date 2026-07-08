# [AgentCourt](https://agentcourt.ai/index) Data

This repository publishes retained AgentCourt [arbitration](https://agentcourt.ai/arb/index) run outputs.  The data preserves run state, events, transcripts, work notes, admitted evidence, council inputs, council outputs, and process logs.  The retained files support review of lawyer behavior, evidence use, council voting, council failures, and variation across repeated runs.

The top-level [manual](docs/manual.md) explains how to inspect a run.  The [schema reference](docs/schema.md) documents the retained file types.  Publication notes live in [the notice](docs/notice.md).

## Experiments

| Experiment | Contents | Description |
|---|---|---|
| [Local direct examples, three runs each](experiments/local-direct-3x-20260629/) | Full runs, summaries | Forty-eight arbitration runs across 16 examples, with three local direct runs per example. |
| [ex11a, 11-member council](experiments/ex11a-11council-6majority-20260619/) | Full runs | Five `ex11a` arbitration runs with an 11-member council and six-vote threshold. |
| [Attorney persona juror replays](experiments/attorney-persona-juror-replay-20260703/) | Table, analysis | Single-juror replays against saved local direct runs, using one fixed model and 17 attorney personas. |
| [Fixed-persona five-model juror replays](experiments/fixed-persona-5model-juror-replay-20260706/) | Tables, config, analysis | Single-juror replays against saved local direct runs, using one fixed persona and five model configs. |
