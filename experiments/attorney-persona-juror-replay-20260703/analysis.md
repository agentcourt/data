# Attorney Persona Juror Replay Analysis

## Scope

This dataset records a single-juror replay experiment against saved AgentCourt arbitration outputs.  Each replay used the C1 council-turn snapshot from an existing direct local arbitration run, combined with one attorney persona from `adjudication/evals/personas/experiments/attorneys`.  The model was held constant at `openrouter://openai/gpt-oss-120b`, routed to WandB fp4 with provider fallback disabled.

The design covered 16 examples, three saved runs per example, 17 attorney personas, and five repeats for each persona and saved-run condition.  That design produced 4,080 planned rows.  The published compact file contains 4,079 completed deliberations and one retained error row for `ex05/run-01/RobertBilott/r02`, which timed out after 15 minutes.

## Run Facts

| Item | Value |
|---|---:|
| Planned rows | 4,080 |
| Completed deliberations | 4,079 |
| Error rows | 1 |
| Demonstrated votes | 2,728 |
| Not-demonstrated votes | 1,351 |
| Completed-row demonstrated rate | 0.669 |
| Source saved runs | 48 |
| Attorney personas | 17 |
| Repeats per saved-run/persona condition | 5 |
| Model | `openrouter://openai/gpt-oss-120b` |

The compact JSONL file retains the final status, case identifier, model, vote, rationale, persona file, and source replay output path for each planned replay.  The full replay work directories, logs, tool-call streams, prompts, and copied source snapshots remain in the generating workspace.  Those larger artifacts occupied about 3.6 GB.

## Outcomes by Example

| Example | Rows | Completed | Errors | Demonstrated | Not demonstrated |
|---|---:|---:|---:|---:|---:|
| `ex01` | 255 | 255 | 0 | 235 | 20 |
| `ex02` | 255 | 255 | 0 | 121 | 134 |
| `ex03` | 255 | 255 | 0 | 154 | 101 |
| `ex03a` | 255 | 255 | 0 | 70 | 185 |
| `ex04` | 255 | 255 | 0 | 255 | 0 |
| `ex05` | 255 | 254 | 1 | 150 | 104 |
| `ex06` | 255 | 255 | 0 | 128 | 127 |
| `ex07` | 255 | 255 | 0 | 173 | 82 |
| `ex08` | 255 | 255 | 0 | 246 | 9 |
| `ex08a` | 255 | 255 | 0 | 195 | 60 |
| `ex09` | 255 | 255 | 0 | 9 | 246 |
| `ex10` | 255 | 255 | 0 | 255 | 0 |
| `ex11` | 255 | 255 | 0 | 235 | 20 |
| `ex11a` | 255 | 255 | 0 | 249 | 6 |
| `ex12` | 255 | 255 | 0 | 253 | 2 |
| `ex13` | 255 | 255 | 0 | 0 | 255 |

The deterministic cases provide useful controls.  Every completed replay found `ex04` and `ex10` demonstrated, and every completed replay found `ex13` not demonstrated.  Near-deterministic cases included `ex12`, `ex11a`, `ex08`, `ex01`, and `ex11`.

The most evenly split examples were `ex06`, `ex02`, `ex05`, and `ex03`.  These cases turned on contested rule application or record construction rather than a uniform reading of the evidence.  `ex03a` moved strongly toward not demonstrated, which reflects how that source record and snapshot handled the FIFA draw timing issue after the lawyers searched for outside material.

## Saved-Run Variation

