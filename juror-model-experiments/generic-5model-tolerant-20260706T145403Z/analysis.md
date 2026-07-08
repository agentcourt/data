# Generic Model Juror Replay Analysis

## Scope

This experiment replayed one juror deliberation against saved arbitration outputs.  The input for each replay was the C1 council-turn snapshot from an existing local direct arbitration run.  The persona was held fixed at `generic.md`, and the model config varied across five council-member configs.

The design used 16 examples, three saved runs per example, five model configs, and five repeats for each model-run condition.  That produces 1,200 terminal rows: 16 examples times 3 saved runs times 5 models times 5 repeats.  Vote rates count successful rows; terminal error rows remain in the ledger and appear in the error columns.

## Run Facts

| Item | Value |
|---|---:|
| Terminal rows | 1,200 |
| Successful vote rows | 1,130 |
| Terminal error rows | 70 |
| Failed attempts | 223 |
| First recorded row start | 2026-07-06T14:54:47Z |
| Last recorded row finish | 2026-07-07T23:14:15Z |
| Elapsed wall time | 32.32 hours |
| Successful-row median duration | 27.989s |
| Successful-row 90th percentile | 163.850s |
| Successful-row 95th percentile | 270.426s |
| Successful-row 99th percentile | 531.301s |

The batch completed all planned terminal rows.  Some terminal rows ended in `error` after the retry policy was exhausted.  Those rows are operational failures, and the analysis below excludes them from vote-rate denominators.

## Main Findings

The model config changed vote distributions in a visible way even with the same generic persona and same replay inputs.  GPT had the highest demonstrated rate at 153 of 236 successful rows, or 64.8 percent.  Deepseek had the lowest demonstrated rate at 100 of 238 successful rows, or 42.0 percent.

Deepseek and Qwen disagreed with the other-model majority most often.  In leave-one-out comparisons, Deepseek disagreed on 63 of 215 eligible cells, or 29.3 percent, and Qwen disagreed on 49 of 179 eligible cells, or 27.4 percent.  Claude disagreed least often by that measure, with 23 disagreements in 179 eligible cells, or 12.8 percent.

The strongest case-level model spread appeared in `ex08a`, where Deepseek voted demonstrated in 3 of 15 successful rows and Claude voted demonstrated in 14 of 15.  `ex03` and `ex07` also had large model spreads.  These cases provide the strongest tests of whether a council pool over-represents a few model families.

Tool behavior differed by model.  Mistral made 719 `read_evidence_range` calls and read evidence in 152 rows, far above every other model.  GPT made 19 evidence-read calls and read evidence in 7 rows, while also producing the highest demonstrated rate.

## Model Outcomes

| Model | Rows | Successful | Errors | Demonstrated | Not demonstrated | Demonstrated rate | Error rate |
|---|---:|---:|---:|---:|---:|---:|---:|
| `claude-opus-4.8-fast` | 240 | 221 | 19 | 123 | 98 | 0.557 | 0.079 |
| `deepseek-r1` | 240 | 238 | 2 | 100 | 138 | 0.420 | 0.008 |
| `gpt-oss-120b` | 240 | 236 | 4 | 153 | 83 | 0.648 | 0.017 |
| `mistral-medium-3.5` | 240 | 226 | 14 | 112 | 114 | 0.496 | 0.058 |
| `qwen3-next-80b-thinking` | 240 | 209 | 31 | 108 | 101 | 0.517 | 0.129 |

GPT was the most pro-demonstrated model in this run.  Deepseek was the most skeptical model by vote rate, although it also had the lowest terminal error rate.  Mistral split almost evenly and used evidence tools much more often than the other models.

## Runtime and Tool Use

| Model | Successful rows | Mean seconds | Median seconds | Mean tool calls | Evidence-list turns | Evidence-read turns | Evidence reads |
|---|---:|---:|---:|---:|---:|---:|---:|
| `claude-opus-4.8-fast` | 221 | 20.804 | 15.743 | 2.751 | 162 | 101 | 195 |
| `deepseek-r1` | 238 | 176.237 | 116.130 | 2.676 | 51 | 60 | 282 |
| `gpt-oss-120b` | 236 | 22.570 | 14.492 | 1.267 | 25 | 7 | 19 |
| `mistral-medium-3.5` | 226 | 78.279 | 46.493 | 5.646 | 124 | 152 | 719 |
| `qwen3-next-80b-thinking` | 209 | 30.771 | 22.407 | 1.306 | 27 | 17 | 47 |

Deepseek was much slower than the other models, with a 176.237-second mean successful-row duration and a 116.130-second median.  Mistral was the second slowest model and had the highest recorded tool-call count.  GPT and Qwen usually submitted after few tool calls, which makes their votes less expensive but also less evidence-intensive.

