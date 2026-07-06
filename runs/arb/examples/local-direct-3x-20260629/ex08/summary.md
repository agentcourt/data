# ex08 Summary

## Proposition and Clarifying Rules

> By May 8, 2026, 11:59 PM ET, a message or note credibly reported to have been written by Jeffrey Epstein and intended as a suicide note, final message, or equivalent communication had been made publicly available.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex08/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex08/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex08/official-source-record.txt), [primary evidence map](../../../../../../adjudication/arb/examples/ex08/primary-evidence.txt), [secondary reporting summary](../../../../../../adjudication/arb/examples/ex08/secondary-reporting.txt), and [unresolved record gaps](../../../../../../adjudication/arb/examples/ex08/unresolved-record-gaps.txt).  The example [README](../../../../../../adjudication/arb/examples/ex08/README.md) identifies the disputed Polymarket condition behind the May 8 market.

The market rule required public availability by the listed date and credible reporting that the message or note was written by Epstein and intended as a suicide note, final message, or equivalent communication.  The rule did not require official release because the note could qualify if released officially, leaked, or otherwise disclosed.  The resolution source was a consensus of credible reporting, so the central dispute concerned the effect of repeated "purported" and "alleged" language, DOJ non-authentication statements, and chain-of-custody gaps.

## Resolution Summary

The three runs split on the authorship-and-intent element while agreeing that a document became public before the May 8 deadline.  Runs 01 and 03 resolved `demonstrated`, with final votes of 3-1 and 5-0, while run 02 resolved `not_demonstrated` by a 3-1 vote.  The `demonstrated` reasoning treated credible reporting of a court-unsealed purported Epstein suicide note as enough under the market rule, while the `not_demonstrated` reasoning treated the same caveats as preventing a preponderance finding that the note was credibly reported as Epstein's qualifying communication.

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
| [run 01](run-01/run.json) | `arb-ex08-20260630035158` | 2026-06-30T03:51:58Z | 2026-06-30T04:24:01Z | `demonstrated` | 3-1 for `demonstrated` | C2 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex08-20260630042402` | 2026-06-30T04:24:02Z | 2026-06-30T04:48:02Z | `not_demonstrated` | 3-1 for `not_demonstrated` | C5 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex08-20260630044803` | 2026-06-30T04:48:03Z | 2026-06-30T05:10:11Z | `demonstrated` | 5-0 for `demonstrated` | None |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source summaries | Case packet in all runs | The packet supplied the rule text, Polymarket API and page state, source maps, and unresolved gaps.  It identified Reuters, NPR, BBC, Guardian, and New York Times reporting leads, while warning that the packet did not contain the SDNY docket PDF, unsealing order PDF, or released note image. |
| SDNY unsealing order and court/image records | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-c2a2fd25e0b1.txt), plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-0ed0ef50e84e.txt) and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-3ed1398d0c91.txt), and plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-58561d19c453.txt) | The official order granted the New York Times request to unseal a note described as a suicide note purportedly authored by Jeffrey Epstein and recovered by Tartaglione.  It established public access but did not authenticate handwriting, decide chain of custody, or decide subjective intent. |
| Public reporting describing the note as purported, alleged, or released | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-96ddd443637f.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-8edf2fc4d79f.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-a1d333b3c55c.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-757899113d89.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-be7a5dd8c524.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-6b611c640731.txt), [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-d9d8f4d4776e.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-eb7c336c85a2.txt) | AP/PBS, Courthouse News, Fox, Guardian, Reuters, NPR, and BBC sources reported that a note was released or unsealed before May 8 and described it as a purported or alleged Epstein suicide note.  Several reports quoted final-message language, including a line about choosing one's time to say goodbye. |
| AP reporting on DOJ non-authentication and handwriting limits | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-e650545a6c2b.txt), [run 01](run-01/submitted-evidence/submitted-evidence-06-defendant-e64fc0af3e88.txt), [run 02](run-02/submitted-evidence/submitted-evidence-05-defendant-5aa56aab2530.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-05-defendant-4f315084b1b6.txt) | AP reported that DOJ said the note had not been authenticated and that DOJ was seeing it for the first time.  Related AP handwriting reporting suggested common authorship with another note but did not definitively identify Epstein as the writer. |

