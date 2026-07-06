# ex13 Summary

## Proposition and Clarifying Rules

> By June 15, 2025 11:59 PM ET, Iran and the United States agreed to a permanent peace deal.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex13/complaint.md) and [rules.txt](../../../../../../adjudication/arb/examples/ex13/rules.txt).  Each run admitted `rules.txt` as the governing rule evidence.

The rule required a permanent peace deal between Iran and the United States by June 15, 2025 at 11:59 PM ET.  A qualifying deal had to state that U.S.-Iran military hostilities had ended, would permanently cease, or equivalent language establishing a lasting end to those hostilities.  Proof required either a written agreement signed or formally adopted by both governments, or clear public confirmation from both governments that a qualifying agreement had definitively been established.  Temporary arrangements, negotiations, progress statements, and statements short of a definitive bilateral announcement did not qualify.

## Resolution Summary

All three `ex13` runs resolved `not_demonstrated`, matching the batch [ledger](../ledger.csv).  Each run had one failed council member and four submitted votes; all twelve submitted votes were for `not_demonstrated`.  The recurring reason was that the admitted record contained no signed or formally adopted U.S.-Iran agreement, no matched official public confirmations, and no permanent-cessation language by the June 15, 2025 deadline.

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
| [run 01](run-01/run.json) | `arb-ex13-20260630161149` | 2026-06-30T16:11:49Z | 2026-06-30T16:30:00Z | `not_demonstrated` | 4-0 for `not_demonstrated` | C1 failed with `agent_exited` |
| [run 02](run-02/run.json) | `arb-ex13-20260630163002` | 2026-06-30T16:30:02Z | 2026-06-30T16:48:56Z | `not_demonstrated` | 4-0 for `not_demonstrated` | C1 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex13-20260630164857` | 2026-06-30T16:48:57Z | 2026-06-30T17:07:20Z | `not_demonstrated` | 4-0 for `not_demonstrated` | C3 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| `rules.txt` | Case packet in all runs | The rule defined the proposition, the qualifying agreement, the two proof paths, and the source hierarchy.  Official information from the governments of the United States and Iran carried primary weight, while a consensus of credible reporting could also be used. |
| White House June 17, 2025 release and February 2026 Iran fact sheet | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-3995e3026bac.txt), [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-edd3f8c6cfec.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-d6ef8a8fd4dc.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-75f22524b70e.txt); defendant in [run 02](run-02/submitted-evidence/submitted-evidence-06-defendant-66cd7f8ab87c.txt) | The June 17 release emphasized U.S. demands that Iran lack a nuclear weapon and included conditional peace language, not confirmation of a permanent peace agreement.  The February 2026 fact sheet later said Iran refused to reach a deal with the United States in June, which the parties treated as adverse to the proposition. |
| U.S. crisis and pressure materials | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-05-defendant-b7f9e7eb94d2.txt); plaintiff in [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-ec1077ef26bb.txt) | The White House/Rubio June 12 statement showed U.S. crisis posture before the deadline, warning Iran not to target U.S. interests after Israeli action.  The NSPM-2 maximum-pressure policy supplied official U.S. context of pressure and sanctions, not peace confirmation. |
| Iranian official and state materials | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-04-plaintiff-66ee704c07ba.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-ad54253d5a07.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-20710444fe69.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-7f6e26b31ff3.txt); defendant in [run 02](run-02/submitted-evidence/submitted-evidence-05-defendant-ba131554a9d3.txt) | IRNA reported conditional prospects for an agreement if enrichment and sanctions conditions were satisfied, and later uncertainty over attending the next round of talks.  The Iranian president's June 14 statement described U.S. insincerity and ongoing aggression.  The Iranian MFA later described the June 15 meeting as a planned effort to craft an agreement, not a completed agreement.  The Iranian UN Vienna statement described U.S. military action as aggression. |
| Reporting on cancelled or withdrawn June 15 talks | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-657615bff982.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-e3dbc948dd66.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-0606fd0d81a7.txt); defendant in [run 01](run-01/submitted-evidence/submitted-evidence-06-defendant-4bcb4eadc014.txt) | Reuters/Straits Times, Al Jazeera, and Times of Oman reported cancelled, withdrawn, or meaningless U.S.-Iran nuclear talks near June 15.  The record used these reports as corroboration that the diplomatic track remained unresolved at the deadline. |

The plaintiff's filings in each run acknowledged the missing proof path after source searches.  The plaintiff searched official U.S., Iranian, mediator, and credible-reporting sources for a signed or adopted instrument, matched government confirmations, or permanent-cessation language by the deadline.  The admitted sources did not supply those materials, and the plaintiff either asked for or accepted `not_demonstrated`.

The defendant argued that the absence of qualifying proof was decisive and that the admitted evidence affirmatively undermined the proposition.  It emphasized official U.S. and Iranian materials showing crisis posture, pressure, distrust, conditions, refusal, or later hostilities.  It treated secondary reporting as corroboration that the June 15 talks were cancelled, withdrawn, or unfinished.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 01 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found no signed or formally adopted agreement, matched official confirmations, or permanent-cessation language.  The explanation emphasized cancelled talks, later hostilities, and ongoing crisis. |
| run 01 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found that the admitted evidence showed no formal agreement or bilateral official confirmation.  The explanation relied on cancelled talks, refusal to negotiate, and later hostilities. |
| run 01 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 found that the record lacked a signed agreement or matched public confirmations.  The explanation treated cancelled talks and military strikes as adverse. |
| run 01 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found no signed or formally adopted agreement and no matched confirmations by June 15.  The explanation emphasized cancelled talks and conflicting statements. |
| run 02 | C1 | Failed with `agent_exited`. | C1 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 02 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found negotiations, conditional possibilities, uncertainty, and cancellation of talks, but no qualifying formal agreement or bilateral confirmation. |
| run 02 | C3 | Seated.  Round 1: `not_demonstrated`. | C3 found no written agreement, formal adoption, or matched confirmations.  The explanation emphasized conditional negotiations, uncertainty, cancellation, and later refusal to reach a deal. |
| run 02 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 found no written agreement, no formal adoption, no matched official confirmations, and no definitive permanent peace deal by the deadline. |
| run 02 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found that later statements described prospective deal-making or refusal rather than completion.  The explanation treated the rule's proof paths as unsatisfied. |
| run 03 | C1 | Seated.  Round 1: `not_demonstrated`. | C1 found no written agreement or official U.S. and Iranian confirmations by June 15.  The explanation emphasized negotiations, distrust, ongoing hostilities, and later refusal. |
| run 03 | C2 | Seated.  Round 1: `not_demonstrated`. | C2 found no signed agreement or bilateral public confirmation by the deadline.  The explanation treated official statements as showing ongoing conflict and no permanent commitment. |
| run 03 | C3 | Failed with `agent_exited`. | C3 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |
| run 03 | C4 | Seated.  Round 1: `not_demonstrated`. | C4 found no bilateral permanent peace agreement.  The explanation relied on Iranian distrust, nuclear conditions, and later refusal to reach a deal. |
| run 03 | C5 | Seated.  Round 1: `not_demonstrated`. | C5 found no bilateral permanent peace agreement and credited evidence of ongoing distrust, conflict, and refusal to reach a deal. |

## Juror Explanation Summary

The jurors applied the rule as an affirmative proof requirement.  They looked for a signed or formally adopted written agreement, or matching official public confirmations from both governments, before the June 15, 2025 deadline.  They found neither proof path in the admitted record.

The jurors gave no dispositive weight to evidence of diplomacy without a completed agreement.  They distinguished negotiations, scheduled talks, conditional statements, and desired peace from a bilateral commitment already established.  They treated cancelled or uncertain June 15 talks as evidence of an unfinished process.

Official source provenance weighed against the proposition.  U.S. materials showed crisis posture, nuclear demands, maximum pressure, or a later statement that Iran refused to reach a deal.  Iranian materials showed distrust, claims of aggression, ongoing conflict, or a later description of the June 15 meeting as a planned effort to craft an agreement.  Secondary reporting corroborated the same pattern: the relevant diplomatic track remained unsettled, cancelled, withdrawn, or suspended near the deadline.
