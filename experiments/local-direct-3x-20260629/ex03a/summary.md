# ex03a Summary

## Proposition and Clarifying Rules

> For the Kalshi market "What will Trump say during the FIFA World Cup Draw?", the strike "Ronaldo" should resolve Yes because Trump said "Ronaldo" in public remarks at the World Cup Draw venue immediately before the formal program, and the market wording plus the governing mention-market terms did not clearly exclude those event-linked remarks.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex03a/complaint.md), [market-page note](../../../../../../adjudication/arb/examples/ex03a/market-page.txt), and [PRESMENTION/NEWMENTION terms](../../../../../../adjudication/arb/examples/ex03a/presmention-terms.txt).  The example [README](../../../../../../adjudication/arb/examples/ex03a/README.md) states that this open-record variant omits the reporter-exchange transcript and formal-draw archive note from `ex03`, leaving counsel to find the evidence for the mention and event boundary.

The market-page note identifies the public market title, the PRESMENTION/NEWMENTION family, the strike at issue, Kalshi's challenged No resolution, and the requested Yes resolution.  The mention terms require the specified word to be said by the specified entity during the specified time period, and they treat event-based time periods as valid market periods.  The terms count a distinct standalone word, plural, or possessive form, but exclude captions, visible text that the speaker does not read aloud, unofficial recordings, and behind-the-scenes material unless the material is officially broadcast or published as part of the covered period.

## Resolution Summary

All three `ex03a` runs resolved `not_demonstrated`, matching the batch [ledger](../ledger.csv).  The final votes were 3-0, 4-0, and 4-0 for `not_demonstrated`, with one or two council-member failures in each run.  The recurring reason was that the record placed the Ronaldo remarks in a GovInfo transcript titled as remarks prior to the draw, while timing evidence and the formal-program transcript supported a narrower draw period that began later and contained no Ronaldo match.

## Procedure

Each run used the same arbitration procedure.  The plaintiff and defendant filed openings, submitted source captures and reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  A council then voted under the preponderance standard, with later rounds used when the first vote did not produce the final resolution.

