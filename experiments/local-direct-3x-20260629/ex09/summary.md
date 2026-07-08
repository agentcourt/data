# ex09 Summary

## Proposition and Clarifying Rules

> Between market creation on April 20, 2026, and December 31, 2026, 11:59 PM ET, Clavicular made a credible announcement that he and a partner were expecting a baby through pregnancy.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex09/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex09/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex09/official-source-record.txt), [primary evidence summary](../../../../../../adjudication/arb/examples/ex09/primary-evidence.txt), [secondary reporting summary](../../../../../../adjudication/arb/examples/ex09/secondary-reporting.txt), and [unresolved record gaps](../../../../../../adjudication/arb/examples/ex09/unresolved-record-gaps.txt).  The example [README](../../../../../../adjudication/arb/examples/ex09/README.md) identifies the disputed Polymarket condition without asking whether Polymarket or UMA resolved it correctly.

The market rule required a credible announcement by Clavicular that he and a partner were expecting a baby through pregnancy during the market window.  It excluded non-credible announcements, including jokes, and allowed statements from Clavicular or his representatives as the primary source path.  A definitive consensus of credible media reporting could be considered, but the packet preserved no original livestream clip, VOD, transcript, representative statement, or complete platform clarification.

## Resolution Summary

All three `ex09` runs resolved `not_demonstrated`, matching the batch [ledger](../ledger.csv).  The final votes were 3-1, 3-0, and 5-0 for `not_demonstrated`, with only one juror across all runs voting `demonstrated`.  The recurring reason was that the record contained a final Yes market state and secondary reporting about rumors or ambiguous livestream remarks, but no preserved primary statement showing a credible Clavicular announcement of an existing partner pregnancy.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, and each run reached a resolution in the first voting round.

The summary uses these local artifacts.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex09-20260630062717` | 2026-06-30T06:27:17Z | 2026-06-30T06:51:24Z | `not_demonstrated` | 3-1 for `not_demonstrated` | C3 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex09-20260630065125` | 2026-06-30T06:51:25Z | 2026-06-30T07:17:01Z | `not_demonstrated` | 3-0 for `not_demonstrated` | C3 and C5 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex09-20260630071703` | 2026-06-30T07:17:03Z | 2026-06-30T07:39:03Z | `not_demonstrated` | 5-0 for `not_demonstrated` | None |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source records | Case packet in all runs | The packet supplied the rule text, Polymarket page and Gamma API state, platform final Yes state, secondary-source leads, and known gaps.  It made clear that the platform state alone did not prove the factual proposition. |
| Official Polymarket or Gamma records | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-b08e7634a0e9.json), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-e0434e9fb3cb.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-f0160b3ff4ad.txt) | The records showed the market wording, final Yes state, price and volume context, proposal and dispute history, and API fields.  Jurors treated these records as evidence of the market process, not as direct proof that a credible announcement occurred. |
| Forbes, Domahhhh, and KickChamp materials | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-2c388df14c13.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-427353899105.txt), and [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-cdef3f8da65c.txt) | Forbes preserved an incomplete fragment saying the dispute involved a streamer who told his audience he had gotten a girl pregnant, while also reporting that the market description and platform clarification said No.  KickChamp preserved the viral girlfriend-pregnancy claim, and Domahhhh described the statement as claimed or joked, vague, and disputed. |
| Times of India, Hindustan Times, and Express Tribune reporting | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-c3000953fc81.txt) and [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-5570c630032e.txt); defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-519a3b6f458c.txt) and [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-115037a41d09.txt) | These sources treated the pregnancy claim as unconfirmed or as a rumor tied to contest, stunt, or future-fatherhood remarks.  Times of India reported no proof, no confirmed girlfriend, no medical update, no confirming video, and no confirming statement from Clavicular. |

The plaintiff argued that Forbes, the viral KickChamp post, and the final Yes platform state showed that an announcement or claim occurred and that the market had credited it.  In run 02, plaintiff also relied on the Domahhhh thread because it acknowledged a source statement, even while criticizing its credibility.  The plaintiff's record did not include the original video, transcript, representative statement, or a complete media consensus confirming an existing pregnancy.

The defendant argued that the rule required a credible announcement by Clavicular, not a viral claim, price action, or oracle result.  It emphasized the absence of primary source material and the distinction between future-oriented remarks about wanting children, a pregnancy contest proposal, and an announcement that a partner was already pregnant.  It also relied on Times of India, Hindustan Times, and Express Tribune reporting that framed the claim as unconfirmed, out of context, or stunt-like.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found that the preserved remarks were future-oriented or contest-related shock content.  The explanation relied on Times of India reporting that no video or Clavicular statement confirmed a pregnancy. |
| run 01 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found no preserved credible announcement of an existing partner pregnancy.  The explanation treated the Forbes fragment as incomplete and outweighed by reporting of no confirmed pregnancy statement. |
| run 01 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a run-level resolution. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 relied on the Forbes fragment saying Clavicular told his audience he had gotten a girl pregnant and on the market's final Yes result.  The explanation treated adverse reporting as not disproving that an announcement was made and considered credible. |
| run 01 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found no direct, verifiable statement from Clavicular confirming a partner pregnancy.  The explanation emphasized that credible sources described contest or aspirational remarks and noted the lack of confirmation. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found no primary source and treated the reported statement as claimed, joked, or vague.  The explanation stated that the market's Yes resolution could not substitute for the rule-required announcement. |
| run 02 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found the record ambiguous and unsupported by primary evidence.  The explanation stated that the admitted record did not prove credibility. |
| run 02 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 02 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 found no VOD, transcript, or representative statement.  The explanation relied on the Domahhhh thread's claimed, joked, and vague framing, plus the absence of a credible source chain. |
| run 02 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure did not prevent a unanimous seated vote. |
| run 03 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found conflicting secondary reports and no primary statement or definitive media consensus.  The explanation concluded that the proposition was not more likely than not. |
| run 03 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found no preserved primary announcement of an existing partner pregnancy.  The explanation distinguished future-oriented contest language from a confirmed pregnancy announcement and rejected the final Yes resolution as proof. |
| run 03 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found no primary statement confirming the announcement.  The explanation treated conflicting secondary reports as insufficient. |
| run 03 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 relied on the absence of a Clavicular statement and on reports framing the remarks as stunt-like.  The explanation stated that Times of India reported no confirming statement. |
| run 03 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found that the market resolved Yes but the record lacked primary proof.  The explanation cited conflicting secondary reporting and evidence gaps about the announcement's nature. |

## Juror Explanation Summary

The dominant reasoning separated platform resolution from the factual condition.  Jurors treated Polymarket's final Yes state as part of the dispute record, but not as proof that Clavicular made a credible announcement.  They required the record to show the announcement text or a definitive credible-media consensus, and they found neither.

The `not_demonstrated` votes emphasized the same missing link: no original livestream clip, VOD, transcript, or representative statement.  They read the preserved quotations as future-oriented statements about wanting children or a pregnancy contest, not as a claim that a partner was already pregnant.  They gave weight to reporting that described the pregnancy story as rumor, confusion, or content taken out of context.

The lone `demonstrated` vote credited the Forbes fragment and platform outcome.  That juror treated the fragment about Clavicular telling his audience he had gotten a girl pregnant as enough to establish an announcement, with adverse reporting failing to disprove it.  The other jurors found the fragment incomplete, uncontextualized, and insufficient under the rule's credibility requirement.
