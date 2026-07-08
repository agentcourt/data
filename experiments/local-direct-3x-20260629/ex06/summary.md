# ex06 Summary

## Proposition and Clarifying Rules

> The event below resolves to YES.
>
> | Property   | Value                                                                                                                                                                                                                                                                               |
> |------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
> | Event      | The United States Armed Forces conduct a military operation involving ground troops entering Venezuelan sovereign territory with the objective of seizing or holding territory, removing the sitting government, or establishing operational control of a major population center.  |
> | Source     | Official statement from the U.S. Department of Defense or the White House confirming deployment of ground forces. Secondary: UN Security Council records.                                                                                                                           |
> | Criteria   | Resolves YES if U.S. ground forces enter Venezuelan territory in a combat capacity. Targeted strikes, naval blockades, special operations raids without territorial objectives, and cyber operations resolve NO.                                                                    |
> | Edge cases | Capture of a head of state without territorial occupation: NO (separate blueprint for regime change). U.S. forces entering from a third country: YES if troops cross into Venezuelan territory. Proxy forces directed by U.S. command: NO unless U.S. personnel physically present. |
> | Fallback   | If DoD and White House issue conflicting statements, UN Security Council records are binding. If no official statement within 72 hours of credible reports, resolution deferred 30 days.                                                                                            |
> | Expiration | January 31, 2026. Resolves NO if event has not occurred.                                                                                                                                                                                                                           |

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex06/complaint.md), and the example [README](../../../../../../adjudication/arb/examples/ex06/README.md) identifies the Bellwether blueprint source.  The packet contained no separate evidence file beyond the complaint and README.

The rule required official Department of Defense or White House confirmation of U.S. ground forces entering Venezuelan territory.  It also required a qualifying objective: seizing or holding territory, removing the sitting government, or establishing operational control of a major population center.  The blueprint excluded targeted strikes, special operations raids without territorial objectives, and capture of a head of state without territorial occupation.

## Resolution Summary

Two `ex06` runs resolved `not_demonstrated`, and the third ended `no_majority`, matching the batch [ledger](../ledger.csv).  The councils accepted that official sources showed U.S. ground forces entered Venezuela for the Maduro operation, but most votes treated the operation as a short capture raid covered by the blueprint's No edge case.  The only `demonstrated` vote, in run 01, relied on removal and transition-oversight language rather than proof of territorial occupation or operational control.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, and all recorded votes occurred in the first round.

The summary uses these local artifacts.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex06-20260630005431` | 2026-06-30T00:54:31Z | 2026-06-30T01:32:23Z | `not_demonstrated` | 3-1 for `not_demonstrated` | C2 failed with `deadline_expired` |
| [run 02](run-02/run.json) | `arb-ex06-20260630013224` | 2026-06-30T01:32:24Z | 2026-06-30T01:52:56Z | `not_demonstrated` | 3-0 for `not_demonstrated` | C2 and C4 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex06-20260630015257` | 2026-06-30T01:52:57Z | 2026-06-30T02:28:40Z | `no_majority` | 2-0 for `not_demonstrated`, below the required threshold | C1 failed with `deadline_expired`; C3 and C4 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Official War.gov or Department of War account of Maduro capture | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-e2e3a57baa70.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-d7a52fba7358.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-f28c5a402415.txt) | The official account described Operation Absolute Resolve in Caracas, a ground-based extraction force, more than 150 military aircraft, special operations involvement, and Maduro's capture.  It also described the mission as joint military and law enforcement action to bring Maduro to justice, creating the central tension under the blueprint. |
| White House or OMB materials concerning the operation and post-operation policy | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-c0374ffa33d5.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-5bc8b01e9699.txt), [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-ade5f873c616.txt), and defendant in [run 03](run-03/submitted-evidence/submitted-evidence-05-defendant-78e9314f1e93.txt) | The OMB statement described targeted and limited military strikes within Venezuela in furtherance of apprehension and transport for prosecution.  The oil-revenue and capture-related White House releases supplied post-operation policy and removal language, while preserving law-enforcement and extradition framing. |
| Rubio White House releases | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-221f925d2d25.txt), plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-37f9459e255e.txt), and plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-f9ff71d245a2.txt) | Rubio's statements confirmed that U.S. forces were on the ground in Venezuela for about two hours to capture Maduro.  They also stated that the action was not a war against Venezuela, not an invasion, and not an extended military operation. |
| Department of War transcript | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-96090e61aecd.txt) | The transcript described the Caracas action as grabbing an indicted individual wanted by American justice.  The defense used that wording to reinforce the arrest-and-extraction characterization rather than a territorial objective. |
| United Nations Security Council record | Plaintiff in [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-b6e00c4389f6.txt) | The UN record served as an admitted fallback-source path and provenance item.  The plaintiff's main argument still rested on official U.S. sources, and the council did not treat the UN record as proving territorial occupation or operational control. |

