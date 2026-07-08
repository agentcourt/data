# ex02 Summary

## Proposition and Clarifying Rules

> For the market "What will Trump say during the FIFA World Cup Draw?", the strike "Ronaldo" should resolve Yes because Trump's pre-event remarks at the venue immediately before the formal program count as occurring during the draw.

The evidence standard was preponderance of the evidence.  The case packet stated the proposition in the run [complaints](run-01/complaint.md), with the same text in the source example [complaint](../../../../../../adjudication/arb/examples/ex02/complaint.md).  The source [README](../../../../../../adjudication/arb/examples/ex02/README.md) explained that the local packet normalized a draft dispute into starting files and did not contain downloaded source archives.

The packet defined the dispute through three starting files: [market-question.txt](../../../../../../adjudication/arb/examples/ex02/market-question.txt), [pre-event-remarks.txt](../../../../../../adjudication/arb/examples/ex02/pre-event-remarks.txt), and [formal-draw-program.txt](../../../../../../adjudication/arb/examples/ex02/formal-draw-program.txt).  Those files framed the market as a challenged `No` resolution for the `Ronaldo` strike, attributed two Ronaldo lines to Trump's public remarks at the venue before the formal program, and stated that the formal draw-program transcript did not appear to contain the word.  The packet did not include a full upstream transcript, a Ronaldo-specific Kalshi rule file, a raw video, or an official resolution rationale.

## Resolution Summary

All three runs closed as `no_majority`.  Each run had at least one vote for `demonstrated` and at least one vote for `not_demonstrated`, and no run produced the three-vote majority required for a decision.  The recurring dispute was whether public venue remarks immediately before the formal draw program counted as remarks during the draw, given admitted evidence that supported Ronaldo usage but left unresolved the exact market boundary and Ronaldo-specific source chain.

## Procedure

Agent Arbitration runs a structured adversarial record before a voting council.  In these runs, the parties filed openings, submitted source captures and reports, argued the admitted record, and made closing submissions.  A five-member council then voted under the preponderance standard, with three submitted votes required for a merits decision.

This summary uses the run artifacts as the record and does not independently verify the submitted source captures.  It cross-checks each run against the batch [ledger](../ledger.csv), which reports `status=ok`, `resolution=no_majority`, cleanup success, and `rc=0` for all three ex02 runs.  It uses these artifacts:

- Run records: [Run 01](run-01/run.json), [Run 02](run-02/run.json), and [Run 03](run-03/run.json).
- Digests: [Run 01 digest](run-01/digest.md), [Run 02 digest](run-02/digest.md), and [Run 03 digest](run-03/digest.md).
- Evidence manifests: [Run 01 manifest](run-01/evidence-manifest.json), [Run 02 manifest](run-02/evidence-manifest.json), and [Run 03 manifest](run-03/evidence-manifest.json).
- Full transcripts: [Run 01 transcript](run-01/transcript.md), [Run 02 transcript](run-02/transcript.md), and [Run 03 transcript](run-03/transcript.md).

## Results

The three runs all reached the closed phase with `status=ok`.  Run 01 stopped after one round with only two submitted votes, split 1-1.  Runs 02 and 03 continued beyond the first round, but neither produced three votes for the same result.

| Run | Case ID | Started UTC | Finished UTC | Resolution | Submitted vote pattern | Failed council members |
| --- | --- | --- | --- | --- | --- | --- |
| [Run 01](run-01/run.json) | `arb-ex02-20260629181435` | 2026-06-29 18:14:35 | 2026-06-29 18:38:15 | `no_majority` | Round 1: 1 `demonstrated`, 1 `not_demonstrated` | C1, C3, and C4 failed before voting |
| [Run 02](run-02/run.json) | `arb-ex02-20260629183816` | 2026-06-29 18:38:16 | 2026-06-29 19:04:01 | `no_majority` | Round 1: 2-1 for `demonstrated`; rounds 2 and 3: 2-1 for `not_demonstrated` | C3 and C4 failed before voting |
| [Run 03](run-03/run.json) | `arb-ex02-20260629190403` | 2026-06-29 19:04:03 | 2026-06-29 19:25:56 | `no_majority` | Round 1: 2-1 for `demonstrated`; round 2: 1-1 split | C2 and C5 failed before voting; C3 failed before round 2 |

