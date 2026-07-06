# ex11a Summary

## Proposition and Clarifying Rules

> By May 24, 2026, 11:59 PM ET, Iran initiated a major non-weather closure of its airspace within the meaning of the market rule.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex11a/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex11a/market-page.txt), [situation statement](../../../../../../adjudication/arb/examples/ex11a/situation.md), and example [README](../../../../../../adjudication/arb/examples/ex11a/README.md).  The source directory has no separate official-source, primary-evidence, secondary-reporting, or unresolved-gaps files; the market-page record supplies the rule text, source hierarchy, market identifiers, and notes for arbitration.

The preserved market rule required an Iran-initiated closure by May 24, 2026 at 11:59 PM ET, with weather-only closures excluded.  A major closure meant a broad closure, cancellation, or suspension of commercial flights transiting, arriving in, and departing from Iranian airspace or a major Iranian airspace region.  The rule also provided an airport-specific path: any non-weather complete suspension of commercial arrivals and departures affecting at least two of IKA, THR, MHD, SYZ, or IFN would qualify.  Limited cancellations, delays, partial closures, foreign restrictions, airline restrictions, and weather closures did not qualify; limited exceptions to a broad closure did not defeat qualification.

## Resolution Summary

All three `ex11a` runs resolved `demonstrated`, matching the batch [ledger](../ledger.csv).  Each run had one failed council member and four submitted votes; all twelve submitted votes were for `demonstrated`.  The recurring reason was that the admitted NOTAM and reporting record showed an Iran CAA-linked western Tehran FIR restriction in force through the deadline, with limited daylight and fresh-approval exceptions that jurors treated as permitted exceptions to a broad regional closure.

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
| [run 01](run-01/run.json) | `arb-ex11a-20260630135427` | 2026-06-30T13:54:27Z | 2026-06-30T14:16:37Z | `demonstrated` | 4-0 for `demonstrated` | C2 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex11a-20260630141638` | 2026-06-30T14:16:38Z | 2026-06-30T14:36:11Z | `demonstrated` | 4-0 for `demonstrated` | C3 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex11a-20260630143613` | 2026-06-30T14:36:13Z | 2026-06-30T14:59:19Z | `demonstrated` | 4-0 for `demonstrated` | C2 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market record | Case packet in all runs | The packet supplied the market URLs, Gamma API identifiers, rule text, source hierarchy, and notes for arbitration.  It set the rule's two routes to a major closure and made official Iranian aviation information or credible reporting the primary source paths. |
| Indian Express, RFE/RL, Abdi Media, and Siasat reporting | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-ac2309bdc9f7.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-57917ec86ba3.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-6877e32e36e2.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-25136676d648.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-4a64799d1143.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-05dfc9131a91.txt) | The reports described NOTAM OIIX A1010/26 or related western Tehran FIR restrictions from May 22 to May 25, suspended civil flight permits, daylight-only exception operations, and fresh Iran CAA or Civil Aviation Organization approval requirements.  They also placed the restrictions in a security and military-risk context rather than a weather context. |
| Notamify A1010/26 and A1015/26 raw-text mirrors | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-241b442bed15.txt) and [run 02](run-02/submitted-evidence/submitted-evidence-03-defendant-5e5109b5ca63.txt); plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-263eb57c30ed.txt) | The mirrored raw text showed A1010/26 and replacement A1015/26 for OIIX/Tehran FIR, with applicability through May 25 08:30 UTC.  The text closed all airports in the west part of Tehran FIR except listed airports, limited exceptions to sunrise-to-sunset operations, suspended previous permissions, and required Iran CAA permission for civil IFR passenger flights.  Defendants used the `AD Airport Operations` classification to argue narrower scope; plaintiffs treated the same text as the missing source-chain support for a broad regional closure with controlled exceptions. |
| Notamify A0796/26 raw-text mirror | Plaintiff in [run 03 rebuttal](run-03/submitted-evidence/submitted-evidence-04-plaintiff-682e9dcc5947.txt) | A0796/26 stated that Tehran FIR had resumed normal operation while the west part remained closed for overflights, with applicability through May 25 08:30 UTC.  Plaintiffs used it to answer the defense claim that the record proved only airport operations and lacked transit or overflight evidence. |
| SafeAirspace and EASA aviation-risk context | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-b762826a22f0.txt) and [run 01](run-01/submitted-evidence/submitted-evidence-04-plaintiff-51569ad0cb54.txt) | SafeAirspace described OIIX/Tehran FIR status and later partial reopening, while EASA's conflict-zone bulletin described conflict and air-defense risk in Iranian airspace.  The record used these sources for non-weather security context, not as primary proof of the May 24 closure. |
| Iran International denial report | Defendant in [run 02](run-02/submitted-evidence/submitted-evidence-04-defendant-6057a17cc5bf.txt) | The report said Iran's Civil Aviation Organization denied a new notice imposing nationwide airspace restrictions and said flights were operating according to plan.  The same exhibit also acknowledged an earlier western-Tehran-FIR airport activity suspension with limited sunrise-to-sunset exemptions, so parties treated it as narrowing the issue rather than disproving the regional restriction. |

