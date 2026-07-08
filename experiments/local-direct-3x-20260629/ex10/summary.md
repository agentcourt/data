# ex10 Summary

## Proposition and Clarifying Rules

> Before January 1, 2027 at 00:00 PST, Polymarket launched an official fungible token: a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels, excluding NFT launches, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities.

The governing evidence standard was preponderance of the evidence.  The case packet contains the [proposition](../../../../../../adjudication/arb/examples/ex10/complaint.md), [market page record](../../../../../../adjudication/arb/examples/ex10/market-page.txt), [official source record](../../../../../../adjudication/arb/examples/ex10/official-source-record.txt), [primary evidence summary](../../../../../../adjudication/arb/examples/ex10/primary-evidence.txt), [secondary reporting summary](../../../../../../adjudication/arb/examples/ex10/secondary-reporting.txt), [unresolved record gaps](../../../../../../adjudication/arb/examples/ex10/unresolved-record-gaps.txt), and [situation statement](../../../../../../adjudication/arb/examples/ex10/situation.md).  The example [README](../../../../../../adjudication/arb/examples/ex10/README.md) describes a Polymarket official-token condition tested with an intentionally thin initial packet.

The preserved rule required proof of a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels before January 1, 2027 at 00:00 PST.  It excluded NFT launches, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities.  The packet identified pUSD as the central factual candidate and flagged the main interpretive issue: pUSD evidence could prove a Polymarket-controlled ERC-20 collateral-token rollout while leaving a dispute about whether that rollout counted as an official token launch.

## Resolution Summary

All three `ex10` runs resolved `demonstrated`, matching the batch [ledger](../ledger.csv).  The final submitted votes were 5-0, 3-0, and 4-0 for `demonstrated`; run 2 had two failed members, and run 3 had one failed member.  The recurring reason was that official Polymarket documentation and Help Center material described pUSD as a standard ERC-20 token, tied it to Polymarket, and placed its public rollout in April 2026, while the rule did not list collateral tokens among the exclusions.

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
| [run 01](run-01/run.json) | `arb-ex10-20260630073904` | 2026-06-30T07:39:04Z | 2026-06-30T08:01:24Z | `demonstrated` | 5-0 for `demonstrated` | None |
| [run 02](run-02/run.json) | `arb-ex10-20260630080125` | 2026-06-30T08:01:25Z | 2026-06-30T10:33:49Z | `demonstrated` | 3-0 for `demonstrated` | C1 failed with `deadline_expired`; C5 failed with `agent_exited` |
| [run 03](run-03/run.json) | `arb-ex10-20260630103350` | 2026-06-30T10:33:50Z | 2026-06-30T12:37:36Z | `demonstrated` | 4-0 for `demonstrated` | C5 failed with `agent_exited` |

The ledger reports all three runs as `ok`, with cleanup completed and return code `rc=0`.  The structured run records agree with the ledger on case IDs, timestamps, final status, and final resolution.  No artifact conflict appeared in those fields.

## Evidence and Arguments

