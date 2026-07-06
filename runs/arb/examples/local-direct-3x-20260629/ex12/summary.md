# ex12 Summary

## Proposition and Clarifying Rules

> By May 24, 2026, 11:59 PM ET, Iran initiated a major non-weather closure of its airspace within the meaning of the market rule.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex12/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex12/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex12/official-source-record.txt), [primary evidence statement](../../../../../../adjudication/arb/examples/ex12/primary-evidence.txt), [secondary reporting statement](../../../../../../adjudication/arb/examples/ex12/secondary-reporting.txt), [unresolved record gaps](../../../../../../adjudication/arb/examples/ex12/unresolved-record-gaps.txt), and [situation statement](../../../../../../adjudication/arb/examples/ex12/situation.md).  The example [README](../../../../../../adjudication/arb/examples/ex12/README.md) identifies this as an open-record arbitration of the factual condition behind the May 24 market.

The preserved market rule required an Iran-initiated closure by May 24, 2026 at 11:59 PM ET, with weather-only closures excluded.  A major closure meant a broad closure, cancellation, or suspension of commercial flights transiting, arriving in, and departing from Iranian airspace or a major Iranian airspace region.  The rule also provided an airport-specific path: any non-weather complete suspension of commercial arrivals and departures affecting at least two of IKA, THR, MHD, SYZ, or IFN would qualify.  Limited cancellations, delays, partial closures, foreign restrictions, airline restrictions, and weather closures did not qualify; limited exceptions to a broad closure did not defeat qualification.

## Resolution Summary

All three `ex12` runs resolved `demonstrated`, matching the batch [ledger](../ledger.csv).  The final submitted votes were 3-0, 4-0, and 3-0 for `demonstrated`; four council members failed across the three runs.  The recurring reason was that secondary reporting and Notamify mirror evidence showed a western Tehran FIR restriction in force through the deadline, attributed to Iranian civil aviation authority action, non-weather security conditions, and limited permission-based exceptions that jurors found compatible with the rule.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and technical reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, and each run reached a resolution in the first voting round.