Mistral's evidence use was the highest among the five models.  It read evidence in 152 rows and made 719 evidence-read calls, compared with 7 rows and 19 evidence-read calls for GPT.  That difference is large enough that future model experiments should report evidence-tool use beside vote rates.

## Argument Preferences

The rationale text shows model-specific argument preferences, but these findings are qualitative.  The analysis used repeated language patterns, representative rationales from the most model-sensitive examples, vote direction, and evidence-tool behavior.  These observations identify follow-up targets and provide weak evidence for stable model traits.

| Model | Observed preference |
|---|---|
| `claude-opus-4.8-fast` | Claude favored legal-standard and record-framing arguments.  It often wrote in burden, preponderance, and procedural-record terms, and it had the lowest leave-one-out minority rate. |
| `deepseek-r1` | Deepseek favored narrow, exclusion-focused readings.  It often required exact satisfaction of rule elements and treated ambiguity as failure of proof. |
| `gpt-oss-120b` | GPT favored broad, resolution-friendly readings.  It more often accepted context-based arguments when the record showed the target fact and the rules lacked an express exclusion. |
| `mistral-medium-3.5` | Mistral favored evidence-heavy and formal-source arguments.  It read evidence far more often than the other models and often emphasized official source boundaries, unresolved qualifiers, and formal program limits. |
| `qwen3-next-80b-thinking` | Qwen favored short rule-parsing arguments.  It often focused on whether the event or document matched the literal resolution terms, but its direction varied by case. |

The most useful examples are the cases with large model spreads.  In `ex03`, Claude, Deepseek, and Mistral tended to prefer the argument that pre-program remarks fell outside "during the Draw," while GPT and Qwen were more receptive to the broader event-context argument.  In `ex08a`, Claude and GPT tended to accept credible public reporting despite "alleged" or "purported" qualifiers, while Deepseek, Mistral, and Qwen tended to require stronger authorship proof.

`ex07` and `ex06` show the same pattern in different domains.  In `ex07`, Claude and GPT tended to accept the public-announcement and mutual-ceasefire argument, while Deepseek and Mistral preferred the limited-scope argument based on prisoner exchange, Victory Day framing, continued hostilities, and the absence of a general theater-wide pause.  In `ex06`, GPT was much more willing to treat the operation as removal of the sitting government, while the other four models tended to prefer the excluded-scenario argument: brief capture or extraction of Maduro without territorial occupation.

The tool data supports these argument differences.  Mistral read evidence in 152 successful rows and made 719 evidence-read calls, while GPT read evidence in 7 successful rows and made 19 evidence-read calls.  GPT's argument pattern therefore looks more summary-and-rule driven, while Mistral's pattern looks more record-inspection driven.

## Advocacy Guidance Exercise

This section translates the observed patterns into advocacy guidance for a hypothetical lawyer arguing to one model as a single juror.  The guidance is speculative.  It follows from one replay experiment and should be read as a set of hypotheses for testing.

For Claude, write the case as a legal burden problem.  Lead with the rule, the preponderance standard, and the exact fact that satisfies each element.  Give Claude a clean record map: admitted exhibit, proposition element, and why the opposing theory fails under the standard.

For Deepseek, remove ambiguity before arguing weight.  Deepseek punished loose fit between evidence and rule language, so focus on exact definitions, exclusions, timing, and source authority.  If the opponent has a narrow reading, answer it directly with primary evidence and explain why the rule text permits no contrary inference.

For GPT, give it a coherent story tied to the resolution terms.  GPT was more willing to accept context-based arguments when the target fact appeared in the record, so emphasize practical meaning, event context, and why the rules do not exclude the evidence.  Still cite the key exhibits, but keep the structure simple and make the inferential path easy to accept.

For Mistral, build the most formal evidentiary record.  Use primary sources, quote the controlling text, identify exhibit provenance, and walk through file contents.  Mistral seemed sensitive to qualifiers and official-source boundaries, so confront words like "alleged," "purported," "prior to," or "limited" before the other side uses them.

For Qwen, make the argument short, literal, and rule-facing.  Qwen often focused on whether the event, document, or action matched the resolution terms, so give it a compact syllogism: rule text, admitted fact, and conclusion.  Avoid complex chains of inference and make every cited exhibit's role explicit.

## Mixed-Jury Guidance

A mixed jury sampled from these models should be treated as a proxy for a broad set of reasonable model jurors.  The lawyer should write to the shared center: rule text, admitted evidence, and element-by-element proof.  A juror should be able to vote from the record map without reconstructing the lawyer's reasoning.

