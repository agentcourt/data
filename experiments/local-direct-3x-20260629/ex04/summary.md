# ex04 Summary

## Proposition and Clarifying Rules

> Israel invaded Syria in 2024.  In particular, Israel commenced a
> military offensive intended to establish control over any portion of
> Syria between September 12, 2024 and December 31, 2024, 11:59 PM
> ET. For the purposes of this market, the Golan Heights count as
> Israeli territory.  The authorities for this proposition are official
> confirmation by Syria, Israel, the United Nations, or any permanent
> member of the UN Security Council, however a consensus of credible
> reporting will also be used.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex04/complaint.md) and the [market rules](../../../../../../adjudication/arb/examples/ex04/market-rules.md).  The example [README](../../../../../../adjudication/arb/examples/ex04/README.md) identifies the disputed Polymarket market and preserves the challenged Yes rationale.

The rules required proof that Israel commenced a military offensive intended to establish control over any portion of Syria during the market window.  They counted the Golan Heights as Israeli territory, so the relevant territorial question concerned Syrian territory outside that carveout.  The rules allowed official confirmation by Syria, Israel, the United Nations, or a permanent member of the United Nations Security Council, while also allowing a consensus of credible reporting.

## Resolution Summary

All three `ex04` runs resolved `demonstrated`, matching the batch [ledger](../ledger.csv).  The final votes were 3-0 among seated members in run 01, 3-2 in run 02, and 5-0 in run 03.  The majority reasoning treated Israel's entry into the UNDOF buffer zone or Syrian side of Mount Hermon, its statements about remaining until security arrangements existed, and corroborating UN or credible reporting as enough to prove control intent under the market definition.

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
| [run 01](run-01/run.json) | `arb-ex04-20260629223747` | 2026-06-29T22:37:47Z | 2026-06-29T22:58:37Z | `demonstrated` | 3-0 for `demonstrated` | C3 and C5 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex04-20260629225838` | 2026-06-29T22:58:38Z | 2026-06-29T23:23:49Z | `demonstrated` | 3-2 for `demonstrated` | None |
| [run 03](run-03/run.json) | `arb-ex04-20260629232350` | 2026-06-29T23:23:50Z | 2026-06-29T23:47:18Z | `demonstrated` | 5-0 for `demonstrated` | None |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| [Market rules](../../../../../../adjudication/arb/examples/ex04/market-rules.md) | Case packet in all runs | The packet supplied the market question, the Yes rule, the Golan Heights carveout, the permitted source authorities, and Polymarket's challenged Yes rationale.  It framed the dispute around control of Syrian Mount Hermon or the Syria buffer zone rather than a broader claim about all Israeli activity in Syria. |
| Israeli PMO or PMO-derived statements | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-87a2be06b06f.txt) and [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-15b73465e3b7.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-0d98a74d5144.txt), and [run 02](run-02/submitted-evidence/submitted-evidence-06-plaintiff-be16a363f499.txt) | The plaintiff used these captures to show Israeli statements about taking control of positions, Mount Hermon, the Golan Heights context, and remaining until a security arrangement existed.  Several gov.il pages were blocked to local retrieval, so the record preserved accessible mirrors or concise indexed captures with limitation notes. |
| Credible press reports on Israeli entry, Mount Hermon, and the buffer zone | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-96725428f566.txt), [run 01](run-01/submitted-evidence/submitted-evidence-04-plaintiff-2aa6c6bb7f84.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-63f356380079.txt), [run 02](run-02/submitted-evidence/submitted-evidence-05-plaintiff-c2dd3776f3e3.txt), [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-c87bdd160b3a.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-b0349334e954.txt) | The reports supplied the December 2024 timing, described Israeli forces entering the buffer zone or Syrian side of Mount Hermon, and reported capture, seizure, occupation, or continued presence.  The plaintiff used those reports to connect the market window, the non-Golan location, and military control. |
| UN, UNDOF, and United Nations Security Council materials | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-26cf1a5ab33e.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-ef202b15c89e.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-e049416d3ae0.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-9e078b6c01cd.txt) | These sources supplied the disengagement framework, confirmed Israeli positions in the area of separation, and recorded official criticism or withdrawal demands.  The plaintiff used them to satisfy the market's official-source path and to corroborate that the territory lay on the Syrian side of the relevant line. |
| Defense sources preserving temporary or defensive framing | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-9ac4fbc4020a.txt), [run 02](run-02/submitted-evidence/submitted-evidence-07-defendant-04b4d4fac724.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-05-defendant-cf16e8709259.txt) | The defense sources described Israeli measures as limited, temporary, tactical, or border-security-driven, and some preserved official Israeli statements denying a permanent presence or broader advance.  Those sources also acknowledged Israeli entry, positions, or presence in Syrian territory, making them mixed evidence in the council's reasoning. |

The plaintiff argued that the market did not require annexation, permanent occupation, a large battlefield operation, or an Israeli motive unrelated to defense.  It treated the relevant conduct as a ground movement into Syrian territory that took and held positions until Israel's security conditions were met.  Plaintiff used the phrase "any portion of Syria" to argue that a limited buffer-zone or Mount Hermon deployment could satisfy the market.

The defendant argued that the rule required more than presence, treaty breach, or short-term control.  Its theory treated the operation as a temporary border-security deployment after Syrian forces abandoned positions, not as a military offensive intended to establish control in the market's sense.  The defense evidence used the same conduct facts while emphasizing temporary, limited, non-permanent, and defensive qualifications.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that Israeli forces captured and held the Syrian side of Mount Hermon or the UNDOF buffer zone.  The explanation treated Netanyahu's statement about remaining until a security arrangement as control intent. |
| run 01 | C2 | Seated.  Round 1: `demonstrated`. | C2 relied on entry into Syrian territory, captured strategic positions, and an announced intent to remain.  The explanation treated temporary defensive motive as compatible with the market's control requirement. |
| run 01 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that Israeli forces entered Syrian territory, captured Mount Hermon, and remained under stated security conditions.  The explanation treated those facts as satisfying the offensive-control elements. |
| run 01 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 accepted Israeli entry and maintained positions but found the intent element insufficient.  The explanation read the record as showing a temporary defensive deployment rather than an offensive intended to establish territorial control. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found official Israeli statements, UNDOF confirmation, and credible reporting sufficient to prove control over Syrian territory.  The explanation emphasized that the location was outside the Golan Heights carveout. |
| run 02 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on official Israeli statements ordering the army to take over and temporarily control Syrian positions.  The explanation treated UNDOF confirmation of IDF presence as satisfying the market rule. |
| run 02 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 treated the record as showing temporary defensive control but not a military offensive intended to establish control.  The explanation gave decisive weight to the security-deployment framing. |
| run 02 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that Israel ordered the IDF to take control of Syrian territory on December 8, maintained a presence through December 17, and said forces would remain until a security arrangement existed.  The explanation treated that as the market-defined invasion. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that Israeli forces entered Syrian territory, seized the Syrian side of Mount Hermon, established a sterile defense zone, and fortified positions.  The explanation treated UN and Syrian confirmations as support for the market definition. |
| run 03 | C2 | Seated.  Round 1: `demonstrated`. | C2 found entry, strategic positions, and control during the market window.  The explanation stated that temporary or defensive purpose did not defeat the control element. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that Israeli forces entered the Syrian side of Mount Hermon, held positions there, and declared an intent to remain for security control.  The explanation applied the preponderance standard to those control facts. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`. | C4 relied on entry outside the Golan Heights, fortifications, and statements that forces would remain until security arrangements were met.  The explanation treated temporary control during the market window as enough. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`. | C5 found that Israeli forces entered Syrian territory, established control over strategic positions, and declared an intent to remain.  The explanation concluded that those facts satisfied the market's invasion definition. |

## Juror Explanation Summary

The council's majority reasoning turned on a functional reading of control.  Jurors in the majority treated capture, takeover, continued presence, fortification, or a sterile defense zone in Syrian territory as control over a portion of Syria.  They also treated Israel's stated plan to remain until a security arrangement existed as evidence of intent, even when the same statements framed the move as temporary or defensive.

The negative votes in run 02 accepted much of the same factual record but weighed the intent element differently.  C1 and C4 read the temporary, limited, and border-security framing as enough to prevent a preponderance finding that Israel commenced a military offensive intended to establish control.  Their disagreement concerned market characterization, not whether Israeli forces entered or held positions in Syrian territory.

The process record contained two council-member failures in run 01 and no failures in runs 02 or 03.  The failures did not change the final direction because all seated members in run 01 voted `demonstrated`.  Across the three runs, the admitted sources and council explanations ended on a consistent Yes resolution, while preserving a material dissent over whether temporary defensive control satisfies the phrase "military offensive intended to establish control."