The plaintiff argued that the market required credible reporting, not official authentication or a court finding of authorship.  It relied on the SDNY order, public docket availability, repeated mainstream descriptions of the document as a purported Epstein suicide note, and quoted text that looked like a final message.  Plaintiff treated caveats about authenticity as compatible with the rule's "credibly reported" wording.

The defendant argued that the public-release element was proved but that the authorship and intent elements were not proved by a preponderance.  It emphasized that credible outlets repeatedly qualified the note as alleged or purported, that DOJ had not authenticated it and said it was seeing it for the first time, and that the order did not decide chain of custody or intent.  Defendant treated those caveats as the consensus of credible reporting rather than as minor uncertainty.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that multiple reputable outlets publicly reported the document before May 8 as a purported Epstein suicide note.  The explanation treated the note's language and reporting consensus as satisfying authorship and intent under the market standard. |
| run 01 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  Four other members voted, so the failure did not prevent a resolution. |
| run 01 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on multiple credible outlets characterizing the note as a suicide note or final message.  The explanation treated the credible-reporting standard as satisfied despite authentication caveats. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 found consistent credible reporting that a publicly available note was Epstein's purported suicide note before the deadline.  The explanation found that sufficient under the preponderance burden. |
| run 01 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 accepted public availability but rejected the authorship and intent showing.  The explanation relied on DOJ non-authentication, the court order's qualified wording, and expert caveats. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found that credible reporting consistently qualified authorship as alleged or purported and highlighted authentication gaps.  The explanation found no preponderance showing of Epstein authorship and suicide-note intent. |
| run 02 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 treated the admitted evidence as a consensus of uncertainty.  The explanation cited DOJ never having the note, no authentication, and DOJ seeing it for the first time. |
| run 02 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found that the document was public but that reporting showed unresolved authorship and intent.  The explanation emphasized that the note was unsigned, unauthenticated, and repeatedly qualified. |
| run 02 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the SDNY order and multiple reports established a public document described as Epstein's purported suicide note.  The explanation stated that the proposition required credible reporting, not official authentication. |
| run 02 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure did not prevent a 3-1 run-level resolution. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 relied on Reuters, NPR, BBC, and AP reporting before May 8.  The explanation found that credible reporting of a court-unsealed purported suicide note satisfied public availability, authorship, and intent. |
| run 03 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that the court-ordered unsealing and major-source reporting established the proposition.  The explanation treated the note as credibly reported to have been written by Epstein and intended as a suicide note by a preponderance. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 emphasized that the proposition required credible reporting rather than conclusive authentication.  The explanation relied on independent outlets, the official court order, and final-message language. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the SDNY order and multiple reputable reports credibly characterized the document as Epstein's suicide note.  The explanation treated that as meeting the market standard. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that multiple credible outlets reported the unsealed document before May 8 as a suicide note purportedly authored by Epstein.  The explanation stated that authentication was not required by the rule. |

## Juror Explanation Summary

The `demonstrated` votes read "credibly reported" as a lower threshold than authentication.  Those jurors treated repeated mainstream reporting, the SDNY unsealing order, and the note's quoted farewell language as enough to satisfy the market's authorship and intent language.  They acknowledged caveats but treated them as consistent with a purported-note market rule.

The `not_demonstrated` votes accepted the public-release evidence but required stronger proof that the note was credibly reported as Epstein's qualifying communication.  Those jurors emphasized that credible outlets used alleged and purported language, DOJ had not authenticated the note, DOJ said it was seeing the note for the first time, and the court order did not determine authorship, chain of custody, or intent.  In that reading, the record showed consensus reporting of uncertainty rather than consensus reporting that the qualifying condition occurred.

The process record contained one council-member failure in runs 01 and 02, and no failures in run 03.  The failures did not control the outcome because each run had at least four votes.  The different outcomes came from how jurors interpreted the market's credible-reporting standard, not from disagreement over whether a court-file document had become public before May 8.