Start with the exact proposition and break it into required elements.  Map each element to one or two admitted exhibits, and state the inference that connects the exhibit to the element.  This structure serves both narrow readers, which demand exact rule fit, and broader readers, which accept practical context when the record supports it.

Use primary evidence wherever possible.  Prefer official records, transcripts, source video, signed files, metadata, and provenance over summaries or news characterizations.  If a secondary source carries the fact, explain why it is credible and identify the exact fact it proves.

Address both narrow and broad readings of the rule.  Some jurors will ask whether the evidence satisfies the literal wording; others will accept context and practical meaning.  The strongest filing makes the literal case first, then explains why the broader context supports the same result.

Neutralize qualifiers before the other side uses them.  Words like "alleged," "purported," "prior to," "limited," "temporary," and "reported" affected votes in the replay data.  Treat those terms as evidence problems: define what they change, what they leave unchanged, and why the burden is still met or unmet.

Make the burden of proof explicit.  Say what the preponderance standard requires in the proceeding and why the admitted record crosses it.  Avoid long inferential chains when a shorter exhibit-to-element argument works.

## Pairwise Agreement

| Model A | Model B | Matched pairs | Agreements | Agreement rate |
|---|---|---:|---:|---:|
| `claude-opus-4.8-fast` | `deepseek-r1` | 220 | 154 | 0.700 |
| `claude-opus-4.8-fast` | `gpt-oss-120b` | 217 | 171 | 0.788 |
| `claude-opus-4.8-fast` | `mistral-medium-3.5` | 220 | 176 | 0.800 |
| `claude-opus-4.8-fast` | `qwen3-next-80b-thinking` | 192 | 137 | 0.714 |
| `deepseek-r1` | `gpt-oss-120b` | 234 | 152 | 0.650 |
| `deepseek-r1` | `mistral-medium-3.5` | 224 | 165 | 0.737 |
| `deepseek-r1` | `qwen3-next-80b-thinking` | 208 | 131 | 0.630 |
| `gpt-oss-120b` | `mistral-medium-3.5` | 222 | 168 | 0.757 |
| `gpt-oss-120b` | `qwen3-next-80b-thinking` | 205 | 142 | 0.693 |
| `mistral-medium-3.5` | `qwen3-next-80b-thinking` | 195 | 133 | 0.682 |

The lowest agreement pair was Deepseek and Qwen at 63.0 percent.  Deepseek and GPT were next at 65.0 percent.  The highest agreement pair was Claude and Mistral at 80.0 percent.

## Case Outcomes

| Example | Successful rows | Errors | Demonstrated | Not demonstrated | Demonstrated rate |
|---|---:|---:|---:|---:|---:|
| `ex01` | 68 | 7 | 59 | 9 | 0.868 |
| `ex02` | 68 | 7 | 13 | 55 | 0.191 |
| `ex03` | 73 | 2 | 30 | 43 | 0.411 |
| `ex03a` | 72 | 3 | 7 | 65 | 0.097 |
| `ex04` | 72 | 3 | 66 | 6 | 0.917 |
| `ex05` | 70 | 5 | 39 | 31 | 0.557 |
| `ex06` | 74 | 1 | 11 | 63 | 0.149 |
| `ex07` | 74 | 1 | 29 | 45 | 0.392 |
| `ex08` | 73 | 2 | 56 | 17 | 0.767 |
| `ex08a` | 74 | 1 | 39 | 35 | 0.527 |
| `ex09` | 72 | 3 | 5 | 67 | 0.069 |
| `ex10` | 71 | 4 | 68 | 3 | 0.958 |
| `ex11` | 66 | 9 | 53 | 13 | 0.803 |
| `ex11a` | 68 | 7 | 59 | 9 | 0.868 |
| `ex12` | 66 | 9 | 62 | 4 | 0.939 |
| `ex13` | 69 | 6 | 0 | 69 | 0.000 |

The closest aggregate cases were `ex08a`, `ex05`, `ex03`, and `ex07`.  `ex08a` was nearly even, with 39 demonstrated votes and 35 not-demonstrated votes.  `ex13` was fully negative across successful rows, while `ex10`, `ex12`, and `ex04` were strongly positive.

## Model Spread by Case