The plaintiff argued that the record satisfied the major-region path.  In runs 1 and 2, the plaintiff relied on reporting and A1010/A1015 mirrored text to show a western Tehran FIR closure, suspended permissions, daylight-only exceptions, fresh Iran CAA approval requirements, and non-weather security context.  In run 3, the plaintiff added A0796/26, which directly addressed overflights by stating that the west part of Tehran FIR remained closed for overflights through the same May 25 endpoint.

The defendant argued that the record proved restrictions but not a qualifying closure.  It emphasized unofficial NOTAM custody, airport-operations classifications, exception airports, daylight operations, fresh-permission regimes, and the absence of an official Iranian AIS archive capture.  It also argued that the two-airport complete-suspension route was unproven because some listed airports appeared as exception airports or operational under restrictions.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that Iran's Civil Aviation Authority issued A1010/26, suspending civil flight permits in western Tehran FIR by the deadline.  The explanation treated the restriction as covering arriving, departing, and transiting commercial flights with limited exceptions. |
| run 01 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 01 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on A1010/26, reporting, and EASA context to find a security-related major regional closure.  The explanation treated limited daylight operations and fresh CAA approval as permitted exceptions. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the record proved a non-weather closure under the preponderance standard.  The explanation emphasized suspended civil flight permits, closed airports in the region, and security context. |
| run 01 | C5 | Seated.  Round 1: `demonstrated`. | C5 relied on the reported Iran CAA NOTAM closing west-Tehran-FIR airports before the deadline.  The explanation treated western Tehran FIR as a major Iranian airspace region. |
| run 02 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that raw NOTAM text confirmed a broad western Tehran FIR closure with daylight and approval exceptions.  The explanation treated those exceptions as permissible under the rule. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found an Iran-initiated broad closure effective May 22 to May 25.  The explanation treated the closure as non-weather and regional. |
| run 02 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C4 | Seated.  Round 1: `demonstrated`. | C4 relied on NOTAM OIIX A1010/26 and its closure of west-Tehran-FIR airports with restricted exceptions.  The explanation treated the measure as a broad regional closure. |
| run 02 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that admitted NOTAM text showed a broad non-weather closure.  The explanation emphasized limited approved exceptions rather than ordinary operations. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 relied on A0796/26 and A1015/26 together.  The explanation found western Tehran FIR closed to overflights while airport arrivals and departures were restricted to daylight operations requiring new Iran CAA permission. |
| run 03 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that A0796/26 and A1015/26 showed closure of western Tehran FIR to overflights and airport operations through the deadline.  The explanation treated sunrise-to-sunset exceptions as limited. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the admitted NOTAMs satisfied the major-region route.  The explanation emphasized overflight closure and suspended airport operations with limited daylight exceptions. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that A0796/26 and A1015/26 showed a security-driven Iran CAA restriction covering the deadline.  The explanation stated that limited exceptions did not disqualify a major closure. |

## Juror Explanation Summary

All submitted juror rationales accepted the major-region theory.  Jurors treated western Tehran FIR as a major Iranian airspace region and found that the May 22 or May 23 to May 25 timing covered the May 24 11:59 PM ET deadline.  They credited the Iran CAA permission language and the security context as satisfying Iran initiation and non-weather causation.

The main source-weight issue was custody.  The decisive NOTAM text came from Notamify mirrors rather than an official Iranian AIS archive, and the corroborating reports were secondary sources.  Jurors still found the record sufficient because the mirrored NOTAM text, A1010/A1015 replacement chain, A0796 cross-reference in run 3, and contemporaneous reporting aligned on the core timing and regional restriction.

The defense arguments shaped the reasoning even though no juror voted `not_demonstrated`.  Jurors addressed the airport-operations classification and exception airports by applying the rule's limited-exception clause.  In run 3, the A0796/26 overflight evidence gave jurors a direct answer to the argument that the record showed airport operations but no commercial transit restriction.
