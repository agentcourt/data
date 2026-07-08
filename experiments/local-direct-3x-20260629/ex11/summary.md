# ex11 Summary

## Proposition and Clarifying Rules

> By May 24, 2026, 11:59 PM ET, Iran initiated a major non-weather closure of its airspace within the meaning of the market rule.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex11/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex11/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex11/official-source-record.txt), [primary evidence statement](../../../../../../adjudication/arb/examples/ex11/primary-evidence.txt), [secondary reporting statement](../../../../../../adjudication/arb/examples/ex11/secondary-reporting.txt), [unresolved record gaps](../../../../../../adjudication/arb/examples/ex11/unresolved-record-gaps.txt), and [situation statement](../../../../../../adjudication/arb/examples/ex11/situation.md).  The example [README](../../../../../../adjudication/arb/examples/ex11/README.md) identifies this as an open-record arbitration of the factual condition behind the May 24 market, not an adjudication of Polymarket or UMA.

The preserved market rule required an Iran-initiated closure by May 24, 2026 at 11:59 PM ET, with weather-only closures excluded.  A major closure meant a broad closure, cancellation, or suspension of commercial flights transiting, arriving in, and departing from Iranian airspace or a major Iranian airspace region.  The rule also provided an airport-specific path: any non-weather complete suspension of commercial arrivals and departures affecting at least two of IKA, THR, MHD, SYZ, or IFN would qualify.  Limited cancellations, delays, partial closures, foreign restrictions, airline restrictions, and weather closures did not qualify; limited exceptions to a broad closure did not defeat qualification.

## Resolution Summary

The three `ex11` runs did not produce a uniform run-level result.  Runs 1 and 2 resolved `demonstrated`, while run 3 closed as `no_majority`, matching the batch [ledger](../ledger.csv).  The submitted votes across the three runs were 9-1 for `demonstrated`, but run 3 had only two voting members and therefore did not reach a run-level majority.

The recurring merits dispute concerned NOTAM OIIX A1010/26.  Jurors voting `demonstrated` treated the record as proving a timely Iranian aviation-authority restriction over the western Tehran FIR, broad enough to satisfy the major-region path despite daylight and CAA-approval exceptions.  The only `not_demonstrated` vote treated the raw NOTAM as an airport-operations restriction that did not prove a broad airspace closure or the separate two-airport complete-suspension path.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and technical reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, and each run completed one voting round.

