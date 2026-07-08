# ex08a Summary

## Proposition and Clarifying Rules

> By May 8, 2026, 11:59 PM ET, a message or note credibly reported to have been written by Jeffrey Epstein and intended as a suicide note, final message, or equivalent communication had been made publicly available.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex08a/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex08a/market-page.txt), and [situation statement](../../../../../../adjudication/arb/examples/ex08a/situation.md).  The example [README](../../../../../../adjudication/arb/examples/ex08a/README.md) identifies the disputed Polymarket condition behind the May 8 market.

The market rule required public availability by the listed date and credible reporting that the message or note was written by Epstein and intended as a suicide note, final message, or equivalent communication.  The rule did not require official release because the note could qualify if released officially, leaked, or otherwise disclosed.  The resolution source was a consensus of credible reporting, and the `ex08a` packet left counsel to develop the public-record evidence.

## Resolution Summary

All three `ex08a` runs resolved `demonstrated`, matching the batch [ledger](../ledger.csv).  The final votes were 3-1, 4-1, and 3-2 for `demonstrated`, so the result was stable at the run level but not unanimous.  The majority reasoning treated the SDNY unsealing order and pre-deadline reporting as enough under the credible-reporting standard, while dissenting votes emphasized DOJ non-authentication, AP/PBS uncertainty language, and Mark Epstein's forgery challenge.

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
| [run 01](run-01/run.json) | `arb-ex08a-20260630051012` | 2026-06-30T05:10:12Z | 2026-06-30T05:34:11Z | `demonstrated` | 3-1 for `demonstrated` | C4 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex08a-20260630053412` | 2026-06-30T05:34:12Z | 2026-06-30T05:55:14Z | `demonstrated` | 4-1 for `demonstrated` | None |
| [run 03](run-03/run.json) | `arb-ex08a-20260630060031` | 2026-06-30T06:00:31Z | 2026-06-30T06:27:15Z | `demonstrated` | 3-2 for `demonstrated` | None |

The ledger reports all three runs as `ok`, with cleanup completed.  Runs 01 and 03 have return code `rc=0`; run 02 has return code `rc=1` while still reporting `ok` status and cleanup completed.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| [Market page record](../../../../../../adjudication/arb/examples/ex08a/market-page.txt) | Case packet in all runs | The packet supplied the market rule, the May 8 grouped-market framing, Polymarket API and page state, and the note that platform context was market metadata rather than independent proof.  It did not include a court-source packet or source map beyond the market record. |
| SDNY unsealing order | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-1de721f5d505.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-3d766bfc8f56.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-87eda7a5f14d.txt) | The order granted public access to material described as a suicide note purportedly authored by Epstein, recovered by Tartaglione, and submitted in the Tartaglione case.  It established public access before the May 8 deadline but did not authenticate handwriting, decide chain of custody, or decide subjective intent. |
| Pre-deadline reporting describing the note and its text | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-78537bb92f69.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-ebfed5a9aeb0.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-92ac0be2cdf0.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-4bbd87bf5756.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-a2ccbb719d1f.txt) | Guardian, AP, Fox, People, and PBS/AP reporting described the unsealed document, its timing, its purported Epstein authorship, and its farewell-style text.  These sources also preserved caveats, including uncertainty about authorship and the absence of a definitive authentication finding. |
| Authenticity and provenance challenges | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-b3d357bbd988.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-defendant-cfa1e2957855.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-defendant-07b7be066555.txt) | The defense evidence emphasized DOJ non-authentication or non-possession, the absence of the note from official death investigations, and Mark Epstein's claim that the note was a forgery.  The Business Insider record also contained counterweights, including the reported 2021 sealing date and prior authentication attempts before the 2026 public email releases. |

The plaintiff argued that the market required credible reporting rather than definitive proof.  It relied on the SDNY order, public release before May 8, contemporaneous reporting, and quoted note text that suggested a farewell or final-message purpose.  Plaintiff treated authenticity caveats as weight issues that did not defeat the market's reporting standard.

The defendant argued that the public-release element was proved but authorship remained too uncertain.  It relied on AP/PBS language that it was unclear who wrote the note, DOJ non-authentication or absence from prior official materials, and Mark Epstein's forgery challenge.  Defendant treated those caveats as undermining the credible-reporting element rather than as harmless qualifications.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that the SDNY order and Guardian/AP reporting established a publicly available document described as an Epstein suicide note before May 8.  The explanation treated authenticity doubts as insufficient to defeat the preponderance standard. |
| run 01 | C2 | Seated.  Round 1: `demonstrated`. | C2 relied on the court order and credible pre-deadline reports identifying the note as a purported Epstein suicide note.  The explanation found the credible-reporting standard satisfied despite unresolved authentication. |
| run 01 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found no credible reporting that Epstein wrote the note or intended it as a suicide note.  The explanation cited DOJ non-authentication, Guardian non-verification, and Mark Epstein's forgery claim. |
| run 01 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure did not prevent a 3-1 run-level resolution. |
| run 01 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that a federal court made the document public and credible outlets reported it as an alleged or attributed Epstein suicide note before the deadline.  The explanation stated that conclusive authentication was not required. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found public availability but gave decisive weight to uncertainty over authorship and intent.  The explanation cited AP/PBS language that it was unclear who wrote the note and its absence from official investigations. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that a May 6 court order granted public access to a document described as a purported Epstein suicide note.  The explanation treated contemporaneous reporting and note content as enough under the preponderance standard. |
| run 02 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on the court order, reported public access, reproduced text, and acknowledged limits.  The explanation treated those materials as satisfying the market's reporting standard. |
| run 02 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the court order and multiple credible outlets supported the proposition.  The explanation stated that the reporting credibly described Epstein authorship and suicide or farewell intent despite uncertainty. |
| run 02 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that the released note and credible pre-deadline reports met the rule.  The explanation emphasized the court release and reproduced text. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that the note was officially unsealed and credibly reported by AP/PBS as purportedly written by Epstein and intended as a suicide or final message.  The explanation treated the market rule as requiring credible reporting rather than definitive proof. |
| run 03 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that the record established public release and credible reporting before May 8.  The explanation treated authenticity caveats as insufficient to defeat the proposition. |
| run 03 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 accepted public release but rejected authorship proof.  The explanation cited AP/PBS's statement that the writer was unclear and Business Insider's Mark Epstein forgery challenge. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`. | C4 found the note publicly released and credibly reported as Epstein's suicide or final message.  The explanation also noted that the 2021 sealing date and prior authentication attempts weakened the later forgery challenge. |
| run 03 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found public availability and suicide-note intent but not credible reporting of Epstein authorship.  The explanation relied on AP/PBS uncertainty language and Mark Epstein's challenge. |

## Juror Explanation Summary

The `demonstrated` votes read the market rule as a credible-reporting standard.  Those jurors treated the court's unsealing order, contemporaneous reporting, and note text as enough to show that a qualifying note had been made public before May 8.  They did not require official handwriting authentication or a court finding that Epstein wrote the note.

The `not_demonstrated` votes focused on authorship.  Those jurors accepted public release and often accepted suicide-note intent, but they found the attribution record too weak because AP/PBS stated that authorship was unclear and because Mark Epstein challenged the note as a forgery.  They treated the caveats as defeating the preponderance showing for the "written by Jeffrey Epstein" element.

The run-level results were consistent despite member-level disagreement.  Each run resolved `demonstrated`, but every run included at least one `not_demonstrated` vote.  The key interpretive issue was the same as in `ex08`: whether credible reporting of a purported Epstein suicide note satisfies the market, or whether the caveats prevent a preponderance finding on authorship.