| Example and run | Rows | Completed | Errors | Demonstrated | Not demonstrated |
|---|---:|---:|---:|---:|---:|
| `ex01/run-01` | 85 | 85 | 0 | 84 | 1 |
| `ex01/run-02` | 85 | 85 | 0 | 70 | 15 |
| `ex01/run-03` | 85 | 85 | 0 | 81 | 4 |
| `ex02/run-01` | 85 | 85 | 0 | 55 | 30 |
| `ex02/run-02` | 85 | 85 | 0 | 60 | 25 |
| `ex02/run-03` | 85 | 85 | 0 | 6 | 79 |
| `ex03/run-01` | 85 | 85 | 0 | 35 | 50 |
| `ex03/run-02` | 85 | 85 | 0 | 81 | 4 |
| `ex03/run-03` | 85 | 85 | 0 | 38 | 47 |
| `ex03a/run-01` | 85 | 85 | 0 | 30 | 55 |
| `ex03a/run-02` | 85 | 85 | 0 | 1 | 84 |
| `ex03a/run-03` | 85 | 85 | 0 | 39 | 46 |
| `ex04/run-01` | 85 | 85 | 0 | 85 | 0 |
| `ex04/run-02` | 85 | 85 | 0 | 85 | 0 |
| `ex04/run-03` | 85 | 85 | 0 | 85 | 0 |
| `ex05/run-01` | 85 | 84 | 1 | 67 | 17 |
| `ex05/run-02` | 85 | 85 | 0 | 48 | 37 |
| `ex05/run-03` | 85 | 85 | 0 | 35 | 50 |
| `ex06/run-01` | 85 | 85 | 0 | 31 | 54 |
| `ex06/run-02` | 85 | 85 | 0 | 55 | 30 |
| `ex06/run-03` | 85 | 85 | 0 | 42 | 43 |
| `ex07/run-01` | 85 | 85 | 0 | 80 | 5 |
| `ex07/run-02` | 85 | 85 | 0 | 80 | 5 |
| `ex07/run-03` | 85 | 85 | 0 | 13 | 72 |
| `ex08/run-01` | 85 | 85 | 0 | 85 | 0 |
| `ex08/run-02` | 85 | 85 | 0 | 77 | 8 |
| `ex08/run-03` | 85 | 85 | 0 | 84 | 1 |
| `ex08a/run-01` | 85 | 85 | 0 | 75 | 10 |
| `ex08a/run-02` | 85 | 85 | 0 | 84 | 1 |
| `ex08a/run-03` | 85 | 85 | 0 | 36 | 49 |
| `ex09/run-01` | 85 | 85 | 0 | 8 | 77 |
| `ex09/run-02` | 85 | 85 | 0 | 0 | 85 |
| `ex09/run-03` | 85 | 85 | 0 | 1 | 84 |
| `ex10/run-01` | 85 | 85 | 0 | 85 | 0 |
| `ex10/run-02` | 85 | 85 | 0 | 85 | 0 |
| `ex10/run-03` | 85 | 85 | 0 | 85 | 0 |
| `ex11/run-01` | 85 | 85 | 0 | 79 | 6 |
| `ex11/run-02` | 85 | 85 | 0 | 74 | 11 |
| `ex11/run-03` | 85 | 85 | 0 | 82 | 3 |
| `ex11a/run-01` | 85 | 85 | 0 | 80 | 5 |
| `ex11a/run-02` | 85 | 85 | 0 | 84 | 1 |
| `ex11a/run-03` | 85 | 85 | 0 | 85 | 0 |
| `ex12/run-01` | 85 | 85 | 0 | 84 | 1 |
| `ex12/run-02` | 85 | 85 | 0 | 84 | 1 |
| `ex12/run-03` | 85 | 85 | 0 | 85 | 0 |
| `ex13/run-01` | 85 | 85 | 0 | 0 | 85 |
| `ex13/run-02` | 85 | 85 | 0 | 0 | 85 |
| `ex13/run-03` | 85 | 85 | 0 | 0 | 85 |

Saved-run variation was larger than persona variation in the contested examples.  `ex07` moved from 80 demonstrated votes in runs 01 and 02 to 13 in run 03.  `ex02`, `ex03`, `ex03a`, and `ex08a` also changed sharply across saved runs, even though the replay model and persona set stayed fixed.

These differences reflect the source arbitration record and the C1 snapshot selected for replay.  A replay condition inherited the lawyers' filings, submitted evidence, summaries, and the original council-turn prompt context from that saved run.  The replay therefore measures how one model, under different attorney personas, reacts to a fixed saved record rather than how a new arbitration would build the record.

## Persona Summary

| Persona | Rows | Completed | Errors | Demonstrated | Not demonstrated |
|---|---:|---:|---:|---:|---:|
| BarbaraJordan | 240 | 240 | 0 | 169 | 71 |
| Brandeis | 240 | 240 | 0 | 159 | 81 |
| ConstanceBakerMotley | 240 | 240 | 0 | 156 | 84 |
| Darrow | 240 | 240 | 0 | 153 | 87 |
| DebraKatz | 240 | 240 | 0 | 158 | 82 |
| Ginsburg | 240 | 240 | 0 | 167 | 73 |
| HamiltonHouston | 240 | 240 | 0 | 167 | 73 |
| Kagan | 240 | 240 | 0 | 161 | 79 |
| Marshall | 240 | 240 | 0 | 154 | 86 |
| MaryJoWhite | 240 | 240 | 0 | 160 | 80 |
| NealKatyal | 240 | 240 | 0 | 156 | 84 |
| PreetBharara | 240 | 240 | 0 | 163 | 77 |
| RobertBilott | 240 | 239 | 1 | 164 | 75 |
| Scalia | 240 | 240 | 0 | 165 | 75 |
| SherrilynIfill | 240 | 240 | 0 | 166 | 74 |
| ThurgoodMarshall | 240 | 240 | 0 | 153 | 87 |
| VanitaGupta | 240 | 240 | 0 | 157 | 83 |

Raw persona demonstration rates ranged from 63.8 percent for Darrow and ThurgoodMarshall to 70.4 percent for BarbaraJordan.  These raw rates mix persona effects with the same 48 saved-run conditions, so they are useful as descriptive counts rather than causal estimates.  The observed spread is small compared with the saved-run shifts in the contested examples.

## Interpretation

The compact data supports a conservative conclusion: case identity and saved-run context dominated the replay outcomes, while attorney persona text produced smaller marginal shifts.  Deterministic and near-deterministic cases left little room for persona effects.  Ambiguous cases showed more variation, but much of that variation followed the saved run rather than the persona.

The rationale text is useful for qualitative review.  It shows how the same model framed rule-boundary questions, weighed evidence, and explained close votes under different persona prompts.  Evidence-tool analysis requires the generating replay directories, because the compact table contains vote and rationale data rather than tool-call logs.

The retained error row should remain in the dataset because it documents the planned condition that failed.  Excluding it would make the table look complete while hiding an operational failure.  Downstream analysis should filter `status == "ok"` when computing vote rates.
