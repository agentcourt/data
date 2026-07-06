# ex03 Summary

## Proposition and Clarifying Rules

> For the Kalshi market "What will Trump say during the FIFA World Cup Draw?", the strike "Ronaldo" should resolve Yes because Trump said "Ronaldo" in public remarks at the World Cup Draw venue immediately before the formal program, and the market wording plus the governing mention-market terms did not clearly exclude those event-linked remarks.

The evidence standard was preponderance of the evidence.  The source [README](../../../../../../adjudication/arb/examples/ex03/README.md) states that ex03 was built to ground the Ronaldo dispute in the Kalshi market page, the PRESMENTION or NEWMENTION terms, the pre-event reporter-exchange transcript, and a formal-draw archive note.  The run [complaints](run-01/complaint.md) carried the same proposition as the source [complaint](../../../../../../adjudication/arb/examples/ex03/complaint.md).

The controlling packet files were [market-page.txt](../../../../../../adjudication/arb/examples/ex03/market-page.txt), [presmention-terms.txt](../../../../../../adjudication/arb/examples/ex03/presmention-terms.txt), [pre-event-reporter-exchange.txt](../../../../../../adjudication/arb/examples/ex03/pre-event-reporter-exchange.txt), and [formal-draw-archive-note.txt](../../../../../../adjudication/arb/examples/ex03/formal-draw-archive-note.txt).  The market-page file identified the public market title, the `Ronaldo` strike, the challenged `No` resolution, and the requested `Yes` resolution.  The mention-market terms supplied the general rule for counting a standalone word said by the specified speaker during the specified time period, while leaving the event-boundary question to the admitted market wording and source record.

## Resolution Summary

The three runs did not agree.  Run 01 resolved `not_demonstrated` by a 3-2 vote, run 02 resolved `demonstrated` by a 3-0 vote with two failed council members, and run 03 closed as `no_majority` after only two submitted votes, both for `not_demonstrated`.  The split turned on whether the pre-event reporter exchange counted as part of the FIFA World Cup Draw for this market, given a direct record of Ronaldo usage before the formal program and formal-program transcript captures with no Ronaldo match.

## Procedure

Agent Arbitration runs a structured adversarial record before a voting council.  In these runs, the parties filed openings, submitted source captures and reports, argued the admitted record, and made closing submissions.  A five-member council then voted under the preponderance standard, with three submitted votes required for a merits decision.

This summary uses the run artifacts as the record and does not independently verify the submitted source captures.  It cross-checks each run against the batch [ledger](../ledger.csv), which reports `status=ok`, cleanup success, and the same run-level resolutions found in the run records.  It uses these artifacts:

- Run records: [Run 01](run-01/run.json), [Run 02](run-02/run.json), and [Run 03](run-03/run.json).
- Digests: [Run 01 digest](run-01/digest.md), [Run 02 digest](run-02/digest.md), and [Run 03 digest](run-03/digest.md).
- Evidence manifests: [Run 01 manifest](run-01/evidence-manifest.json), [Run 02 manifest](run-02/evidence-manifest.json), and [Run 03 manifest](run-03/evidence-manifest.json).
- Full transcripts: [Run 01 transcript](run-01/transcript.md), [Run 02 transcript](run-02/transcript.md), and [Run 03 transcript](run-03/transcript.md).

## Results

The outcomes varied across the three runs.  Run 01 seated all five council members and produced a first-round majority for `not_demonstrated`.  Run 02 reached a first-round `demonstrated` majority after two council members failed, while run 03 had three failed council members and therefore lacked enough submitted votes for a decision.

| Run | Case ID | Started UTC | Finished UTC | Resolution | Submitted vote tally | Failed council members |
| --- | --- | --- | --- | --- | --- | --- |
| [Run 01](run-01/run.json) | `arb-ex03-20260629192557` | 2026-06-29 19:25:57 | 2026-06-29 19:46:06 | `not_demonstrated` | 3-2 for `not_demonstrated` | None |
| [Run 02](run-02/run.json) | `arb-ex03-20260629194607` | 2026-06-29 19:46:07 | 2026-06-29 20:51:01 | `demonstrated` | 3-0 for `demonstrated` | C3 and C5 failed before voting |
| [Run 03](run-03/run.json) | `arb-ex03-20260629205103` | 2026-06-29 20:51:03 | 2026-06-29 21:09:36 | `no_majority` | 2-0 for `not_demonstrated`, below decision threshold | C2, C4, and C5 failed before voting |

## Evidence and Arguments

All three runs used a starting packet with more source material than ex02 because the packet included Kalshi market identifiers, full mention-market terms, the pre-event reporter-exchange text, and a formal-draw archive note.  The plaintiff argued that the Ronaldo remarks were official or public event-linked venue remarks with FIFA leadership present, and that the terms did not exclude such remarks.  The defense argued that the transcript title placed the remarks before the draw, that formal-program transcript captures lacked Ronaldo, and that the record did not prove pre-program remarks fell within the market time period.