The summary uses these local artifacts.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex03a-20260629210937` | 2026-06-29T21:09:37Z | 2026-06-29T21:42:44Z | `not_demonstrated` | 3-0 for `not_demonstrated` after two 2-1 rounds | C3 and C5 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex03a-20260629214245` | 2026-06-29T21:42:45Z | 2026-06-29T22:06:10Z | `not_demonstrated` | 4-0 for `not_demonstrated` in round 1 | C4 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex03a-20260629220612` | 2026-06-29T22:06:12Z | 2026-06-29T22:37:45Z | `not_demonstrated` | 4-0 for `not_demonstrated` after 2-2 and 2-2 rounds | C1 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| [Market-page note](../../../../../../adjudication/arb/examples/ex03a/market-page.txt) and [PRESMENTION/NEWMENTION terms](../../../../../../adjudication/arb/examples/ex03a/presmention-terms.txt) | Case packet in all runs | The packet supplied the market title, strike, challenged resolution, requested resolution, and mention-market rules.  It did not include the transcript proving the Ronaldo remarks or the source record fixing the event boundary. |
| GovInfo transcript of remarks prior to the 2026 FIFA World Cup Draw | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-ddd2d95cd735.txt), defendant in [run 02](run-02/submitted-evidence/submitted-evidence-03-defendant-a1b1f6b1b7bd.txt), and plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-13b3de049039.txt) | The transcript recorded Trump saying Ronaldo and included metadata placing the remarks at 11:13 a.m. at the Kennedy Center.  The title described the exchange as prior to the draw, and the note stated that some portions could not be verified because audio was incomplete. |
| White House video page | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-9d3026011753.txt) and [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-db357d4e9407.txt) | The page supported publication context for a White House video page titled "President Trump Attends the FIFA World Cup Drawing."  The captures preserved page metadata and related video references but did not supply a full transcript or independent timing boundary. |
| U.S. Soccer final-draw timing page | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-03-defendant-c3e27265d710.txt) | The extract stated that the final draw was set for 12 p.m. ET, with pre-draw coverage beginning at 11:30 a.m. and the draw taking place between 12 and 2 p.m. ET.  The defense used it to argue that the 11:13 a.m. reporter exchange preceded the covered event period. |
| YouTube metadata for a Ronaldo clip | Plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-4e1045905547.txt) | The metadata described a video titled "Trump Talks Cristiano Ronaldo at FIFA Draw" and summarized the Ronaldo comments.  The capture did not include an independently extracted transcript, and the source was not an official White House or FIFA source. |
| FIFA official final-draw page | Defendant in [run 02](run-02/submitted-evidence/submitted-evidence-04-defendant-3973dc8f98c0.txt) | The capture stated that the draw commenced at 12:00 local time on December 5, 2025.  The defense paired that timing with the GovInfo 11:13 a.m. note to argue that the Ronaldo remarks occurred before the draw. |
| Kalshi page extract and Roll Call/Factba.se formal-program transcript | Plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-e99c8c3be4d0.txt) and defendant in [run 03](run-03/submitted-evidence/submitted-evidence-03-defendant-62032bb71fb1.txt) | The Kalshi extract supplied market-family source language, including use of video and transcripts from named news sources and the White House, while noting that the visible page rendered a related strike.  The Roll Call/Factba.se transcript captured the formal program and reported no exact Ronaldo match, which the defense used to distinguish the formal draw from the earlier reporter exchange. |

The plaintiff's argument accepted that the Ronaldo utterance had to count only if the pre-program remarks fell within the market period.  Plaintiff treated the Kennedy Center exchange as public, official, event-linked remarks at the venue and argued that the market wording did not limit the period to the formal staged program.  In run 03, plaintiff relied on the Kalshi page phrase "as part of FIFA World Cup Draw" to support a wider event-boundary reading.

The defendant conceded in substance that the GovInfo record showed the standalone word Ronaldo.  The defense focused on timing, source priority, and the separation between the reporter exchange and the formal draw.  Its strongest evidence was the GovInfo title and 11:13 a.m. note, the U.S. Soccer and FIFA timing sources, and, in run 03, the formal-program transcript with no Ronaldo match.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C1 treated the GovInfo title and 11:13 a.m. timing as stronger than the event-linked reading.  The explanation emphasized that the formal draw was scheduled for noon and that the market asked about words said during the draw. |
| run 01 | C2 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C2 cited the GovInfo title, timing, and the U.S. Soccer broadcast window.  The explanation found that the mention terms did not extend the market period to pre-program remarks. |
| run 01 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 01 | C4 | Seated.  Rounds 1 and 2: `demonstrated`; round 3: `not_demonstrated`. | C4 first voted for the plaintiff, although the round 2 rationale placed the remarks before the defined period while saying the strike should resolve Yes.  In the final round, C4 joined the other seated members and found that remarks prior to the formal draw did not satisfy the market wording. |
| run 01 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure did not prevent a final 3-0 vote among seated members. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 relied on the GovInfo title, the reporter-exchange timing, and the official draw start.  The explanation treated the remarks as before the countable event period. |
| run 02 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found that the record confirmed the Ronaldo remarks but placed them before the formal draw.  The timing failure defeated the proposition. |
| run 02 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 emphasized that the GovInfo transcript title and timing put the remarks 47 minutes before the noon draw start.  The explanation applied the payout criterion to the specified event period. |
| run 02 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  Four other members voted, so the failure did not prevent a resolution. |
| run 02 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found that the official transcript placed the comment before the draw and that the market terms did not include pre-event remarks.  The explanation rejected the plaintiff's Yes resolution on timing grounds. |
| run 03 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The remaining four members produced a final unanimous negative vote after two split rounds. |
| run 03 | C2 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C2 relied on the GovInfo title, the formal-program transcript, and the Kalshi source language concerning video or transcripts of the draw.  The explanation found that plaintiff did not show the pre-program exchange fell within the market period. |
| run 03 | C3 | Seated.  Rounds 1 and 2: `demonstrated`; round 3: `not_demonstrated`. | C3 first credited the plaintiff's broader event-linked reading.  In the final round, C3 changed to `not_demonstrated` because the admitted Ronaldo utterance appeared in a transcript labeled prior to the draw and no Ronaldo match appeared in the formal-program transcript. |
| run 03 | C4 | Seated.  Round 1: `not_demonstrated`; round 2: `demonstrated`; round 3: `not_demonstrated`. | C4 initially relied on the formal-program boundary, then credited the plaintiff's broader "as part of" reading in round 2.  The final vote returned to `not_demonstrated` based on the GovInfo title, Kalshi source wording, and the absence of a Ronaldo match in the formal draw transcript. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`; rounds 2 and 3: `not_demonstrated`. | C5 first accepted that official event-site remarks immediately before the program qualified.  Later votes treated the GovInfo title and formal-program transcript as stronger evidence that the pre-program exchange fell outside the covered event period. |

## Juror Explanation Summary

The jurors separated two questions: whether Trump said Ronaldo and whether that utterance occurred during the market's covered period.  Across the runs, they treated the first question as proved or conceded because the GovInfo transcript contained Ronaldo passages.  The negative outcomes turned on the second question, where most final votes treated the GovInfo title and timing notes as stronger than plaintiff's broader event-linked theory.

The dominant explanation read "during the FIFA World Cup Draw" to require the draw to have begun or to require source material of the draw program.  Jurors cited the 11:13 a.m. GovInfo timing note, the title describing the exchange as prior to the draw, the noon start time from U.S. Soccer and FIFA sources, and the formal-program transcript's lack of a Ronaldo match.  Those jurors concluded that a pre-program reporter exchange at the same venue did not satisfy the market period by a preponderance of the evidence.

The minority reasoning appeared in the early rounds of runs 01 and 03.  Those votes treated the remarks as public, official, and event-linked, and they relied on the absence of an express formal-program-only limitation in the market terms.  The final votes did not adopt that reading, and the council explanations ended on source-bound and timing-bound grounds rather than on any dispute over whether the word Ronaldo appeared in the GovInfo exchange.