| Example | Minimum model demonstrated rate | Maximum model demonstrated rate | Spread | Low model(s) | High model(s) |
|---|---:|---:|---:|---|---|
| `ex01` | 0.750 | 1.000 | 0.250 | Claude | GPT |
| `ex02` | 0.000 | 0.467 | 0.467 | Claude, Mistral | GPT |
| `ex03` | 0.000 | 0.667 | 0.667 | Claude | Qwen |
| `ex03a` | 0.000 | 0.286 | 0.286 | Claude, GPT | Qwen |
| `ex04` | 0.667 | 1.000 | 0.333 | Deepseek | Claude, GPT, Mistral |
| `ex05` | 0.333 | 0.700 | 0.367 | Deepseek | Qwen |
| `ex06` | 0.000 | 0.533 | 0.533 | Claude, Deepseek | GPT |
| `ex07` | 0.000 | 0.667 | 0.667 | Mistral | Claude, GPT |
| `ex08` | 0.538 | 1.000 | 0.462 | Qwen | Claude |
| `ex08a` | 0.200 | 0.933 | 0.733 | Deepseek | Claude |
| `ex09` | 0.000 | 0.200 | 0.200 | Claude, Mistral | Deepseek |
| `ex10` | 0.750 | 1.000 | 0.250 | Qwen | Claude, Deepseek, GPT, Mistral |
| `ex11` | 0.643 | 1.000 | 0.357 | Deepseek | Claude |
| `ex11a` | 0.643 | 1.000 | 0.357 | Deepseek | Claude, GPT, Qwen |
| `ex12` | 0.800 | 1.000 | 0.200 | Deepseek | Claude, GPT, Mistral |
| `ex13` | 0.000 | 0.000 | 0.000 | All five models | All five models |

The spread table shows where model choice changed outcomes most.  `ex08a` had the largest spread, driven by Claude at 14 demonstrated votes out of 15 and Deepseek at 3 out of 15.  `ex03`, `ex07`, and `ex06` also showed enough spread to affect council composition studies.

## Operational Failures

| Model | Failed attempts | Terminal errors |
|---|---:|---:|
| `claude-opus-4.8-fast` | 38 | 19 |
| `deepseek-r1` | 14 | 2 |
| `gpt-oss-120b` | 18 | 4 |
| `mistral-medium-3.5` | 28 | 14 |
| `qwen3-next-80b-thinking` | 125 | 31 |

Qwen was the main operational problem.  Its failed attempts included 81 agent exits before vote completion, 35 provider invalid-JSON errors, and 9 tool errors.  Its terminal error rate was 31 of 240 rows, or 12.9 percent.

Claude and Mistral errors mostly came from OpenRouter 402 responses about available credits versus `max_tokens`.  Those rows record provider/account state during the experiment.  The model-vote comparisons therefore treat them as missing operational data.

GPT failures included SambaNova upstream errors, early exits, and one `tool_not_found` failure.  Deepseek had few terminal errors but dominated the long-tail runtime.  The slowest successful rows were mostly Deepseek rows, with some long Mistral rows.

## Limits

This analysis reports descriptive statistics, argument-pattern review, and matched-cell agreement rates.  It does not report formal significance tests or confidence intervals.  Several observed differences are large enough to justify follow-up runs, but smaller differences should be treated as provisional.

The rows are partially dependent.  Each example used three saved arbitration runs, and each saved run contributed five repeats per model from the same C1 council-turn snapshot.  The repeats measure stochastic variation under a fixed snapshot; they do not provide 1,200 independent case records.

Per-case model rates have small denominators.  A model has at most 15 successful rows per example, and terminal errors reduce that denominator for several models.  A one-vote change in a 15-row model-example cell moves the demonstrated rate by 6.7 percentage points, so small per-case differences may reflect repeat variation.

Operational missingness may bias model comparisons.  Qwen had 31 terminal errors, Claude had 19, Mistral had 14, GPT had 4, and Deepseek had 2.  The missing rows were concentrated by model and provider failure mode, so vote rates compare only the successful rows and the denominator varies by model.

The word "model" in this document means the model config used by the replay runner.  A config includes the named model, provider route, endpoint behavior, and any provider-specific constraints.  The experiment therefore measures the configured council-member route, not a provider-independent model identity.

The argument-preference section is a qualitative analysis of generated rationales.  It uses repeated phrases, representative cases, and tool-use counts, but it was not manually coded by multiple blind reviewers.  The safest interpretation is that these patterns identify hypotheses for targeted reruns on the model-sensitive cases.

## Interpretation

Model differences persisted under the generic persona.  GPT voted demonstrated much more often than Deepseek, and the pairwise agreement table shows that several model pairs disagreed on roughly one-third of matched successful cells.  These differences are large enough to affect a small council if the sampled pool over-represents one model family.

Evidence inspection and demonstrated voting diverged.  Mistral inspected the record most heavily and split almost evenly, while GPT inspected evidence least and voted demonstrated most often.  Deepseek inspected evidence in fewer rows than Mistral but was much slower and more skeptical.

A targeted rerun design follows from these data.  `ex08a`, `ex03`, `ex07`, `ex06`, and `ex02` expose the largest model-dependent differences.  A follow-up can keep the same generic persona, rerun those cases with more repeats, and include a model pool selected to reduce family duplication.
