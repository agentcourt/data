# ex07 Summary

## Proposition and Clarifying Rules

> By May 31, 2026, 11:59 PM ET, Russia and Ukraine had officially reached a publicly announced and mutually agreed halt in military engagement that constituted a general pause in the conflict, not merely an informal agreement, humanitarian pause, limited sector-specific ceasefire, or future framework.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex07/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex07/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex07/official-source-record.txt), [primary evidence summary](../../../../../../adjudication/arb/examples/ex07/primary-evidence.txt), [secondary reporting summary](../../../../../../adjudication/arb/examples/ex07/secondary-reporting.txt), and [unresolved record gaps](../../../../../../adjudication/arb/examples/ex07/unresolved-record-gaps.txt).  The example [README](../../../../../../adjudication/arb/examples/ex07/README.md) identifies the disputed Polymarket condition behind the final Yes resolution.

The market rule required an official ceasefire agreement, defined as a publicly announced and mutually agreed halt in military engagement between Russia and Ukraine by May 31, 2026, 11:59 PM ET.  It required a general pause in the conflict and excluded informal agreements, humanitarian pauses, energy-infrastructure-only agreements, Black Sea-only agreements, and similar limited arrangements.  It allowed either official announcements from both Russia and Ukraine or a wide consensus of credible media reporting that an official ceasefire agreement had been reached.

## Resolution Summary

The three runs did not produce a stable answer.  Run 01 resolved `demonstrated` by a 3-1 vote among seated members, while runs 02 and 03 resolved `not_demonstrated` after final votes of 3-1 and 3-0.  The split turned on whether credible reporting of a May 9-May 11 suspension of kinetic activity proved a qualifying general pause, or whether direct official and implementation evidence showed a narrower Victory Day, Red Square, and prisoner-exchange-linked arrangement.

## Procedure

Each run used the same arbitration procedure.  The parties filed openings, submitted source captures and reports, argued the merits, replied to the opposing side, and submitted closings after the admitted record closed.  The council then voted under the preponderance standard, with additional rounds in runs 02 and 03 because early votes did not resolve the case.

The summary uses these local artifacts.  The run records anchor the case IDs, timestamps, filings, evidence, council membership, votes, failures, and final resolutions.  The digests, transcripts, manifests, and batch ledger provide readable checks on the same record fields.

- Run records: [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json).
- Evidence manifests: [run 01 manifest](run-01/evidence-manifest.json), [run 02 manifest](run-02/evidence-manifest.json), and [run 03 manifest](run-03/evidence-manifest.json).
- Digests and transcripts: [run 01 digest](run-01/digest.md), [run 02 digest](run-02/digest.md), [run 03 digest](run-03/digest.md), [run 01 transcript](run-01/transcript.md), [run 02 transcript](run-02/transcript.md), and [run 03 transcript](run-03/transcript.md).
- Batch cross-check: [ledger.csv](../ledger.csv).

## Results

| Run | Case ID | Started | Finished | Resolution | Final vote tally | Failed or non-voting members |
|---|---|---:|---:|---|---|---|
| [run 01](run-01/run.json) | `arb-ex07-20260630022841` | 2026-06-30T02:28:41Z | 2026-06-30T02:51:56Z | `demonstrated` | 3-1 for `demonstrated` | C1 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex07-20260630025157` | 2026-06-30T02:51:57Z | 2026-06-30T03:30:05Z | `not_demonstrated` | 3-1 for `not_demonstrated` after two 2-2 rounds | C2 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex07-20260630033006` | 2026-06-30T03:30:06Z | 2026-06-30T03:51:57Z | `not_demonstrated` | 3-0 for `not_demonstrated` after two mixed rounds | C1 and C3 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source summaries | Case packet in all runs | The packet supplied the market rule, Polymarket page record, source hierarchy, preserved official-source summaries, secondary-reporting leads, and known gaps.  It warned that platform page-context statements should not be treated as independent proof of official mutuality, theater-wide scope, implementation, or credible-reporting reliability. |
| Credible media reports confirming a three-day ceasefire | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-236dce43c3d8.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-2c8cd49d9b00.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-5d2cebff6f4b.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-209acebc67ff.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-e2286c9504ec.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-c8434a93386e.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-797c6a2cd3aa.txt), [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-eed9632fae9a.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-039a756c335a.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-84697b662d42.txt) | These reports described a May 9-May 11 ceasefire, prisoner exchange, Russian acceptance, Ukrainian confirmation, and, in some reports, suspension of all kinetic activity.  Plaintiff used them to argue that the record contained a wide consensus of credible reporting that both sides had reached a qualifying agreement. |
| Official Ukrainian presidential decree | Defendant in [run 02](run-02/submitted-evidence/submitted-evidence-05-defendant-4fbef7260120.txt) and [run 03](run-03/submitted-evidence/submitted-evidence-04-defendant-cf6a5f80e566.txt) | The decree concerned the May 9 parade in Moscow and excluded the Red Square territorial square from Ukraine's weapons-use plan during the parade.  Defendant used its narrow subject matter to argue that the most direct Ukrainian official evidence did not prove a theater-wide halt in military engagement. |
| ISW, NV, and CBS/AP reporting on implementation and violations | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-04-defendant-52a3277a9302.txt), [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-d5ef4e09892f.txt), [run 02](run-02/submitted-evidence/submitted-evidence-06-defendant-b4bfea1a053a.txt), [run 03](run-03/submitted-evidence/submitted-evidence-05-defendant-672e50c14e62.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-06-defendant-56be60eae740.txt) | These sources reported continued offensive operations, mutual violation accusations, decreased but continuing activity, and weak monitoring or enforcement mechanisms during the May 9-May 11 period.  Defendant used them to argue that the arrangement did not constitute a general pause in the conflict. |

