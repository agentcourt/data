# Local Direct Examples, Three Runs Each

## Scope

This run set contains 48 direct local AgentCourt arbitration runs.  It covers each `arb/examples/ex*` case that existed when the batch script enumerated the examples, with three runs per case.  Each run used a five-member council, a three-vote decision threshold, and the sampled council pool recorded in [the provenance note](provenance.md).

The retained output preserves the local AAR runner layout after removing transient process-id files and council member filesystems.  Each run directory contains the final run record, state snapshot, event stream, transcript, digest, work notes, admitted evidence, council-turn input and output files, and logs.  The run-set root also keeps [the ledger](ledger.csv), [the batch log](batch.log), and [the batch script](run-batch.sh) used for execution.

## Results

| Example | Runs | Demonstrated | Not demonstrated | No majority |
|---|---:|---:|---:|---:|
| `ex01` | 3 | 3 | 0 | 0 |
| `ex02` | 3 | 0 | 0 | 3 |
| `ex03` | 3 | 1 | 1 | 1 |
| `ex03a` | 3 | 0 | 3 | 0 |
| `ex04` | 3 | 3 | 0 | 0 |
| `ex05` | 3 | 0 | 1 | 2 |
| `ex06` | 3 | 0 | 2 | 1 |
| `ex07` | 3 | 1 | 2 | 0 |
| `ex08` | 3 | 2 | 1 | 0 |
| `ex08a` | 3 | 3 | 0 | 0 |
| `ex09` | 3 | 0 | 3 | 0 |
| `ex10` | 3 | 3 | 0 | 0 |
| `ex11` | 3 | 2 | 0 | 1 |
| `ex11a` | 3 | 3 | 0 | 0 |
| `ex12` | 3 | 3 | 0 | 0 |
| `ex13` | 3 | 0 | 3 | 0 |
| **Total** | **48** | **24** | **16** | **8** |

## Integrity

Each run directory has a local `SHA256SUMS` file.  The repository root has the dataset manifest and top-level checksum file.  Run `tools/verify.sh` from the repository root to check file integrity and compare manifest fields with each run’s `run.json`.