## Evidence and Arguments

The admitted record differed across the three runs.  The plaintiff used the packet's Ronaldo lines, White House or event context, Kalshi shared-market language, and public dispute-index material to argue that the pre-program remarks occurred in the covered event context.  The defense used formal-transcript no-match evidence, adverse dispute-index language, and missing Ronaldo-specific primary sources to argue that the record did not prove the market included red-carpet or pre-program remarks.

| Evidence source | Runs and submitting side | Use in the record |
| --- | --- | --- |
| [Market question](../../../../../../adjudication/arb/examples/ex02/market-question.txt), [pre-event remarks](../../../../../../adjudication/arb/examples/ex02/pre-event-remarks.txt), and [formal draw program note](../../../../../../adjudication/arb/examples/ex02/formal-draw-program.txt) | All runs, case packet | Defined the market, the `Ronaldo` strike, the challenged `No` resolution, the alleged pre-event Ronaldo lines, and the contrary point that the formal draw-program transcript appeared not to contain the strike. |
| [Run 01 plaintiff README capture](run-01/submitted-evidence/submitted-evidence-01-plaintiff-7bad2bf5c23f.txt) | Run 01 plaintiff | Preserved source-packet provenance for the example and reinforced that the local files were starting-point materials rather than downloaded primary archives. |
| White House or event-context captures | [Run 01 plaintiff](run-01/submitted-evidence/submitted-evidence-02-plaintiff-d226db7db459.txt), [Run 03 plaintiff](run-03/submitted-evidence/submitted-evidence-02-plaintiff-87077c188322.txt) | Supplied event-sequence or Kennedy Center context for treating the remarks as part of the draw occasion, while leaving the program-boundary question unresolved. |
| Bernard Bulletin or public dispute-index captures | [Run 01 plaintiff](run-01/submitted-evidence/submitted-evidence-03-plaintiff-f538e54a608d.txt), [Run 02 plaintiff](run-02/submitted-evidence/submitted-evidence-02-plaintiff-4bed0ef76dcf.txt), [Run 03 plaintiff](run-03/submitted-evidence/submitted-evidence-03-plaintiff-5d340a46bd86.txt) | Corroborated that the Ronaldo market dispute existed, but also preserved adverse context reporting a `No` result and a timeframe or version issue. |
| Kalshi shared-market or event-rule captures | [Run 01 defendant](run-01/submitted-evidence/submitted-evidence-04-defendant-e32c0549826b.txt), [Run 02 plaintiff](run-02/submitted-evidence/submitted-evidence-01-plaintiff-026c90725176.txt), [Run 02 defendant](run-02/submitted-evidence/submitted-evidence-03-defendant-bc775d9fe77b.json) | Supplied parent-event, sibling-strike, or settlement-source context; none of these admitted items supplied a Ronaldo-specific market page or an official rule expressly including or excluding pre-program remarks. |
| Formal draw transcript no-match capture | [Run 01 defendant](run-01/submitted-evidence/submitted-evidence-05-defendant-33acff7297bc.txt) | Supported the defense point that the formal draw-program transcript did not contain `Ronaldo`, which made the boundary between pre-program remarks and the formal program decisive. |
| Press-gaggle or Senate transcript captures | [Run 01 defendant](run-01/submitted-evidence/submitted-evidence-06-defendant-daf3876d49b8.txt), [Run 03 plaintiff](run-03/submitted-evidence/submitted-evidence-01-plaintiff-6ed0ce37445b.txt) | Supported that Trump made Ronaldo remarks in red-carpet or press-gaggle material before the formal event, while also preserving timing language that some jurors treated as adverse. |
| Technical reports in [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json) | Run-specific party reports | Recorded search paths and material gaps: missing full raw video, full transcript, Ronaldo-specific Kalshi market page, official determination notice, and official program-boundary source. |

## Deliberation Results

