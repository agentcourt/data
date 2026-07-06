# ex05 Summary

## Proposition and Clarifying Rules

> The United States invaded Venezuela between November 3, 2025, and
> January 31, 2026, 11:59 PM ET.  In particular,the United States
> commenced a military offensive intended to establish control over any
> portion of Venezuela between November 3, 2025, and January 31, 2026,
> 11:59 PM ET. Land de facto controlled by Venezuela or the United
> States as of September 6, 2025, 12:00 PM ET, is considered to the
> sovereign territory of that country. The resolution source is a
> consensus of credible sources.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex05/complaint.md), and the example [README](../../../../../../adjudication/arb/examples/ex05/README.md) preserves the Polymarket question and official guidelines.  The packet contained no separate market-rules exhibit in the source directory.

The rule required proof that the United States commenced a military offensive intended to establish control over any portion of Venezuela during the stated window.  It treated land de facto controlled by Venezuela or the United States as of September 6, 2025, 12:00 PM ET, as the sovereign territory of that country.  The source rule required a consensus of credible sources, so the decisive dispute concerned whether admitted sources proved territorial-control intent rather than only a military capture operation.

## Resolution Summary

The three `ex05` runs did not produce a stable merits resolution.  Run 01 ended `no_majority` after a 2-2 split repeated across three rounds, run 02 resolved `not_demonstrated` by a 3-0 vote among seated members, and run 03 ended `no_majority` after a final 2-1 vote for `not_demonstrated` that did not meet the required threshold.  The shared record proved a major U.S. military operation in Caracas, but the councils divided over whether temporary site control during capture and extraction satisfied the market's intent-to-control requirement.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, with additional rounds in runs 01 and 03 because the initial votes did not resolve the case.

