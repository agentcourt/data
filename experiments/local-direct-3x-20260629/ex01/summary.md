# ex01 Summary

## Proposition and Clarifying Rules

> The proposition is that Samantha materially misrepresented when the essay would be complete, and that the claimant reasonably relied on that representation.

The evidence standard was preponderance of the evidence.  The case packet stated the proposition in the run [complaints](run-01/complaint.md), and the source example contains the same text in the [complaint](../../../../../../adjudication/arb/examples/ex01/complaint.md) and [situation](../../../../../../adjudication/arb/examples/ex01/situation.md) files.  The record contains no separate case-packet rule file or source hierarchy document for this dispute.

The proposition required proof of a material completion-timing misrepresentation and reasonable reliance by the claimant.  The parties treated the deadline messages, print approval note, assignment instructions, and Samantha confession as the main proof on representation, falsity, and reliance.  The parties treated the invoice, distribution work order, damages breakdown, session summary, and time log as context for materiality, business consequence, and record gaps.

## Resolution Summary

All three runs resolved the proposition as `demonstrated`.  The submitted council votes were 11-1 for `demonstrated` across the three runs, with one `not_demonstrated` vote in run 01.  The prevailing rationale was that Samantha's deadline assurance was materially misleading because it depended on a false claim that she had already done the required reading, while Peter asked about the deadline before keeping or approving the rush print plan.

## Procedure

Agent Arbitration runs a structured adversarial record before a voting council.  In these runs, the parties filed openings, submitted exhibits and technical reports, argued the admitted record, and made closing submissions.  A five-member council then voted under the preponderance standard, with three submitted votes required for a decision.

This summary uses the run artifacts as the record and does not independently verify external facts or private-source assertions.  It cross-checks each run against the batch [ledger](../ledger.csv), which reports `status=ok`, the same `demonstrated` resolution, cleanup success, and `rc=0` for all three ex01 runs.  It uses these artifacts:

- Run records: [Run 01](run-01/run.json), [Run 02](run-02/run.json), and [Run 03](run-03/run.json).
- Digests: [Run 01 digest](run-01/digest.md), [Run 02 digest](run-02/digest.md), and [Run 03 digest](run-03/digest.md).
- Evidence manifests: [Run 01 manifest](run-01/evidence-manifest.json), [Run 02 manifest](run-02/evidence-manifest.json), and [Run 03 manifest](run-03/evidence-manifest.json).
- Full transcripts: [Run 01 transcript](run-01/transcript.md), [Run 02 transcript](run-02/transcript.md), and [Run 03 transcript](run-03/transcript.md).

## Results

Each run closed in round 1 with enough submitted votes for a decision.  Run 01 had a 3-1 vote for `demonstrated`; runs 02 and 03 each had four submitted votes for `demonstrated`.  One council member failed before voting in each run, but no run failed as a process matter.

| Run | Case ID | Started UTC | Finished UTC | Resolution | Submitted vote tally | Non-voting member |
| --- | --- | --- | --- | --- | --- | --- |
| [Run 01](run-01/run.json) | `arb-ex01-20260629165458` | 2026-06-29 16:54:58 | 2026-06-29 17:26:55 | `demonstrated` | 3-1 for `demonstrated` | C5 failed before vote |
| [Run 02](run-02/run.json) | `arb-ex01-20260629172656` | 2026-06-29 17:26:56 | 2026-06-29 17:53:40 | `demonstrated` | 4-0 for `demonstrated` | C3 failed before vote |
| [Run 03](run-03/run.json) | `arb-ex01-20260629175341` | 2026-06-29 17:53:41 | 2026-06-29 18:14:34 | `demonstrated` | 4-0 for `demonstrated` | C4 failed before vote |

## Evidence and Arguments

All three runs admitted the same case-packet evidence.  The plaintiff argued that Samantha answered Peter's deadline-dependent go/no-go question while falsely implying that she had completed the foundational reading required for the assignment.  The defense argued that the record proved a preparation misrepresentation but left unresolved whether the package was late, whether Samantha knew the deadline could not be met, and whether Peter's reliance was reasonable in a commercial print setting.

