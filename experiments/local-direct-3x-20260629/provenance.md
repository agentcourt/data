# Provenance

## Source

The experiment was copied from `/media/hd2/src/arbattest/adjudication/arb/out/local-direct-three-per-ex-only-20260629`.  The batch started on June 29, 2026, and finished on June 30, 2026.  The adjudication repository `HEAD` at publication time was `6a71658d0e1f7ff088a65721a3197c52a9f245c0`, and the working tree contained uncommitted adjudication changes during the batch.

The council pool file used by the batch was `/media/hd2/src/arbattest/adjudication/arb/pool.jsonl`.  Its SHA-256 hash at publication time was `ae3a3094cffd9561e6b25396d24588f7270e16b6f0a13ef1140514bca4a4971c`.  Each run’s selected council and model request specifications are retained in that run’s `council.json`.

## Execution

The batch script ran `.bin/aar run` once for each example and attempt.  It passed `--openclaw-auth codex`, `--openclaw-network host`, and `--council-pool "$pool"`.  It removed `pi-C*` council filesystems after each run and recorded cleanup status in [the ledger](ledger.csv).

Each case used the policy recorded in the run’s `policy.json` and `run.json`.  The examples batch used a five-member council, a three-vote decision threshold, three maximum deliberation rounds, and a preponderance evidence standard.  The batch retained run outputs, evidence, council-turn files, work notes, transcripts, digests, and logs.

## Publication Filter

The import excluded `*.pid` files.  A scan found no `auth.json` files, no OpenClaw Codex homes, and no retained Pi or npm working trees in the copied experiment.  The retained `run-batch.sh` contains the local command shape, including a reference to `$HOME/.codex/auth.json`, but it contains no token value.

`ex08a/run-02` has `notes` value `rc=1` in [the ledger](ledger.csv), while its `run.json` records `status: ok`, `phase: closed`, and `resolution: demonstrated`.  The recorded cause was a local runner race after the case had already closed: an agent exit arrived before the completed case outcome won the runner’s select.  The source runner was edited after that run to wait briefly for the closed-case result before treating a post-completion agent exit as fatal, and the remaining runs used the rebuilt runner.