| Source | Runs and submitting side | Use in the record |
|---|---|---|
| Case-packet market and source records | Case packet in all runs | The packet supplied the rule text, absence of a market URL or market identifier, official Polymarket pUSD documentation preserved after an earlier open-record run, and known gaps about archives, server-dated headers, and page histories.  It also identified the central dispute over whether pUSD counted as an official token launch rather than collateral infrastructure. |
| Official Polymarket pUSD concept pages | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-01-plaintiff-916b2f4e8c95.txt), [run 02](run-02/submitted-evidence/submitted-evidence-01-plaintiff-f34b5612c619.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-01-plaintiff-b5b4cf7d908f.txt) | The pages described pUSD, Polymarket USD, as the collateral token used for all trading on Polymarket, a standard ERC-20 token on Polygon, backed by USDC, transferable, and denominated with six decimals.  Defendants used the same pages to argue that pUSD was a technical settlement layer and collateral wrapper. |
| Official Polymarket contracts, changelog, and migration pages | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-02-plaintiff-2416b58d16e6.txt), [run 01](run-01/submitted-evidence/submitted-evidence-03-plaintiff-95ea1f1f0980.txt), [run 01](run-01/submitted-evidence/submitted-evidence-04-plaintiff-48196fa8b9eb.txt), [run 02](run-02/submitted-evidence/submitted-evidence-02-plaintiff-eb5be3872a12.txt), [run 02](run-02/submitted-evidence/submitted-evidence-03-plaintiff-04730ea1807f.txt), [run 02](run-02/submitted-evidence/submitted-evidence-04-plaintiff-0979024ce767.txt), [run 03](run-03/submitted-evidence/submitted-evidence-02-plaintiff-838f5b652691.txt), [run 03](run-03/submitted-evidence/submitted-evidence-03-plaintiff-9afebe9fe2ad.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-04-plaintiff-698e8127dde8.txt) | The contracts page listed pUSD as a Polymarket CollateralToken proxy at `0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB`.  The changelog and migration guide described a CLOB V2 upgrade with new exchange contracts, a rewritten backend, and a new collateral token, pUSD, live on April 28, 2026. |
| Official Polymarket Help Center pages | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-05-plaintiff-4a80d921eea2.txt), [run 01](run-01/submitted-evidence/submitted-evidence-06-plaintiff-c11c331daf8c.txt), and [run 03](run-03/submitted-evidence/submitted-evidence-06-plaintiff-b3b269de98e4.txt); defendant in [run 02](run-02/submitted-evidence/submitted-evidence-05-defendant-57084a7a538c.txt) | The exchange-upgrade article described the April 28, 2026 rollout, user balance conversion, and pUSD as a standard ERC-20 backed 1:1 by USDC.  The FAQ said all trading and liquidity rewards were in pUSD, Polymarket's official collateral token, while also saying Polymarket had not announced any airdrop or token generation event.  Plaintiffs treated that as a limitation that did not defeat the rule; defendants treated it as evidence that pUSD differed from the expected public token launch. |
| Polygonscan pUSD address records | Plaintiff in [run 01](run-01/submitted-evidence/submitted-evidence-07-plaintiff-a30057276eda.txt) and [run 03](run-03/submitted-evidence/submitted-evidence-05-plaintiff-e447a6447df7.txt) | Polygonscan identified the same address listed on Polymarket's contracts page as Polymarket: pUSD Token.  The record treated this as corroboration of the public on-chain address and token metadata, with official Polymarket documents carrying more weight for attribution. |
| Contextual token-launch sources | Defendant in [run 01](run-01/submitted-evidence/submitted-evidence-08-defendant-6a1799ab5d17.txt) and [run 03](run-03/submitted-evidence/submitted-evidence-07-defendant-2b6994532a43.txt) | Run 1 used a non-governing Manifold market to show similar wording that excluded stablecoins and utility tokens unless promoted as Polymarket's official token.  Run 3 used a CoinDesk article about a reported future token and airdrop after a U.S. relaunch to argue that ordinary token-launch language meant something different from pUSD collateral infrastructure. |

The plaintiff argued that pUSD satisfied each affirmative element: it was an ERC-20 token, Polymarket documentation and Help Center pages attributed it to Polymarket, official pages publicly communicated the rollout, and April 2026 preceded the January 1, 2027 deadline.  The plaintiff also argued that the stated exclusions did not cover collateral tokens, stable-value tokens, exchange-listing status, governance rights, airdrops, or token-generation events.  It treated the Help Center FAQ's warning about no airdrop or token generation event as a limit on a different claim, rather than as a bar to pUSD qualifying.

The defendant argued that the record proved a narrower fact: Polymarket introduced pUSD as collateral infrastructure for CLOB V2.  It emphasized official wording that called pUSD a collateral token, a USDC-backed wrapper, and a technical settlement layer.  It also emphasized missing market materials, including the original market URL, market identifier, API capture, source hierarchy, immutable archive captures, server-dated headers, and page-change histories.

## Deliberation Results