The plaintiff argued that official U.S. sources satisfied the ground-force requirement because they placed U.S. personnel physically inside Caracas during a combat-capable operation.  Plaintiff also emphasized language saying Maduro was out of power and that the United States would oversee or run a transition until Venezuela could be put back on track.  That argument treated removal of the sitting government as an independent qualifying objective under the blueprint, even without proof of long-term territorial occupation.

The defendant argued that the same official sources triggered the blueprint's exclusions.  Its argument emphasized that the operation was repeatedly described as a raid, capture, arrest, extraction, apprehension, and transport for prosecution, with ground presence lasting about two hours.  The defense treated transition language as political aftermath rather than proof that the ground operation had a qualifying territorial objective or established operational control of Caracas.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that U.S. ground forces entered Venezuela in a combat capacity and that the operation included removal of Maduro and transition oversight.  The explanation treated those facts as satisfying the blueprint's qualifying-objective requirement. |
| run 01 | C2 | Failed with `deadline_expired`. | C2 submitted no vote.  Four other members voted, so the failure did not prevent a run-level resolution. |
| run 01 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found a short capture raid with no territorial occupation or operational control.  The explanation applied the proposition's capture-without-occupation exclusion. |
| run 01 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 accepted that U.S. ground forces entered Caracas in a combat-capable raid.  The explanation found that official sources framed the action as a brief law-enforcement capture mission, not territorial occupation, government control, or operational control of a major population center. |
| run 01 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 treated the admitted record as a special operations raid to capture Maduro without territorial occupation.  The explanation relied directly on the blueprint's capture-of-head-of-state carveout. |
| run 02 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found that official sources characterized the event as a raid, capture, and extraction mission.  The explanation noted the blueprint's exclusions for head-of-state capture without occupation and special operations raids without territorial objectives. |
| run 02 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 02 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found that the operation did not prove a qualifying objective of seizing territory, holding territory, removing the government with territorial control, or establishing operational control of Caracas.  The explanation treated the official raid, capture, and arrest language as controlling. |
| run 02 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure did not prevent a unanimous seated vote. |
| run 02 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found that Operation Absolute Resolve was an extraction raid, not an occupation or operational-control event.  The explanation cited the explicit edge case for capture of a head of state without territorial occupation. |
| run 03 | C1 | Failed with `deadline_expired`. | C1 submitted no vote.  The failure combined with two other failures to leave only two voting members. |
| run 03 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found that U.S. forces entered Caracas and captured Maduro, but that the official sources described a capture, extraction, and justice operation.  The explanation applied the edge case for head-of-state capture without territorial occupation. |
| run 03 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure contributed to the `no_majority` result. |
| run 03 | C4 | Failed with `agent_exited`. | C4 submitted no vote.  The failure contributed to the `no_majority` result. |
| run 03 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 treated the event as a special operations raid to capture Maduro.  The explanation found that two-hour ground presence did not show seizing or holding territory, removing the government with lasting effect as defined by the proposition, or controlling a major population center. |

## Juror Explanation Summary

The jurors treated ground presence as proved by official U.S. sources, but most votes found that ground presence did not end the inquiry.  The blueprint required a qualifying objective and expressly excluded a head-of-state capture without territorial occupation.  That exclusion drove the `not_demonstrated` votes in all three runs.

The majority reasoning emphasized how official sources characterized the operation.  They described the event as a raid, capture, arrest, extraction, apprehension, and transport for prosecution, and Rubio stated that forces were on the ground for about two hours.  Jurors found no admitted proof of occupation, checkpoints, command posts, continuing troop presence, or operational control of Caracas.

The dissent in run 01 focused on the removal and transition-oversight language in the official War.gov account.  C1 read Maduro's removal from power and U.S. transition oversight as satisfying the blueprint's removal-of-government objective.  The other voting members did not adopt that reading because they treated the blueprint's head-of-state capture carveout and the absence of territorial occupation as controlling.