| Evidence source | Runs and submitting side | Use in the record |
| --- | --- | --- |
| [Deadline message thread](../../../../../../adjudication/arb/examples/ex01/deadline-message-thread.txt) | All runs, case packet | Supplied the March 10 and March 11 deadline assurances and Peter's statement that he would keep the rush print and distribution plan in place based on Samantha's timing representation. |
| [Print approval note](../../../../../../adjudication/arb/examples/ex01/print-approval-note.txt) | All runs, case packet | Corroborated Peter's contemporaneous account that he approved the rush setup because Samantha confirmed the package would be complete for the evening handoff. |
| [Assignment instructions](../../../../../../adjudication/arb/examples/ex01/instructions.txt) | All runs, case packet | Defined the required reading and source-grounded work that plaintiff used to connect Samantha's preparation statement to the completion-timing assurance. |
| [Samantha confession](../../../../../../adjudication/arb/examples/ex01/confession.txt), [signature](../../../../../../adjudication/arb/examples/ex01/confession.sig.b64), and [public key](../../../../../../adjudication/arb/examples/ex01/samantha_public.pem) | All runs, case packet | Supplied the admission that Samantha had not read the full essay before the first draft and had implied otherwise; signature-related reports in runs 01 and 03 supported authenticity. |
| [Printing invoice](../../../../../../adjudication/arb/examples/ex01/printing-invoice.txt) and [distribution work order](../../../../../../adjudication/arb/examples/ex01/distribution-work-order.txt) | All runs, case packet | Supplied the commercial setting for materiality, including the rush print and distribution commitments tied to the claimed reliance. |
| [Damages breakdown](../../../../../../adjudication/arb/examples/ex01/damages-breakdown.txt) and [time-and-token log](../../../../../../adjudication/arb/examples/ex01/time-and-token-log.txt) | All runs, case packet | Appeared in the packet but did not drive the council's merits reasoning, which focused on misrepresentation and reliance rather than final damages. |
| [Session summary](../../../../../../adjudication/arb/examples/ex01/session-summary.txt) | All runs, case packet | Provided context about drafting and revision work; the defense used it to argue that the record did not prove Samantha had no present work basis for the deadline assurance. |
| Technical reports in [run 01](run-01/run.json), [run 02](run-02/run.json), and [run 03](run-03/run.json) | Run-specific party reports | Run 01 and run 03 included plaintiff signature-verification reports.  Run 01 and run 02 included defense source-gap reports stating that public searches or record review did not locate fuller communications, delivery records, cancellation terms, draft timestamps, or other private transactional materials. |

## Deliberation Results

The deliberations turned on whether the false reading claim made the deadline assurance materially misleading.  Most council members treated the false present foundation for Samantha's timing assurance as enough to prove the proposition by a preponderance.  The only dissenting vote required a stronger record on timing falsity, knowledge, or missed handoff.

| Run | Member | Result | Explanation summary |
| --- | --- | --- | --- |
| [Run 01](run-01/run.json) | C1 | `demonstrated` | Treated the failure to read the Stephenson essay as making Samantha's deadline assurance false or misleading, and treated Peter's print and distribution commitments as reasonable reliance. |
| [Run 01](run-01/run.json) | C2 | `demonstrated` | Found a specific deadline assurance, a false statement about required reading, and reliance on that assurance to keep the rush print slot. |
| [Run 01](run-01/run.json) | C3 | `not_demonstrated` | Accepted that Samantha misrepresented her preparation but found no proof that she knew the package could not be completed by the deadline or that it missed the handoff. |
| [Run 01](run-01/run.json) | C4 | `demonstrated` | Found the completion-timing assurance materially misleading because it was paired with a false claim about foundational reading, and found reliance reasonable after Peter made the consequences clear. |
| [Run 01](run-01/run.json) | C5 | Failed before vote | The member process exited before completing deliberation. |
| [Run 02](run-02/run.json) | C1 | `demonstrated` | Treated the completion assurance as materially misleading because Samantha bundled it with a false claim of having read Stephenson. |
| [Run 02](run-02/run.json) | C2 | `demonstrated` | Found that Samantha misrepresented the state of work that made her timeline assurance credible, and that Peter reasonably relied after explicit disclosure and reconfirmation. |
| [Run 02](run-02/run.json) | C3 | Failed before vote | The member process exited before completing deliberation. |
| [Run 02](run-02/run.json) | C4 | `demonstrated` | Found the assurance false when made because it rested on a false reading claim, and found reliance in the rush print and distribution commitments. |
| [Run 02](run-02/run.json) | C5 | `demonstrated` | Found the admitted record sufficient on material misrepresentation and reasonable reliance, with significant damages context. |
| [Run 03](run-03/run.json) | C1 | `demonstrated` | Treated the false prerequisite-work premise as making the completion assurance materially misleading and tied reliance to rush printing. |
| [Run 03](run-03/run.json) | C2 | `demonstrated` | Found the authenticated confession, deadline messages, assignment terms, and print approval note sufficient to prove a misleading timing assurance and reasonable reliance. |
| [Run 03](run-03/run.json) | C3 | `demonstrated` | Found that the authenticated confession undercut Samantha's completion timeline and that Peter reasonably relied after warnings and confirmations. |
| [Run 03](run-03/run.json) | C4 | Failed before vote | The member process exited before completing deliberation. |
| [Run 03](run-03/run.json) | C5 | `demonstrated` | Found that the false reading premise made the completion-timing assurance materially misleading and that Peter reasonably relied before approving an $85,000 print run. |

## Juror Explanation Summary

The demonstrated votes shared a common structure.  They treated Samantha's statement that she had read the required essay as part of the same assurance that the finished package would be ready by the handoff deadline.  Because the confession showed that this present-tense foundation was false, those jurors found the completion assurance materially misleading when Peter relied on it.

The jurors who found the proposition demonstrated gave weight to Peter's sequence of questions before committing to rush printing.  They emphasized that Peter identified the business consequence, received Samantha's assurance, checked again before approving the invoice, and then acted on that assurance.  They treated the invoice and distribution work order as evidence that the reliance was material, while keeping the main decision on misrepresentation and reliance rather than final damages.

The dissent in run 01 framed the missing evidence differently.  That juror required proof that Samantha knew she could not meet the deadline or that the package missed the promised handoff.  The defense reports in the run record identified similar gaps, including missing full communications, delivery records, draft timestamps, and cancellation terms, but the majority did not require those records to find a misleading timing representation by a preponderance.