These local artifacts control the draft.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.  External URLs are described only as record sources, without independent verification.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex11-20260630123738` | 2026-06-30T12:37:38Z | 2026-06-30T12:57:51Z | `demonstrated` | 3-1 for `demonstrated` | C3 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex11-20260630125752` | 2026-06-30T12:57:52Z | 2026-06-30T13:19:15Z | `demonstrated` | 4-0 for `demonstrated` | C4 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex11-20260630131916` | 2026-06-30T13:19:16Z | 2026-06-30T13:54:26Z | `no_majority` | 2-0 for `demonstrated`; no majority reached | C2 failed with `deadline_expired`; C4 and C5 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source records | Case packet in all runs | The packet supplied the Polymarket market identifiers, Gamma API state, rule text, source hierarchy, and unresolved gaps.  It stated that official Iranian aviation authority information and a consensus of credible reporting were primary source paths, while warning that the initial packet lacked merits NOTAMs, official Iranian aviation records, airport operations records, and contemporaneous reporting about the May 24 cutoff. |
| Gulf News and Indian Express reporting | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-fcd4dae9c0c1.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-cc708d7ea2db.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-6fb47d9ec1a6.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-1402318e927f.txt) | Gulf News reported an Iran Civil Aviation Organization announcement suspending civil flight permits at airports in the western sector of the Tehran FIR.  Indian Express identified NOTAM OIIX A1010/26, attributed it to the Iranian Civil Aviation Authority, described a May 22 to May 25 western Tehran FIR restriction, and reported daylight-only operations with fresh per-flight approval at listed airports. |
| Abdi Media, Defcon Alerts, Kenya Times, and Siasat reporting | Plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-1cffd8dd281e.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-63e27faf0dd2.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-3c8bc4d23224.txt), [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-d8bee80dc0a7.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-a4f6006338ea.txt) | These reports corroborated A1010/26, western Tehran FIR scope, May 22 to May 25 timing, daylight-only exceptions, suspended prior permissions, and new Iranian approval requirements for IFR passenger flights.  Kenya Times supplied the May 22 20:46Z to May 25 08:30Z period, which covered the May 24 11:59 PM ET cutoff if Eastern Time meant UTC-4. |
| Notamify raw NOTAM capture | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-03-defendant-2e5195da64cb.txt) and [run 02](run-02/submitted-evidence/submitted-evidence-04-defendant-84fb9b1410dc.txt) | The Notamify page displayed raw text for A1010/26, classed as `AD Airport Operations`, with all airports in the west part of Tehran FIR closed except listed airports operating from sunrise to sunset.  It also stated that previous permissions were suspended for all operators and that new CAA permission was required for civil IFR passenger flights at the exception airports.  Plaintiffs used this as source-chain support; defendants used it to argue that the notice was narrower than a broad airspace closure. |
| Official Iran AIS current-site check | Defendant in [run 03](run-03/submitted-evidence/submitted-evidence-05-defendant-2cc823ee050e.txt) | The exhibit showed accessible official Iran AIS/AIM pages, including a current valid-NOTAM page and safety warnings, but did not locate A1010/26 through the visible public pages or available searches.  The record described this as a custody limitation rather than proof that an expired May 2026 NOTAM did not exist. |

The plaintiff argued that A1010/26 satisfied the major-region path.  It treated the western Tehran FIR as a major Iranian airspace region and argued that airport closures, suspended permissions, daylight-only exception airports, and fresh CAA approval requirements amounted to a broad suspension of commercial flight operations.  The plaintiff did not depend on the separate two-airport complete-suspension path, because some reports described several listed airports as operating under daylight and permission limits.

The defendant argued that the evidence proved a serious restriction but not the rule's major-closure element.  It emphasized that the raw NOTAM used an airport-operations classification and closed airports in the west part of the Tehran FIR with exceptions, rather than expressly closing commercial transit, arrivals, and departures across a major airspace region.  It also emphasized the missing official Iranian archive record, the missing referenced NOTAM A0796/26, inconsistent exception-airport lists, and lack of airport-by-airport evidence for IKA, THR, MHD, SYZ, or IFN.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that the NOTAM and corroborating reports showed Iran suspended commercial flight permits in the western Tehran FIR by the deadline.  The explanation treated limited CAA-approved exceptions as consistent with the rule. |
| run 01 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 relied on the raw NOTAM's airport-operations classification and exception list.  The explanation found no proof of a broad commercial airspace-region closure and no airport-by-airport proof of complete suspension at two listed airports. |
| run 01 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a run-level resolution. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that A1010/26 closed all airports in the western Tehran FIR before the deadline.  The explanation treated the region as significant and the exceptions as permitted by the market rule. |
| run 01 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that the record showed a May 22 Iran-issued NOTAM suspending civil flight permits in the western Tehran FIR.  The explanation treated that as a broad non-weather regional closure. |
| run 02 | C1 | Seated.  Round 1: `demonstrated`. | C1 found multiple sources converging on the NOTAM identifier, issuer, timing, scope, and security cause.  The explanation treated the west part of the Tehran FIR as a major region and the restriction as lasting past the cutoff. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that NOTAM A1010/26 showed a major non-weather closure of the western Tehran FIR.  The explanation relied on suspended civil flight permissions and restricted operations through the relevant date. |
| run 02 | C3 | Seated.  Round 1: `demonstrated`. | C3 treated the raw NOTAM as closing west-Tehran-FIR airports, suspending prior permissions, and requiring new CAA approval through the deadline.  The explanation found that limited sunrise-to-sunset exceptions did not defeat the major-region path. |
| run 02 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C5 | Seated.  Round 1: `demonstrated`. | C5 relied on the raw NOTAM's closure of west-Tehran-FIR airports and universal permission suspension.  The explanation found the rule's limited-exception clause decisive. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 relied on four consistent secondary reports identifying A1010/26, Iranian aviation authority attribution, May 22 to May 25 timing, and western Tehran FIR scope.  The explanation treated the evidence as enough under the preponderance standard. |
| run 03 | C2 | Failed with `deadline_expired`. | C2 submitted no vote.  The failure contributed to the no-majority result. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that consistent secondary reports proved an Iran-initiated major non-weather closure of the western Tehran FIR with limited exceptions.  The explanation treated the deadline element as satisfied. |
| run 03 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure contributed to the no-majority result. |
| run 03 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure left only two submitted votes, both for `demonstrated`, and the run closed as `no_majority`. |

## Juror Explanation Summary

Most voting jurors accepted the major-region theory.  They credited the convergence among secondary reports and, in runs 1 and 2, the Notamify raw-text capture showing A1010/26, May 22 to May 25 applicability, closure of airports in the west part of the Tehran FIR, suspended prior permissions, and new CAA permission requirements.  They treated the western Tehran FIR as a major Iranian airspace region and viewed daylight or CAA-approved exceptions as limited exceptions allowed by the rule.

The lone `not_demonstrated` vote focused on precision in the rule's breadth requirement.  That juror treated the raw NOTAM as the best wording in the record and read its `AD Airport Operations` classification, exception-airport list, and airport-focused text as insufficient to prove a broad airspace-region closure.  The same explanation found the two-airport complete-suspension path unproven because the record lacked airport-by-airport proof for the listed airports.

The no-majority result in run 3 came from process failure, not a merits split among voting members.  C1 and C3 both voted `demonstrated`, but C2, C4, and C5 failed before voting.  The run therefore closed without a majority despite a unanimous vote among the two members who submitted rationales.