The summary uses these local artifacts.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex05-20260629234720` | 2026-06-29T23:47:20Z | 2026-06-30T00:13:28Z | `no_majority` | 2-2 split in rounds 1, 2, and 3 | C3 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex05-20260630001330` | 2026-06-30T00:13:30Z | 2026-06-30T00:35:04Z | `not_demonstrated` | 3-0 for `not_demonstrated` | C1 and C3 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex05-20260630003505` | 2026-06-30T00:35:05Z | 2026-06-30T00:54:30Z | `no_majority` | Final 2-1 for `not_demonstrated` after earlier `demonstrated` support | C1 and C4 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| U.S. Department of War or Pentagon News account of Operation Absolute Resolve | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-beef2fca851d.txt), defendant in [run 02](run-02/submitted-evidence/submitted-evidence-06-defendant-26011b5f6d79.txt), and plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-e0e0fb921ec9.txt) | The official account described a January 3, 2026, U.S. military extraction in Caracas involving joint forces, special operations forces, extensive air and ground coordination, and the capture of Maduro.  The same source also framed the mission as joint military and law enforcement action tied to criminal proceedings, which the defense used against territorial-control intent. |
| Lead Inspector General report on Operation Southern Spear | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-90b0943b9140.txt) and defendant in [run 02](run-02/submitted-evidence/submitted-evidence-07-defendant-53782f10ceb9.txt) | The report described the broader U.S. counternarcotics campaign and stated that the mission statement was classified.  It supported the existence of a wider military campaign, but it did not resolve whether Operation Absolute Resolve had territorial-control intent. |
| White House and ABC materials on transition, oil, and Rubio's statements | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-04-plaintiff-9a260d070386.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-0c5c88687b2a.txt), and [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-6627f15cd3a4.txt) | These materials contained the strongest plaintiff language about running Venezuela, transition control, oil revenue, and U.S. pressure after the capture.  They also contained Rubio's denial that the operation was an invasion or occupation, his statement that U.S. forces were on the ground for about two hours, and reporting that AP journalists saw no visible U.S. presence afterward. |
| AP/PBS chronology and Council on Foreign Relations explainer | Plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-2efdab998e47.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-7d30fcd0d9f7.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-051e811bed13.txt) | These sources supplied chronology, escalation context, and campaign framing.  They supported the fact of U.S. force in Venezuela and the connection to Operation Southern Spear, while leaving the intent element contested. |
| Brookings, Chatham House, and CSIS expert analysis | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-51105c5e227a.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-52e4d5a16b2f.txt), and [run 02](run-02/submitted-evidence/submitted-evidence-05-plaintiff-94e861ebadbf.txt); defendant in [run 03](run-03/submitted-evidence/submitted-evidence-04-defendant-383c84572ac8.txt) | The expert sources supplied competing characterizations.  Chatham House supported the plaintiff's view by describing the operation as force in Venezuela, a sovereignty violation, and a transition-control claim, while Brookings and CSIS supplied limiting points about no large ground force, no direct governing role, narrow strike scope, and law-enforcement focus. |

The plaintiff argued that the rule did not require permanent occupation, broad administration, or a large-scale ground war.  It treated control of a fortified compound, Fort Tiuna, air corridors, and extraction routes as intentional control over portions of Venezuelan territory for the duration of the mission.  Plaintiff also relied on post-operation transition and oil statements to argue that the United States asserted authority over Venezuela beyond the physical raid.

The defendant argued that the record proved force, location, and capture, but not territorial-control intent.  It treated the operation as an arrest or extraction mission in which any local control was a tactical means for force protection.  The defense relied on Rubio's law-enforcement framing, the absence of an admitted order to hold or govern territory, AP's no-visible-presence observation, the Lead Inspector General campaign framing, and CSIS's limited-target analysis.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Rounds 1, 2, and 3: `demonstrated`. | C1 treated the Caracas operation as a military offensive that temporarily controlled a fortified area to seize Maduro.  The explanation also credited statements about transition and oil policy as evidence that the United States asserted authority over Venezuela. |
| run 01 | C2 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C2 found that the record proved a military extraction but did not prove intent to establish territorial control.  The explanation relied on the operation's capture framing, tactical force-protection account, and lack of post-operation presence. |
| run 01 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure left four seated voters and contributed to the unresolved 2-2 split. |
| run 01 | C4 | Seated.  Rounds 1, 2, and 3: `demonstrated`. | C4 found that U.S. forces seized control of a fortified compound in Venezuela.  The explanation treated that temporary control as enough to satisfy the proposition. |
| run 01 | C5 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C5 found that the operation remained a capture or extraction mission.  The explanation cited Rubio's denial, AP's no-visible-presence observation, and the lack of proof that the United States intended to control Venezuelan territory as territory. |
| run 02 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 02 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found that official and credible sources consistently framed the mission as capture or extraction.  The explanation concluded that the decisive intent element remained unproved. |
| run 02 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 accepted that U.S. forces exercised temporary tactical control during a military operation.  The explanation found no preponderant proof that the United States intended to establish territorial control over Venezuela. |
| run 02 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found military force and temporary control during capture, but no credible consensus on lasting territorial control.  The explanation cited the official law-enforcement framing and the absence of evidence that U.S. forces stayed to administer territory, hold checkpoints, or govern. |
| run 03 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 03 | C2 | Seated.  Rounds 1, 2, and 3: `demonstrated`. | C2 treated the Caracas operation as a military offensive that intentionally controlled Fort Tiuna, air corridors, and other sites long enough to complete capture and extraction.  The explanation found temporary control sufficient under the "any portion" language. |
| run 03 | C3 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C3 found U.S. military force and a capture operation but no source proving territorial-control intent.  The explanation characterized the mission as a limited raid rather than an offensive aimed at control. |
| run 03 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure left the final vote below the threshold needed for a run-level merits resolution. |
| run 03 | C5 | Seated.  Round 1: `demonstrated`; rounds 2 and 3: `not_demonstrated`. | C5 first accepted that the United States established control during the January 3 operation.  Later votes treated the same control as tactical means for a capture and extraction mission, with CSIS supporting the law-enforcement and limited-scope reading. |

## Juror Explanation Summary

The jurors agreed that the admitted record showed a U.S. military operation inside Venezuela.  The vote split concerned whether control used to complete a capture mission counted as intended control over a portion of Venezuela.  `Demonstrated` votes treated temporary control of compounds, sites, air corridors, or extraction routes as enough because the market covered any portion of Venezuelan territory.

The `not_demonstrated` votes drew a sharper line between tactical control and territorial-control intent.  Those jurors treated capture, extraction, air cover, and force protection as military acts that did not prove an objective to hold, administer, or govern territory.  They relied on official law-enforcement framing, Rubio's denial of invasion or occupation, no visible post-operation U.S. presence, and expert analysis describing a limited target set.

The process defects mattered because failed council members left two runs without a resolving majority.  Run 01 stayed split after three rounds, and run 03 moved from a 2-1 `demonstrated` first round to a 2-1 `not_demonstrated` final round without reaching the required threshold.  The only run-level merits resolution was run 02's `not_demonstrated`, based on a unanimous seated council view that territorial-control intent had not been proved.