| Evidence source | Runs and submitting side | Use in the record |
| --- | --- | --- |
| [Market page packet file](../../../../../../adjudication/arb/examples/ex03/market-page.txt) | All runs, case packet | Identified the Kalshi market URL, title, contract family, `Ronaldo` strike, challenged `No` resolution, and requested `Yes` resolution. |
| [Mention-market terms](../../../../../../adjudication/arb/examples/ex03/presmention-terms.txt) | All runs, case packet | Supplied the general word-counting and event-time-period framework, including standalone-word treatment and event-based time-period language. |
| [Pre-event reporter exchange](../../../../../../adjudication/arb/examples/ex03/pre-event-reporter-exchange.txt) | All runs, case packet; [run 01 plaintiff GovInfo capture](run-01/submitted-evidence/submitted-evidence-01-plaintiff-3fc783920414.txt); [run 02 plaintiff APP capture](run-02/submitted-evidence/submitted-evidence-01-plaintiff-c7c5425b23cf.txt) | Supplied the affirmative Ronaldo usage in remarks titled as prior to the FIFA World Cup Draw, with World Cup, FIFA, Kennedy Center, and Infantino context. |
| [Formal-draw archive note](../../../../../../adjudication/arb/examples/ex03/formal-draw-archive-note.txt) | All runs, case packet | Recorded the separate formal-program archive and the original packet's retrieval limit, making the boundary between pre-event exchange and formal program a central issue. |
| Formal-program transcript captures | [Run 01 defendant](run-01/submitted-evidence/submitted-evidence-02-defendant-fbb53e87ccb3.txt), [Run 02 defendant](run-02/submitted-evidence/submitted-evidence-02-defendant-177c67332111.txt), [Run 03 plaintiff](run-03/submitted-evidence/submitted-evidence-02-plaintiff-8637490aafef.txt) | Reported accessible Roll Call, Factba.se, or Rev formal-program text searches with no Ronaldo match, which supported the defense boundary argument and plaintiff's adverse-source treatment. |
| [Run 03 Kalshi market extraction](run-03/submitted-evidence/submitted-evidence-01-plaintiff-c3ecd221f5a8.txt) | Run 03 plaintiff | Added a rendered Kalshi market-page extraction for the event and source wording, but the run still lacked a captured official source saying pre-program reporter remarks were included. |
| Technical reports in [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json) | Run-specific party reports | Recorded source searches, retrieval limits, formal-transcript no-match checks, missing direct video, missing official livestream source for the reporter exchange, and the absence of market-specific text resolving the pre-program boundary. |

## Deliberation Results

The run 01 council divided 3-2 against the proposition.  The run 02 council reached the opposite outcome with three submitted votes for the proposition.  Run 03 had only two submitted votes, both against the proposition, so it closed without the three votes required for a decision.

| Run | Member | Result | Explanation summary |
| --- | --- | --- | --- |
| [Run 01](run-01/run.json) | C1 | `not_demonstrated` | Treated the reporter exchange title as placing the Ronaldo remarks before the event, and found no term that included pre-event remarks in the market period. |
| [Run 01](run-01/run.json) | C2 | `not_demonstrated` | Found that the formal draw transcript lacked Ronaldo and that pre-event press exchanges did not qualify without explicit inclusion. |
| [Run 01](run-01/run.json) | C3 | `not_demonstrated` | Read "during the FIFA World Cup Draw" as the formal draw and found the pre-event exchange outside that period. |
| [Run 01](run-01/run.json) | C4 | `demonstrated` | Treated the remarks as official public venue remarks immediately before the program, with FIFA leadership present and no term excluding them. |
| [Run 01](run-01/run.json) | C5 | `demonstrated` | Found the standalone Ronaldo word in official public remarks at the Kennedy Center and treated the terms as excluding backstage or unofficial content rather than public venue remarks. |
| [Run 02](run-02/run.json) | C1 | `demonstrated` | Found that public remarks at the Kennedy Center immediately before the program, with FIFA leadership present and World Cup topics discussed, fell within the event-linked market scope. |
| [Run 02](run-02/run.json) | C2 | `demonstrated` | Treated the admitted reporter-exchange transcript as showing Ronaldo during the World Cup Draw event and found no exclusion for pre-program public remarks. |
| [Run 02](run-02/run.json) | C3 | Failed before vote | The member process exited before completing deliberation. |
| [Run 02](run-02/run.json) | C4 | `demonstrated` | Found that the immediately pre-program remarks at the venue satisfied the market requirement because they occurred during event-related activities. |
| [Run 02](run-02/run.json) | C5 | Failed before vote | The member process exited before completing deliberation. |
| [Run 03](run-03/run.json) | C1 | `not_demonstrated` | Found that Ronaldo appeared only in a pre-event exchange and that the formal draw video or transcript source set contained no Ronaldo match. |
| [Run 03](run-03/run.json) | C2 | Failed before vote | The member process exited before completing deliberation. |
| [Run 03](run-03/run.json) | C3 | `not_demonstrated` | Found that the record confirmed pre-event Ronaldo usage but did not establish that those remarks fell within the market's time period. |
| [Run 03](run-03/run.json) | C4 | Failed before vote | The member process exited before completing deliberation. |
| [Run 03](run-03/run.json) | C5 | Failed before vote | The member process exited before completing deliberation. |

## Juror Explanation Summary

The `not_demonstrated` reasoning treated the word "during" as a limiting term.  Those jurors gave weight to the reporter-exchange title placing the remarks before the draw, the absence of Ronaldo from formal-program transcript captures, and the lack of admitted market-specific text including pre-program exchanges.  They did not dispute that the record contained Ronaldo usage; they found the event-boundary proof insufficient.

The `demonstrated` reasoning treated the venue, timing, public character, and FIFA context as enough to include the remarks.  Those jurors emphasized that Trump was at the Kennedy Center immediately before the formal program, speaking publicly about the World Cup with FIFA leadership present.  They read the mention-market terms as excluding backstage or unofficial material but not public venue remarks tied to the event.

The three outcomes show that ex03 remained sensitive to council interpretation despite its stronger packet.  Run 01 and run 02 reached opposite majorities on the same basic boundary question.  Run 03 then had too few completed council votes to convert its two negative votes into a run-level `not_demonstrated` decision.