The plaintiff argued that the market did not require perfect compliance once the qualifying agreement had been reached.  It relied on reports that Russia and Ukraine both confirmed a U.S.-brokered May 9-May 11 ceasefire and prisoner exchange, with some reports describing a suspension of all kinetic activity.  Plaintiff treated violation reports as implementation disputes rather than evidence that no general ceasefire agreement existed.

The defendant argued that the record proved a short political arrangement, not a qualifying general pause.  It relied on the Kremlin framing around a prisoner exchange, the official Ukrainian decree's Red Square parade scope, and ISW reporting that operations continued across the theater.  Defendant treated continued activity and narrow official materials as evidence that the arrangement fell within the market's exclusions for humanitarian pauses and limited agreements.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  Four other members voted, so the failure did not prevent a resolution. |
| run 01 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that the admitted evidence showed a publicly announced and mutually agreed May 9-May 11 ceasefire.  The explanation treated compliance issues as insufficient to disprove the agreement's existence. |
| run 01 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on multiple credible media reports confirming a mutual agreement suspending all kinetic activity.  The explanation treated later violations as distinct from whether the agreement had been reached. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that the reports described a publicly announced, mutually confirmed three-day ceasefire meeting the general-pause requirement.  The explanation treated violation evidence as going to compliance rather than agreement formation. |
| run 01 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found that the truce was limited rather than general.  The explanation emphasized Russian prisoner-exchange framing, the narrow Ukrainian decree, and continued frontline operations. |
| run 02 | C1 | Seated.  Rounds 1, 2, and 3: `demonstrated`. | C1 relied on credible reporting that Russia and Ukraine agreed to suspend all kinetic activity.  The explanation treated the Ukrainian decree as not negating the broader agreement described by reports. |
| run 02 | C2 | Failed with `agent_exited`. | C2 submitted no vote.  The failure left four seated voters across three rounds. |
| run 02 | C3 | Seated.  Rounds 1 and 2: `demonstrated`; round 3: `not_demonstrated`. | C3 first found that credible reports and official confirmations established a mutual agreement suspending all kinetic activity.  In the final round, C3 changed to `not_demonstrated` based on the narrow Ukrainian decree, Russian prisoner-exchange framing, and continued operations. |
| run 02 | C4 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C4 treated the direct official materials and ISW implementation evidence as stronger than broad secondary reporting.  The explanation found no preponderant proof of a qualifying general pause. |
| run 02 | C5 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C5 found mutual acknowledgement of a May 9-May 11 arrangement but not a general pause.  The explanation emphasized narrow official scope and continued theater-wide operations. |
| run 03 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure reduced the seated council to three voting members. |
| run 03 | C2 | Seated.  Round 1: `not_demonstrated`; round 2: `demonstrated`; round 3: `not_demonstrated`. | C2 moved between the two interpretations across rounds.  The final explanation treated the arrangement as temporary and exchange-centered, with continued operations and a narrow Ukrainian decree defeating proof of a general pause. |
| run 03 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a final 3-0 vote among seated members. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`; rounds 2 and 3: `not_demonstrated`. | C4 first credited official Russian acceptance and multi-source reporting of Ukrainian confirmation.  Later votes found that prisoner-exchange focus, the Red Square decree, and battlefield reports of ongoing engagement fell short of the required general pause. |
| run 03 | C5 | Seated.  Rounds 1, 2, and 3: `not_demonstrated`. | C5 consistently treated the official Ukrainian decree and ISW reports as decisive.  The explanation found that the record did not prove a mutually agreed, general halt in fighting. |

## Juror Explanation Summary

The `demonstrated` votes treated the market as asking whether a qualifying agreement had been reached, not whether the ceasefire held perfectly.  Those jurors relied on a cluster of credible reports stating that Russia and Ukraine confirmed a May 9-May 11 ceasefire and prisoner swap, with language about suspension of kinetic activity.  They treated violation reports as later compliance evidence that did not negate a publicly announced mutual agreement.

The `not_demonstrated` votes gave more weight to direct official scope and implementation evidence.  Those jurors read the Ukrainian decree as limited to Red Square targeting during a parade, and they read Russian official framing as tied to a prisoner exchange.  ISW and related reports of continued theater-wide operations then supported the view that the arrangement was limited and did not constitute a general pause in the conflict.

The process record contained council-member failures in each run, but the disagreement was substantive rather than only procedural.  Run 01 resolved Yes because three seated jurors credited the credible-reporting consensus, while runs 02 and 03 resolved No after jurors shifted toward direct-source and implementation limits.  The final record therefore shows an unstable adjudicative result driven by how jurors weighed broad secondary reporting against narrow official materials and battlefield-monitoring evidence.