| Run | Member | Status and votes | Explanation summary |
|---|---|---|---|
| run 01 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that pUSD was a fungible ERC-20 token, officially released and communicated by Polymarket before the deadline.  The explanation treated collateral use as outside the listed exclusions. |
| run 01 | C2 | Seated.  Round 1: `demonstrated`. | C2 relied on official documentation and Help Center evidence showing an April 2026 release.  The explanation stated that pUSD fit none of the stated exclusions. |
| run 01 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that official Polymarket channels proved the launch of pUSD before the deadline.  The explanation applied the proposition's supplied definition. |
| run 01 | C4 | Seated.  Round 1: `demonstrated`. | C4 relied on Polymarket documentation, the changelog, and the Help Center.  The explanation stated that pUSD was fungible, official, timely, and outside the exclusions. |
| run 01 | C5 | Seated.  Round 1: `demonstrated`. | C5 found the admitted record sufficient under the preponderance standard.  The explanation emphasized pUSD's official release, public communication, and ERC-20 status. |
| run 02 | C1 | Failed with `deadline_expired`. | C1 submitted no vote.  The failure did not prevent a run-level resolution. |
| run 02 | C2 | Seated.  Round 1: `demonstrated`. | C2 found that official Polymarket documentation consistently identified pUSD as Polymarket USD and a new collateral token.  The explanation noted that the rule's exclusions did not include pUSD's collateral use. |
| run 02 | C3 | Seated.  Round 1: `demonstrated`. | C3 relied on the changelog, migration guide, contracts page, and Help Center to find an April 28, 2026 official rollout.  The explanation rejected the collateral-infrastructure distinction as unsupported by the rule text. |
| run 02 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that Polymarket publicly announced and deployed pUSD as official collateral before the deadline.  The explanation treated standard ERC-20 status as enough for fungibility. |
| run 02 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure reduced the run to three voting members, all of whom voted the same way. |
| run 03 | C1 | Seated.  Round 1: `demonstrated`. | C1 found that pUSD was documented as Polymarket's official collateral token and deployed in production on April 28, 2026.  The explanation rejected the infrastructure argument because the rule did not exclude official platform tokens used in core trading systems. |
| run 03 | C2 | Seated.  Round 1: `demonstrated`. | C2 relied on official Polymarket contracts, Help Center, changelog, and migration-guide materials.  The explanation found that pUSD was not an NFT, promotional offering, point system, or collaboration token. |
| run 03 | C3 | Seated.  Round 1: `demonstrated`. | C3 found that the official record proved pUSD's public documentation and production deployment.  The explanation stated that the proposition did not require a governance token, airdrop, or token generation event. |
| run 03 | C4 | Seated.  Round 1: `demonstrated`. | C4 found that Polymarket launched pUSD as an official ERC-20 used for all trading.  The explanation relied on official documentation and Help Center material. |
| run 03 | C5 | Failed with `agent_exited`. | C5 submitted no vote.  The failure did not prevent a unanimous vote among seated members. |

## Juror Explanation Summary

The council's recurring reasoning applied the rule's functional definition to pUSD.  Jurors credited official Polymarket documentation describing pUSD as a standard ERC-20 token on Polygon, the contracts page listing the pUSD proxy address, and April 2026 changelog and migration materials that publicly described the CLOB V2 rollout.  They treated the Help Center FAQ as confirming official collateral-token status and denying an airdrop or token generation event; they did not treat that denial as disqualifying pUSD under this rule.

The demonstrated votes gave little weight to the defense's proposed distinction between collateral infrastructure and an official token launch.  Jurors acknowledged pUSD's collateral role but found no stated rule exclusion for collateral tokens, stable-value tokens, USDC-backed wrappers, or platform settlement tokens.  They also found that the listed exclusions did not fit pUSD.

The record gaps remained part of the reasoning, but they did not change the result in these runs.  The summaries and technical reports preserved the absence of the original market URL, market identifier, market API capture, archive captures, server-dated headers, and page-change histories.  Jurors still found the official Polymarket documentation, Help Center pages, and corroborating Polygonscan evidence sufficient under the preponderance standard.