These local artifacts control the draft.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.  External URLs are described only as record sources, without independent verification.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex12-20260630145920` | 2026-06-30T14:59:20Z | 2026-06-30T15:21:36Z | `demonstrated` | 3-0 for `demonstrated` | C2 and C4 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex12-20260630152138` | 2026-06-30T15:21:38Z | 2026-06-30T15:48:09Z | `demonstrated` | 4-0 for `demonstrated` | C1 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex12-20260630154810` | 2026-06-30T15:48:10Z | 2026-06-30T16:11:47Z | `demonstrated` | 3-0 for `demonstrated` | C2 and C4 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source records | Case packet in all runs | The packet supplied the market identifiers, rule text, source hierarchy, and unresolved gaps.  It stated that no merits official-source packet or secondary-reporting packet existed at run start, and it directed counsel to search for Iranian aviation authority records, NOTAM material, airport records, credible reporting, and cautious flight-tracking evidence. |
| Indian Express, Gulf News, Kenya Times, Siasat, and Abdi Media reporting | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-09982b77bf9e.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-9f6b49a1ebfa.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-47df93957e6e.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-98d63ac56d6b.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-5ea126ee410e.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-ecc6dea2bd69.txt), [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-0d618bc7936d.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-3db793b61e1b.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-b01b937ea525.txt) | The reports described NOTAM OIIX A1010/26, a May 22 to May 25 western Tehran FIR restriction, suspended civil flight permits or prior permissions, daylight-only exceptions, and fresh Iranian aviation approval requirements.  They placed the restriction in a military or security context rather than a weather context. |
| Notamify A1010/26 raw-text mirror | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-342c71021810.txt) | The mirrored A1010/26 text closed all airports in the west part of Tehran FIR except eight listed airports, limited those exceptions to sunrise-to-sunset operation, suspended previous permissions, and required new CAA permission for civil IFR passenger flights.  Defendant used the QFALC and aerodrome/airport wording to argue narrower scope, while jurors treated the same text as confirming a formal regional restriction. |
| Notamify A1015/26 replacement-text mirror | Defendant in [run 03](run-03/submitted-evidence/submitted-evidence-04-defendant-f736eb543e7c.txt) | The mirrored A1015/26 text said it replaced A1010/26 and was effective from May 23 18:21 UTC to May 25 08:30 UTC.  It barred aircraft from entering Tehran FIR without permission, closed western-Tehran-FIR airports except listed exceptions, suspended prior permissions in western Tehran FIR, required new permission for IFR passenger flights, and stated that only IFR passenger flights in the western FIR were allowed. |
| Iran International denial reports | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-4c36e105a2b8.txt) and [run 02](run-02/submitted-evidence/submitted-evidence-04-defendant-06f4336a07ad.txt) | The reports said Iran's Civil Aviation Organization denied a new notice imposing countrywide airspace restrictions and said flights were operating according to plan.  They also acknowledged an earlier western Tehran FIR airport-activity suspension with limited sunrise-to-sunset exemptions, so the parties used them to distinguish a nationwide claim from the regional theory. |

The plaintiff argued that the reporting and NOTAM mirrors proved a major-region closure.  The argument emphasized May 22 to May 25 timing, the May 24 11:59 PM ET cutoff, Iranian aviation authority attribution, suspended permissions, fresh CAA approval, and the rule's allowance for limited exceptions.  The plaintiff did not rely on a clean two-airport complete-suspension theory because the evidence described exception airports and permission-controlled operations.

The defendant argued that the evidence proved a serious regional airport and permission restriction, not the full rule-defined closure.  It emphasized missing official Iranian custody, secondary-source dependence, airport and aerodrome wording, exception lists, daylight operations, permission-based IFR passenger flights, and the Iran International denial of a new countrywide notice.  Run 3's A1015/26 evidence narrowed the dispute because it confirmed an operative replacement notice while also identifying exceptions and permission conditions.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 relied on the A1010/26 mirror and found that Iran closed western Tehran FIR airports except limited daylight operations before the deadline.  The explanation treated the restriction as satisfying the major-closure prong. |
| run 01 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure reduced the run to three voting members. |
| run 01 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that Iran's Civil Aviation Authority issued A1010/26, suspending civil flight permissions in western Tehran FIR.  The explanation treated the record as proving timing, attribution, non-weather cause, and operational effect. |
| run 01 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 01 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that A1010/26 suspended civil flight permits in the western Tehran FIR before the deadline.  The explanation treated limited exceptions as allowed by the rule. |
| run 02 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that A1010/26 closed western-Tehran-FIR airports from May 22 to May 25, with fresh CAA approval and limited daylight exceptions.  The explanation treated the Iran International report as denying only a newer nationwide notice. |
| run 02 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that the evidence showed an Iranian Civil Aviation Authority restriction affecting the western Tehran FIR by the deadline.  The explanation noted that the adverse report confirmed a western-FIR suspension. |
| run 02 | C4 | Seated.  Round 1: `demonstrated`. | C4 relied on multiple consistent secondary reports of an Iranian civil-aviation western Tehran FIR closure.  The explanation treated western FIR as a major airspace region and the restrictions as security-driven. |
| run 02 | C5 | Seated.  Round 1: `demonstrated`. | C5 relied on corroborating A1010/26 reports and the defense's admission that a western-FIR suspension existed.  The explanation treated limited exceptions as nondisqualifying under the rule. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 found a broad restriction on flights in a major Iranian airspace region.  The explanation treated the admitted evidence as satisfying the market rule's major-closure criteria. |
| run 03 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure reduced the run to three voting members. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that an Iranian-issued NOTAM closed western Tehran FIR through May 25 08:30Z.  The explanation treated limited exceptions as compatible with a major closure under the rule. |
| run 03 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`. | C5 relied on A1015/26, finding that it suspended prior permissions, required new permission for IFR passenger flights, and closed western-Tehran-FIR airports except limited exceptions.  The explanation found no weather-causation evidence. |

## Juror Explanation Summary

All submitted votes accepted the major-region theory.  Jurors treated the western Tehran FIR restriction as broad enough under the rule and found that the May 22 or May 23 to May 25 timing covered the deadline.  They credited Iranian CAA attribution, fresh-permission requirements, and non-weather security context.

The jurors acknowledged the central weakness without treating it as dispositive.  No run captured a direct official Iranian archive page for the relevant NOTAM, and much of the record consisted of secondary reporting.  The Notamify mirror evidence in runs 1 and 3 supplied raw or near-raw NOTAM wording that jurors considered sufficient when read with the reporting record.

The defense arguments affected the framing but not the final votes.  Jurors did not rest on the two-airport complete-suspension path.  They instead treated the exception airports, daylight operations, and new-permission regime as limited exceptions to a broader regional closure rather than as ordinary commercial availability.