The council votes preserved two competing readings of the same record.  `Demonstrated` votes treated the live, public venue remarks immediately before the formal program as part of the draw event or its public coverage.  `Not_demonstrated` votes treated the phrase "during the FIFA World Cup Draw" as requiring the formal program or a stronger Ronaldo-specific rule that included pre-program remarks.

| Run | Member | Submitted votes | Explanation summary |
| --- | --- | --- | --- |
| [Run 01](run-01/run.json) | C1 | Failed before vote | The member process exited before completing deliberation. |
| [Run 01](run-01/run.json) | C2 | Round 1: `not_demonstrated` | Found that the remarks occurred before the formal program and were not shown to fall within the covered event under the governing sources. |
| [Run 01](run-01/run.json) | C3 | Failed before vote | The member process exited before completing deliberation. |
| [Run 01](run-01/run.json) | C4 | Failed before vote | The member process exited before completing deliberation. |
| [Run 01](run-01/run.json) | C5 | Round 1: `demonstrated` | Found that the record proved Ronaldo remarks at the venue immediately before the program and that no admitted rule imposed a formal-program-only limitation. |
| [Run 02](run-02/run.json) | C1 | Rounds 1-3: `demonstrated`, `demonstrated`, `demonstrated` | Consistently treated livestreamed venue remarks immediately before the formal program as within the event scope because the market used video as a primary source and no exclusion was admitted. |
| [Run 02](run-02/run.json) | C2 | Rounds 1-3: `not_demonstrated`, `not_demonstrated`, `not_demonstrated` | Consistently required a stronger Ronaldo-specific rule or source chain showing that pre-program remarks counted as during the draw. |
| [Run 02](run-02/run.json) | C3 | Failed before vote | The member process exited before completing deliberation. |
| [Run 02](run-02/run.json) | C4 | Failed before vote | The member process exited before completing deliberation. |
| [Run 02](run-02/run.json) | C5 | Rounds 1-3: `demonstrated`, `not_demonstrated`, `not_demonstrated` | Started by including venue remarks in the event scope, then moved to the view that the market phrase likely referred to the formal draw program and that the adverse dispute-index entry left the burden unmet. |
| [Run 03](run-03/run.json) | C1 | Rounds 1-2: `not_demonstrated`, `not_demonstrated` | Found that the admitted evidence placed the Ronaldo remarks before the FIFA event and that no official Kalshi rule included red-carpet remarks before the program. |
| [Run 03](run-03/run.json) | C2 | Failed before vote | The member process exited before completing deliberation. |
| [Run 03](run-03/run.json) | C3 | Round 1: `demonstrated`; failed before round 2 | Found in round 1 that the remarks occurred in the draw event context and that no official rule excluded pre-program remarks, then failed before submitting a second-round vote. |
| [Run 03](run-03/run.json) | C4 | Rounds 1-2: `demonstrated`, `demonstrated` | Found that the remarks were public, livestreamed, at the same venue, and immediately before the formal draw program, with no admitted exclusion for pre-program remarks. |
| [Run 03](run-03/run.json) | C5 | Failed before vote | The member process exited before completing deliberation. |

## Juror Explanation Summary

The `demonstrated` rationales emphasized setting, continuity, and the absence of an exclusion.  Those jurors treated the pre-program remarks as public remarks at the venue, in live or press-accessible coverage, immediately before the formal draw program.  They reasoned that the admitted rules or source captures did not impose a formal-stage boundary strict enough to exclude those remarks.

The `not_demonstrated` rationales emphasized burden, timing, and missing Ronaldo-specific materials.  Those jurors treated the formal program as the natural referent for "during the FIFA World Cup Draw" and gave weight to admitted sources describing the remarks as red-carpet, press-gaggle, or before-event material.  They also treated the missing primary video, full transcript, official Ronaldo-specific Kalshi page, and official resolution rationale as reasons the plaintiff had not carried the preponderance burden.

The process result reflected both evidence limits and council failures.  In run 01, only two members submitted votes, so the council split 1-1.  In runs 02 and 03, the voting members disagreed across rounds, and member failures left too few aligned votes to reach the three-vote threshold required for a merits resolution.
