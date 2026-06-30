# Arbitration Transcript

## Complaint

### Proposition

Before January 1, 2027 at 00:00 PST, Polymarket launched an official fungible token: a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels, excluding NFT launches, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities.

### Standard of Evidence

Preponderance of the evidence.

## Council

- C1: openrouter://qwen/qwen3-coder-plus (personas/generic.md)
- C2: openrouter://qwen/qwen3.5-plus-02-15 (personas/generic.md)
- C3: openrouter://qwen/qwen3-30b-a3b-instruct-2507 (personas/generic.md)
- C4: openrouter://nvidia/nemotron-3-super-120b-a12b (personas/generic.md)
- C5: openrouter://deepseek/deepseek-v3.1-terminus (personas/generic.md)
## Proceeding

### Openings

#### Plaintiff Opening

Council members, this case turns on a narrow but important distinction: whether Polymarket's pUSD was an official fungible token launch, or merely an internal collateral mechanism that should be treated outside the market's resolution language.

The plaintiff's theory is straightforward. The condition asks whether, before January 1, 2027 at 00:00 PST, Polymarket launched an official fungible token, publicly communicated through official Polymarket channels. It then excludes specific categories: NFTs, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities. It does not exclude a collateral token, a stable-value token, a settlement token, or a token introduced as part of an exchange upgrade.

The existing case packet already identifies the factual core. The primary-evidence file reports official Polymarket materials describing pUSD, Polymarket USD, as the collateral token used for all trading on Polymarket, a standard ERC-20 token on Polygon, backed by USDC, transferable, and using 6 decimals. The official contracts material described in the packet identifies pUSD as a Polymarket collateral token contract on Polygon. The changelog and V2 migration materials described in the packet tie that token to a coordinated upgrade and production go-live in April 2026, well before the deadline. If those official-source captures are credited, each affirmative element is met: fungible ERC-20 token, released by Polymarket, publicly communicated through Polymarket's own docs, before January 1, 2027.

The strongest defense is not that pUSD is non-fungible, a points system, or a collaboration token. On this record, it is none of those. The likely defense is semantic: pUSD was a technical collateral wrapper for CLOB V2, not the governance or airdrop-style token some traders might have expected when asking whether Polymarket had a token. That argument deserves to be confronted directly, but it should not rewrite the condition. The proposition uses a functional definition supplied for this arbitration, and that definition does not require a governance token, exchange listing, speculative token generation event, or airdrop. A transferable ERC-20 officially introduced by Polymarket as Polymarket USD can satisfy the condition even if it is designed to keep platform balances stable and to settle trading rather than to confer governance rights.

There are real provenance issues the plaintiff will need to firm up in later phases. The packet acknowledges that the official Polymarket documentation captures were preserved after an earlier open-record run, not as pre-run market-page or API captures. It also notes missing server-dated headers, immutable archives, exact page-publication history, and the original market URL or identifier. Those gaps affect weight and source-chain confidence; they do not erase the admitted case-packet facts. They tell the council what later evidence should target: full official docs and help-center captures, the Polymarket contracts page, the on-chain contract record for the identified pUSD address, and if available, dated archives or public official announcements showing the timing of the April 2026 rollout.

So the real dispute is definitional and evidentiary, not speculative. If later evidence confirms what the case packet already points to, the plaintiff will ask the council to find that pUSD was an official Polymarket fungible token launch before the deadline. To defeat that showing, the defense must do more than label pUSD 'collateral.' It must show either that the token was not actually official, not publicly communicated through Polymarket's official channels, not fungible, not launched before the deadline, or that it falls within one of the condition's stated exclusions. On the current record, the plaintiff expects the evidence to favor resolution in favor of the proposition.

#### Defendant Opening

Council members, the defense opening is simple: the plaintiff has a plausible lead, not yet a carried burden.

The proposition is not whether Polymarket uses blockchain tokens somewhere in its trading system. It asks whether, before January 1, 2027 at 00:00 PST, Polymarket launched an official fungible token, publicly communicated through official Polymarket channels, with several categories excluded. The plaintiff must prove that the thing identified in the packet fits that resolution condition, not merely that it is an ERC-20 contract connected to Polymarket infrastructure.

The present record points to pUSD. The case-packet summaries say official Polymarket materials described pUSD, Polymarket USD, as a collateral token for trading, a standard ERC-20 on Polygon, backed by USDC, transferable, and using 6 decimals. They also say a Polymarket contracts page listed a pUSD CollateralToken proxy address, and that changelog or migration materials associated pUSD with an April 2026 CLOB V2 upgrade. We do not need to pretend those facts are irrelevant. If fully authenticated and placed in context, they may show an official technical collateral asset used by Polymarket.

But that is not the end of the question. The packet itself identifies the central defense problem: a later adjudicator could distinguish an “official token launch” from a “technical collateral token introduced as part of CLOB V2.” That distinction matters. A collateral wrapper or settlement asset can be fungible and official without being the kind of official token launch this proposition is asking about. The current packet repeatedly frames pUSD as collateral for trading and part of an exchange-stack upgrade. It does not yet show that Polymarket publicly launched pUSD as its official platform token, governance token, airdrop token, community token, or broadly understood token-generation event. Nor does the condition text say that every platform ERC-20 used internally as collateral automatically resolves the proposition yes.

There is also a serious source-chain problem at the opening stage. The market-page packet preserves the condition text but says no real Polymarket market URL or market identifier was provided and no broader factual research was included. The unresolved-gaps file says the record lacks a pre-run official market-page or API capture for the prediction-market question itself. The official-source record says the Polymarket documentation pages were preserved after an earlier open-record run based on attorney-discovered evidence, and it flags missing server-dated headers, immutable archive captures, and exact page publication or change histories. The secondary-reporting file says no secondary reporting has been captured yet. Those are not minor formalities; they affect whether the council can confidently connect current or post-run documentation to the market’s intended resolution and to the relevant time.

So the defense will focus on three factual questions in the next phases. First, what did the original market rules and source hierarchy actually require by “official token”? Without the market URL, identifier, or API capture, the council lacks important context. Second, what exactly did Polymarket publish, when did it publish it, and can that be verified by full official pages, archives, headers, or change history rather than summaries? Third, even if pUSD is proven to be official collateral infrastructure, does that satisfy the launch condition or does it fall outside the ordinary meaning of an official token launch?

The plaintiff’s burden is preponderance. It is not enough to point to an ERC-20 and then ask the council to treat operational collateral as the answer by default. Later evidence may clarify the record, and if it does, the council should weigh it carefully. But on the opening record, the strongest defense is already visible: pUSD may prove a Polymarket-controlled collateral-token rollout, while the proposition still requires proof of an official fungible token launch. The plaintiff has to bridge that gap with reliable, dated, official evidence and with a persuasive interpretation of the resolution language.

### Arguments

#### Plaintiff Argument

Council members, the admitted record now answers the defendant's two concerns: pUSD is not merely an unexplained contract, and the plaintiff is not asking you to infer a launch from a search snippet. The plaintiff has submitted direct official Polymarket source extracts, plus corroborating on-chain explorer material.

The proposition has four affirmative elements and four exclusions. The affirmative elements are met by a preponderance.

First, pUSD is a fungible token. Polymarket's own pUSD documentation says Polymarket USD is a standard ERC-20 token on Polygon, backed by USDC, with 6 decimals and transferable as a standard ERC-20. The V2 migration guide and Help Center upgrade article repeat that pUSD is a standard ERC-20 on Polygon. ERC-20 status, decimal denomination, transferability, wrapping, and unwrapping are the ordinary markers of fungibility.

Second, it was official Polymarket source material, not third-party rumor. The evidence comes from Polymarket Documentation and Polymarket Help Center pages. The contracts page says it is the single source of truth for contract addresses used across the platform, and lists pUSD as a CollateralToken proxy at 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB. Polygonscan corroborates that same address as Polymarket: pUSD Token and Polymarket USD (pUSD), but the official attribution comes from Polymarket's own contracts page.

Third, Polymarket publicly communicated the launch through official channels before the deadline. The changelog records an April 17, 2026 entry saying Polymarket was shipping a coordinated upgrade with a new collateral token, pUSD, and that the upgrade would go live April 28, 2026. The same changelog records on April 28 that CLOB V2 was live on production and links the migration guide for pUSD changes. The migration guide says Polymarket had shipped a coordinated upgrade with a new collateral token, Polymarket USD or pUSD, and that CLOB V2 was live as of April 28, 2026. The Help Center article gives the user-facing version: on April 28 Polymarket was rolling out new smart contracts, a rewritten order book, and a new collateral token, with users approving conversion of balances to pUSD. April 2026 is well before January 1, 2027 at 00:00 PST.

Fourth, the exclusions do not apply. pUSD is not an NFT. It is not a promotional offering. It is not a tokenized point system. It is not a token launched in collaboration with another project or community. The defense's best phrase is 'collateral token,' but collateral token is not an exclusion in this market condition. The condition could have required a governance token, external exchange listing, airdrop, or token generation event. It did not. It asked for a fungible token officially released and publicly communicated by Polymarket.

The adverse FAQ actually strengthens the proper interpretation. Polymarket's Help Center page titled 'Does Polymarket Have a Token?' says all trading and liquidity rewards are in pUSD, Polymarket's official collateral token, while warning that Polymarket has not announced an airdrop or token generation event. That is a limiting fact, and the plaintiff accepts it. But it limits only a different claim: that Polymarket launched an airdrop/TGE-style speculative token. The proposition before this council is broader and functional. It asks whether an official fungible token was launched, and pUSD is expressly described by Polymarket as its official collateral token.

The remaining gaps affect weight, not the result. The record still lacks the original market URL/identifier and immutable archive captures. The new evidence is also extracted page text, not full raw HTML. But the case-packet market-page evidence preserves the operative condition, and the submitted official-source extracts directly prove the decisive event. The source chain is stronger than the opening record: official docs establish the token's mechanics and address; official changelog and migration materials establish timing and launch; official Help Center establishes public user communication; Polygonscan corroborates the contract's on-chain identity.

On this record, it is more likely than not that before the deadline Polymarket launched pUSD, an official fungible ERC-20 token, and publicly communicated that launch through official Polymarket channels. The council should resolve the proposition in the plaintiff's favor.

Exhibits offered:
- PX-1 Condition text and elements: market-page.txt
- PX-2 Official pUSD concept page: submitted-evidence-01-plaintiff-916b2f4e8c95.txt
- PX-3 Official contracts page pUSD address: submitted-evidence-02-plaintiff-2416b58d16e6.txt
- PX-4 Official changelog April 2026: submitted-evidence-03-plaintiff-95ea1f1f0980.txt
- PX-5 Official V2 migration guide: submitted-evidence-04-plaintiff-48196fa8b9eb.txt
- PX-6 Official Help Center exchange upgrade: submitted-evidence-05-plaintiff-4a80d921eea2.txt
- PX-7 Official FAQ on pUSD and no TGE: submitted-evidence-06-plaintiff-c11c331daf8c.txt
- PX-8 Polygonscan pUSD contract corroboration: submitted-evidence-07-plaintiff-a30057276eda.txt
- PX-9 Record gaps and limits: unresolved-record-gaps.txt

Technical reports:
- Plaintiff source-chain and adverse-check ledger
  At merits phase, plaintiff re-scanned the AAR record and then searched official Polymarket documentation/help sources and the pUSD contract address. Submitted admitted extracts from docs.polymarket.com/concepts/pusd, docs.polymarket.com/resources/contracts, docs.polymarket.com/changelog, docs.polymarket.com/v2-migration, help.polymarket.com exchange-upgrade article, help.polymarket.com 'Does Polymarket Have a Token?' FAQ, and Polygonscan for 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB. Adverse check found Polymarket's FAQ distinguishing pUSD from any airdrop or token generation event; plaintiff relies on that as a limitation, not as contrary proof, because the market condition does not require an airdrop/TGE. Remaining gaps: no original market URL/API capture, no immutable archive/server-header publication history, and submitted source captures are faithful text extracts rather than full raw HTML snapshots.

#### Defendant Argument

Council members, the plaintiff has now proved an important but narrower fact: pUSD is an official Polymarket collateral ERC-20 introduced with the CLOB V2 infrastructure migration. That still does not satisfy the proposition by a preponderance, because the proposition asks whether Polymarket launched an official fungible token, not whether it changed the collateral asset inside its trading stack.

Start with what the plaintiff's own evidence says. The pUSD concept page describes pUSD as the collateral token used for trading, a technical settlement layer underneath the same user experience, and an ERC-20 wrapper representing a USDC claim. It also says pUSD is designed to function within Polymarket and that there are no current plans to list it on external exchanges. The migration and exchange-upgrade evidence repeats the same operational framing: an exchange-stack upgrade, new contracts, rewritten CLOB backend, and a new collateral token replacing USDC.e. The Help Center says day to day, nothing changes; users approve conversion of balances to pUSD; pUSD is the technical layer underneath.

That is powerful evidence of collateral migration. It is weak evidence of an official token launch in the ordinary prediction-market sense. The plaintiff's theory makes the word "token" do all the work and ignores the surrounding phrase "launched an official token." A collateral wrapper used to settle trades can be fungible, official, and public, while still not being the official Polymarket token whose launch this condition asks about.

The most important admitted page is the plaintiff's own FAQ titled "Does Polymarket Have a Token?" It says trading and liquidity rewards are in pUSD, Polymarket's official collateral token. But in the same answer it warns that Polymarket has not announced plans for any airdrop or token generation event, and directs users to official channels for announcements. That is not an incidental caveat. It shows Polymarket itself distinguishes pUSD collateral from the broader token-launch/TGE claim people mean when they ask whether Polymarket has a token. The plaintiff asks the council to collapse that distinction. The record gives a better answer: pUSD is the official collateral token, but not the official token launch contemplated by the proposition.

The condition's exclusions do not rescue plaintiff. True, it does not expressly say "collateral tokens do not count." But it also does not say every ERC-20 smart-contract wrapper used by the platform counts. Interpretation turns on the full phrase and market context. A non-governing but useful contextual source, submitted by the defense, uses similar Polymarket official-token wording and expressly excludes stablecoins and other utility tokens not promoted as Polymarket's official token. That is exactly the common-sense line here. pUSD is a utility/collateral asset backed by USDC, replacing USDC.e for settlement. The admitted Polymarket pages promote it as collateral infrastructure, not as the platform's official token.

Source weight also matters. The plaintiff has improved the record, but the remaining gaps are still material. The case-packet market page admits there is no real Polymarket market URL or identifier. The unresolved-gaps file says there is no pre-run market-page or API capture for the prediction-market question itself. Plaintiff's source-chain report admits there is no immutable archive or server-header publication history, and that the submitted official-source materials are text extracts rather than full raw HTML snapshots. Polygonscan corroborates that the contract exists and is labeled pUSD; it does not decide whether this was an official token launch under the market language.

The defense is not asking the council to ignore pUSD. We ask the council to classify it correctly. The admitted evidence proves a Polymarket-controlled collateral-token rollout for CLOB V2: a USDC-backed wrapper, balance-conversion mechanism, and technical settlement layer. It does not prove, more likely than not, that Polymarket launched its official fungible token before the deadline. On this record, the plaintiff has shown infrastructure, not the qualifying event.

Exhibits offered:
- DX-1 pUSD concept page: collateral wrapper and technical settlement layer: submitted-evidence-01-plaintiff-916b2f4e8c95.txt
- DX-2 Help Center upgrade: exchange-stack collateral migration: submitted-evidence-05-plaintiff-4a80d921eea2.txt
- DX-3 Official FAQ: pUSD collateral but no airdrop or TGE: submitted-evidence-06-plaintiff-c11c331daf8c.txt
- DX-4 Record gaps and semantic issue: unresolved-record-gaps.txt
- DX-5 Contextual analog excluding utility tokens from official-token wording: submitted-evidence-08-defendant-6a1799ab5d17.txt

Technical reports:
- Defense source-chain and adverse-check ledger
  Defendant inspected the updated record and read plaintiff's seven new extracts by evidence ID. Native exact-phrase searches for the original Polymarket market URL or identifier did not locate a governing market page. Defendant submitted one non-governing contextual Manifold analog, limited to ordinary prediction-market usage. Remaining material gaps: no original Polymarket market URL/API capture, no source hierarchy beyond preserved condition text, no raw HTML snapshots for plaintiff's official pages, no server-header or immutable archive publication history, and Polygonscan corroborates contract existence rather than market-language interpretation.

### Rebuttals

#### Plaintiff Rebuttal

Council members, the defense rests on one substitution: it asks you to decide a different market than the one before you.

The defendant's new Manifold exhibit is expressly not Polymarket and not governing AAR text. More importantly, it uses different resolution language. That market asks about a token likely called $POLY and expressly says stablecoins and other utility tokens do not count unless promoted as Polymarket's official token. The AAR proposition does not say that. It gives its own definition: a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels, with exclusions for NFTs, promotional offerings, tokenized point systems, and collaborations. Stable-value tokens, collateral tokens, wrappers, and utility tokens are not listed exclusions.

That difference matters. If the drafter meant to exclude collateral/stable/utility tokens, the defendant's own exhibit shows how easy that would have been. This condition instead uses a broader functional test. The council should apply the text it has, not import an omitted exclusion from another website's later market.

The defense also treats 'collateral' and 'official token' as mutually exclusive. The admitted official Polymarket FAQ defeats that framing. Polymarket says all trading and liquidity rewards are in pUSD, Polymarket's official collateral token, and that pUSD is a standard ERC-20 backed by USDC. The same FAQ says there is no announced airdrop or token generation event. That is not a contradiction; it is the exact distinction the plaintiff has drawn. pUSD is not a speculative airdrop/TGE token. It is still an official Polymarket fungible token.

The merits record supplies every required element: the pUSD docs establish standard ERC-20 status, transferability, decimals, and backing; the contracts page identifies the Polymarket pUSD contract; the changelog, migration guide, and Help Center establish public official communication and April 2026 rollout; Polygonscan corroborates the on-chain identity. The defense has no evidence that pUSD is an NFT, points system, promotion, or collaboration. Nor does it show the condition required governance rights, a $POLY ticker, exchange listing, or an airdrop.

So the rebuttal point is simple: collateral is a use case, not a disqualifier. The proposition asks whether Polymarket launched an official fungible token before the deadline. On the admitted official Polymarket evidence, pUSD satisfies that test by a preponderance.

Exhibits offered:
- PX-R1 Official FAQ: pUSD is official collateral token, no TGE: submitted-evidence-06-plaintiff-c11c331daf8c.txt
- PX-R2 Official pUSD ERC-20 facts: submitted-evidence-01-plaintiff-916b2f4e8c95.txt
- PX-R3 Defendant analogy with non-governing different wording: submitted-evidence-08-defendant-6a1799ab5d17.txt

### Surrebuttals

#### Defendant Surrebuttal

Council members, the plaintiff's rebuttal correctly identifies the key textual issue, but draws the wrong conclusion from it.

The defense is not asking the council to import the Manifold market as governing text. It is not governing. The point is narrower: that source illustrates the ordinary ambiguity around "Polymarket's official token" and the common distinction between a platform's official token launch and stable, utility, or collateral assets. The AAR condition lacks an express collateral-token exclusion, but exclusions do not define the whole affirmative clause. The plaintiff still must prove that pUSD was an official token launch, not merely that pUSD is an official ERC-20 used by Polymarket.

That distinction comes from the admitted Polymarket evidence itself. The pUSD page calls it the collateral token for trading, the technical settlement layer, and a wrapper representing a USDC claim. The Help Center says users approve conversion of balances to pUSD, day to day nothing changes, and pUSD is the technical layer underneath. The migration materials describe a coordinated upgrade of trading infrastructure: new exchange contracts, rewritten CLOB backend, and a new collateral token replacing USDC.e. Those are not stray words. They are the product description.

The FAQ remains the clearest limit. Plaintiff says it supports them because it uses the phrase "official collateral token." But the page is titled "Does Polymarket Have a Token?" and, after identifying pUSD as collateral, immediately says Polymarket has not announced any airdrop or token generation event. That answer only makes sense if Polymarket itself recognizes the question "does Polymarket have a token" as different from "does Polymarket use pUSD as collateral." The proposition is about the former kind of official token launch, not every official tokenized settlement instrument in the stack.

Finally, the source-chain gaps remain important precisely because this is an interpretation dispute. We still do not have the original market URL, market identifier, API capture, or source hierarchy. We do have preserved condition text and later text extracts. On that record, the safer preponderance finding is not that plaintiff's broad reading wins by default, but that pUSD has been proven as collateral infrastructure while the qualifying official-token-launch element remains unproven.

### Closings

#### Plaintiff Closing

Council members, the record is now complete enough to decide the proposition by a preponderance.

The plaintiff does not need to prove that pUSD was a governance token, an airdrop token, a speculative $POLY token, or a token generation event. The proposition supplies its own test: a fungible token, officially released by Polymarket, publicly communicated through official Polymarket channels, before January 1, 2027, excluding NFTs, promotions, points systems, and collaborations.

The admitted evidence meets that test.

Fungible token: Polymarket's pUSD documentation says pUSD, Polymarket USD, is a standard ERC-20 token on Polygon, backed by USDC, with 6 decimals, and transferable as a standard ERC-20. The migration guide and Help Center repeat that pUSD is a standard ERC-20. That is direct evidence of a fungible token.

Official release by Polymarket: the source chain is Polymarket's own Documentation and Help Center. The contracts page says it is the single source of truth for all Polymarket contract addresses used across the platform, and lists pUSD as a CollateralToken proxy. The FAQ calls pUSD Polymarket's official collateral token. The word "collateral" describes the token's use; it does not erase the words "Polymarket's official" or "token."

Public communication through official Polymarket channels: the changelog, migration guide, pUSD docs, contracts page, and Help Center article are official Polymarket channels. They publicly described the coordinated upgrade, pUSD, and the user conversion flow.

Timing: the changelog announces on April 17, 2026 that Polymarket is shipping a coordinated upgrade with a new collateral token, pUSD, going live April 28. The changelog then states on April 28 that CLOB V2 is live on production. The migration guide says CLOB V2 is live as of April 28, 2026. The Help Center likewise describes the April 28 rollout. That is months before the January 1, 2027 deadline.

Exclusions: the defense has not shown that pUSD is an NFT, a promotional offering, a tokenized point system, or a collaboration launch. It is none of those. The defense instead asks you to add a collateral-token or utility-token exclusion. But this condition did not include that exclusion. The defendant's own non-governing Manifold exhibit proves the point: when a market wants to exclude stablecoins or utility tokens, it can say so. This AAR proposition did not.

The best defense point is fair but not decisive. pUSD is a collateral and settlement token, not an airdrop or TGE. The official FAQ itself says Polymarket has not announced an airdrop or token generation event. But the plaintiff's case does not depend on an airdrop or TGE. It depends on the definition the council was given. Under that definition, an official collateral token can still be an official fungible token.

The remaining gaps also do not defeat preponderance. The original market URL is missing, and the official-page captures are text extracts rather than raw HTML snapshots. Those limitations would matter more if the decisive facts came from marginal sources. They do not. The decisive facts come from official Polymarket documents and Help Center pages, corroborated by the contracts page and Polygonscan. The source record is strong enough for the civil standard.

The defense ultimately concedes the central factual core: pUSD is an official Polymarket collateral ERC-20 introduced with CLOB V2. The only question is whether that official fungible token is disqualified because it is collateral infrastructure. The proposition does not say so. Apply the text as written, and the plaintiff has carried the burden. The council should find that Polymarket launched an official fungible token before the deadline.

#### Defendant Closing

Council members, the defense closing begins with a concession because the record deserves one: pUSD is real, it is an ERC-20, it is connected to Polymarket, and it was introduced before the deadline as part of CLOB V2. The plaintiff has proved that much.

But the proposition is not satisfied by that narrower fact. The proposition asks whether Polymarket launched an official fungible token. The record shows a collateral migration inside the trading stack.

The most probative evidence is the plaintiff's own official-source evidence. The pUSD concept page says pUSD is the collateral token used for trading, the technical settlement layer underneath the same user experience, and a standard ERC-20 wrapper representing a USDC claim. It says pUSD is designed to function within Polymarket and that there are no current plans to list it on external exchanges. The Help Center article tells users day to day nothing changes: they approve conversion of balances to pUSD, trade, and withdraw; pUSD is the technical layer underneath. The changelog and migration guide place pUSD in a coordinated exchange-stack upgrade with new contracts and a rewritten CLOB backend, replacing USDC.e as collateral.

That record is consistent from start to finish. pUSD is collateral infrastructure. It is not presented as Polymarket's official platform token, governance token, airdrop token, community token, or token generation event. The FAQ titled "Does Polymarket Have a Token?" confirms the distinction. It identifies pUSD as Polymarket's official collateral token, then immediately says Polymarket has not announced any airdrop or token generation event and warns users to rely on official channels. That answer only makes sense because the ordinary question whether Polymarket has launched a token is broader than whether Polymarket uses a collateral wrapper.

Plaintiff's best point is that the condition does not expressly exclude collateral tokens. But plaintiff still bears the affirmative burden. The absence of a collateral-token exclusion does not mean every official ERC-20 instrument in the platform counts. The council must interpret the phrase actually at issue: "launched an official fungible token." A USDC-backed wrapper used for balance conversion and settlement is not naturally that launch, even if it is official and fungible.

The source-chain limits reinforce that caution. We never received the original market URL, identifier, API capture, source hierarchy, or raw official-page snapshots. We have a preserved condition text, later text extracts, and official documentation that overwhelmingly describes pUSD as collateral and settlement infrastructure. Where the dispute turns on meaning, those missing market materials matter.

So the right finding is disciplined, not dismissive. The record proves Polymarket introduced pUSD as an official collateral ERC-20. It does not prove, by a preponderance, that Polymarket launched the official fungible token contemplated by this proposition before January 1, 2027. The council should find for the defendant.

## Council Deliberation

### Round 1

Tally: 5 demonstrated

[C1] demonstrated
The admitted record shows pUSD is a fungible ERC-20 token officially released by Polymarket and communicated publicly through their official channels before January 1, 2027. While it functions as collateral, the condition does not exclude collateral tokens, only NFTs, promotions, points systems, and collaboratively-launched tokens.

[C2] demonstrated
The admitted official Polymarket evidence proves pUSD is a fungible ERC-20 token officially released and publicly communicated through Polymarket's own documentation and Help Center before April 28, 2026, well before the January 1, 2027 deadline. The proposition's stated exclusions (NFTs, promotional offerings, tokenized point systems, and collaboration tokens) do not include collateral tokens, and the record shows pUSD fits none of those excluded categories.

[C3] demonstrated
The admitted record proves that Polymarket launched a fungible token (pUSD) officially released and publicly communicated through its official channels before January 1, 2027, which meets the proposition's criteria as defined.

[C4] demonstrated
The admitted record shows pUSD is a fungible ERC-20 token officially released by Polymarket via official documentation, changelog, and Help Center before the deadline, and it is not an NFT, promotional offering, tokenized point system, or collaboration launch.

[C5] demonstrated
The admitted record proves by a preponderance that Polymarket launched pUSD, a fungible ERC-20 token officially released and publicly communicated through their official channels before January 1, 2027. pUSD meets all proposition criteria and falls into none of the excluded categories.

## Exhibits

[plaintiff] PX-1 Condition text and elements
Case source: preserved condition text for this experiment.

No market URL or Polymarket market identifier was provided in the prompt. No broader factual research is included in this packet.

Market/rule text preserved for the case:

"Polymarket launched an official token before January 1st, 2027 (00:00 PST). The token must be fungible, officially released by Polymarket, and communicated publicly through official Polymarket channels. NFT launches, promotional offerings, tokenized point systems, or token launches in collaboration with other projects and communities do not count as official tokens launched by Polymarket here."

Time window:
- Deadline: January 1, 2027 at 00:00 PST.
- Condition can be demonstrated before the deadline if a qualifying token launch has already occurred.
- A negative final determination is premature before the deadline passes unless the arbitration is framed only as an as-of-record-date inquiry.

Resolution-condition elements preserved from the prompt:
1. Token must be fungible.
2. Token must be officially released by Polymarket.
3. Release must be communicated publicly through official Polymarket channels.
4. Exclusions: NFT launches, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities.


[plaintiff] PX-2 Official pUSD concept page
Source: https://docs.polymarket.com/concepts/pusd
Title: Polymarket USD
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket USD
pUSD — the collateral token used for all trading on Polymarket

pUSD (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD
The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. See the Contracts page for all collateral-related contract addresses.

[plaintiff] PX-3 Official contracts page pUSD address
Source: https://docs.polymarket.com/resources/contracts
Title: Contracts - Polymarket Documentation
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Contracts
All Polymarket smart contract addresses, audits, and security resources

All Polymarket contracts are deployed on Polygon mainnet (Chain ID: 137). This is the single source of truth for all contract addresses used across the platform.

Collateral Contracts
Contract Address
pUSD — CollateralToken (proxy): 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
pUSD — CollateralToken (impl): 0x6bBCef9f7ef3B6C592c99e0f206a0DE94Ad0925f
CollateralOnramp: 0x93070a847efEf7F70739046A929D47a521F5B8ee
CollateralOfframp: 0x2957922Eb93258b93368531d39fAcCA3B4dC5854
PermissionedRamp: 0xebC2459Ec962869ca4c0bd1E06368272732BCb08
CtfCollateralAdapter: 0xAdA100Db00Ca00073811820692005400218FcE1f
NegRiskCtfCollateralAdapter: 0xadA2005600Dec949baf300f4C6120000bDB6eAab

[plaintiff] PX-4 Official changelog April 2026
Source: https://docs.polymarket.com/changelog
Title: Polymarket Changelog
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket Changelog
Welcome to the Polymarket Changelog. Here you will find any important changes to Polymarket, including but not limited to CLOB, API, UI and Mobile Applications.

Apr 28, 2026
CLOB V2 is live on production
Polymarket's CLOB V2 upgrade is live on https://clob.polymarket.com.
- Production URL unchanged: V2 now runs on the standard CLOB host. New integrations should use https://clob.polymarket.com.
- No V1 compatibility: Legacy V1 SDKs and V1-signed orders are no longer supported on production.
- Open orders wiped: Resting orders from before the cutover did not migrate and must be re-created with V2 signing.
- Migration guide: See Migrating to CLOB V2 for the SDK, raw order signing, pUSD, and builder attribution changes.

Apr 17, 2026
CLOB V2: upgrades go live April 28 at ~11:00 UTC, with ~1 hour of downtime
Polymarket is shipping a coordinated upgrade: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (pUSD). Exchange upgrades go live April 28, 2026 at ~11:00 UTC with ~1 hour of downtime. All integrations must migrate to the V2 SDK before the cutover — there will be no backward compatibility after go-live.
What’s changing
- New Exchange contracts (CTF Exchange V2 + Neg Risk CTF Exchange V2)
- pUSD replaces USDC.e as the collateral token (standard ERC-20 on Polygon, backed by USDC, backing enforced onchain)
- Order struct changes, fee changes, builder attribution, and EIP-712 exchange domain version changes.

[plaintiff] PX-5 Official V2 migration guide
Source: https://docs.polymarket.com/v2-migration
Title: Migrating to CLOB V2
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Migrating to CLOB V2
A complete guide to upgrading your integration to Polymarket's CLOB V2 — new contracts, new backend, new collateral token, and a simpler builder program.

Polymarket has shipped a coordinated upgrade of its entire trading infrastructure: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (Polymarket USD, or pUSD). This guide walks you through everything you need to migrate from CLOB V1 to CLOB V2.

CLOB V2 is live as of April 28, 2026. Legacy V1 SDKs and V1-signed orders are no longer supported on production. Upgrade to the V2 SDK or update your raw order signing before submitting orders to https://clob.polymarket.com.

TL;DR table extract:
Collateral: Before (V1) USDC.e; After (V2) pUSD (standard ERC-20, backed by USDC).

What's changing - 3. New collateral token
Polymarket is migrating from USDC.e to pUSD (Polymarket USD), a standard ERC-20 on Polygon backed by USDC. Backing is enforced onchain by the smart contract.
- For users trading on polymarket.com, the frontend handles wrapping automatically with a one-time approval.
- Power users and API-only traders wrap their USDC.e into pUSD via the Collateral Onramp contract's wrap() function.

[plaintiff] PX-6 Official Help Center exchange upgrade
Source: https://help.polymarket.com/en/articles/14762452-polymarket-exchange-upgrade-april-28-2026
Title: Polymarket Exchange Upgrade: April 28, 2026
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket Exchange Upgrade: April 28, 2026
Learn more about the upcoming exchange upgrades.
April 30, 2026

On April 28, 2026 at ~11:00 UTC, Polymarket is rolling out a coordinated upgrade of the exchange stack: new smart contracts, a rewritten order book, and a new collateral token. Trading will be paused for approximately 1 hour (until ~12:00 UTC) during the cutover.

Key Details
- When: April 28, 2026, starting around 11:00 UTC
- Downtime: ~1 hour of paused trading
- What you need to do: For most users, nothing. You just need to approve the conversion of your balance to pUSD, and approve trading on the upgraded contracts.
- Your funds: Your balance carries over. pUSD is backed 1:1 by USDC, with backing enforced onchain by the smart contract.

A new collateral token: Polymarket USD (pUSD)
Polymarket is migrating from USDC.e to Polymarket USD (pUSD) as the collateral token.
- pUSD is a standard ERC-20 token on Polygon, backed 1:1 by USDC.
- The backing is enforced onchain by the smart contract — no algorithmic peg, no fractional reserve.
- The protocol settles all trading activity in native USDC, providing a more capital efficient and scalable settlement standard.
- Day to day, nothing changes. You load funds, you see a balance, you trade, you withdraw. pUSD is the technical layer underneath.

FAQ: What is pUSD?
pUSD is the new collateral token for Polymarket. It's a regular ERC-20 on Polygon, backed 1:1 by USDC. The smart contract enforces the 1:1 backing, so one pUSD always converts back to one USDC, no fees.

[plaintiff] PX-7 Official FAQ on pUSD and no TGE
Source: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Title: Does Polymarket Have a Token?
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Does Polymarket Have a Token?
Updated this week

All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels:
- Web: https://polymarket.com
- Twitter / X: https://x.com/polymarket
- Discord: https://discord.gg/polymarket

[plaintiff] PX-8 Polygonscan pUSD contract corroboration
Source: https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
Title: Polymarket: pUSD Token | Address: 0xC011a7E1...342E82DFB | PolygonScan
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
Contract address: 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
Visible label/title: Polymarket: pUSD Token
Source Code Source Code (Proxy)
Implementation: Polymarket: pUSD Token (Implementation)
Tags visible: Polymarket; Token Contract
Token Tracker: Polymarket USD (pUSD)
Token holdings section includes Polymarket USD (pUSD).
Recent transactions shown in the retrieved page include Transfer and Approve methods involving Polymarket: pUSD Token. The page reports latest transactions and a total transaction count, corroborating that the contract exists on Polygon and has current ERC-20-style activity. This explorer evidence is corroborative; official Polymarket docs are stronger for official attribution.

[plaintiff] PX-9 Record gaps and limits
Known gaps after the 2026-05-03 open-record run:
- The real Polymarket market URL and market identifier remain absent.
- The packet still lacks a pre-run official Polymarket market-page/API capture for the prediction-market question itself.
- The official Polymarket documentation pages were preserved after the run, based on attorney-discovered evidence. A closed-record replay should use these captures or better archival captures from the start.
- Server-dated headers, immutable archive captures, and exact page publication/change histories were not preserved.
- The pUSD evidence is strong for a Polymarket-controlled ERC-20 collateral-token rollout, but a later adjudicator could distinguish "official token launch" from "technical collateral token introduced as part of CLOB V2." That semantic issue drove the main defense theory and two council dissents.
- The deadline remains in the future relative to setup date. The demonstrated result rested on pUSD as an already qualifying launch, not on the absence of future events.


[defendant] DX-1 pUSD concept page: collateral wrapper and technical settlement layer
Source: https://docs.polymarket.com/concepts/pusd
Title: Polymarket USD
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket USD
pUSD — the collateral token used for all trading on Polymarket

pUSD (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD
The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. See the Contracts page for all collateral-related contract addresses.

[defendant] DX-2 Help Center upgrade: exchange-stack collateral migration
Source: https://help.polymarket.com/en/articles/14762452-polymarket-exchange-upgrade-april-28-2026
Title: Polymarket Exchange Upgrade: April 28, 2026
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket Exchange Upgrade: April 28, 2026
Learn more about the upcoming exchange upgrades.
April 30, 2026

On April 28, 2026 at ~11:00 UTC, Polymarket is rolling out a coordinated upgrade of the exchange stack: new smart contracts, a rewritten order book, and a new collateral token. Trading will be paused for approximately 1 hour (until ~12:00 UTC) during the cutover.

Key Details
- When: April 28, 2026, starting around 11:00 UTC
- Downtime: ~1 hour of paused trading
- What you need to do: For most users, nothing. You just need to approve the conversion of your balance to pUSD, and approve trading on the upgraded contracts.
- Your funds: Your balance carries over. pUSD is backed 1:1 by USDC, with backing enforced onchain by the smart contract.

A new collateral token: Polymarket USD (pUSD)
Polymarket is migrating from USDC.e to Polymarket USD (pUSD) as the collateral token.
- pUSD is a standard ERC-20 token on Polygon, backed 1:1 by USDC.
- The backing is enforced onchain by the smart contract — no algorithmic peg, no fractional reserve.
- The protocol settles all trading activity in native USDC, providing a more capital efficient and scalable settlement standard.
- Day to day, nothing changes. You load funds, you see a balance, you trade, you withdraw. pUSD is the technical layer underneath.

FAQ: What is pUSD?
pUSD is the new collateral token for Polymarket. It's a regular ERC-20 on Polygon, backed 1:1 by USDC. The smart contract enforces the 1:1 backing, so one pUSD always converts back to one USDC, no fees.

[defendant] DX-3 Official FAQ: pUSD collateral but no airdrop or TGE
Source: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Title: Does Polymarket Have a Token?
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Does Polymarket Have a Token?
Updated this week

All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels:
- Web: https://polymarket.com
- Twitter / X: https://x.com/polymarket
- Discord: https://discord.gg/polymarket

[defendant] DX-4 Record gaps and semantic issue
Known gaps after the 2026-05-03 open-record run:
- The real Polymarket market URL and market identifier remain absent.
- The packet still lacks a pre-run official Polymarket market-page/API capture for the prediction-market question itself.
- The official Polymarket documentation pages were preserved after the run, based on attorney-discovered evidence. A closed-record replay should use these captures or better archival captures from the start.
- Server-dated headers, immutable archive captures, and exact page publication/change histories were not preserved.
- The pUSD evidence is strong for a Polymarket-controlled ERC-20 collateral-token rollout, but a later adjudicator could distinguish "official token launch" from "technical collateral token introduced as part of CLOB V2." That semantic issue drove the main defense theory and two council dissents.
- The deadline remains in the future relative to setup date. The demonstrated result rested on pUSD as an already qualifying launch, not on the absence of future events.


[defendant] DX-5 Contextual analog excluding utility tokens from official-token wording
Source: https://manifold.markets/Simon74fe/will-polymarket-launch-its-official
Title: Will Polymarket launch its official token in 2026?
Retrieved: 2026-06-30T08:00:30Z

Material visible page text extract:

Will Polymarket launch its official token in 2026?

Resolves YES if Polymarket launches a token (likely called $POLY) that is officially promoted by Polymarket as its official token, and the token is live and transferable on-chain before January 1, 2027.

Stablecoins and other utility tokens that are not promoted as Polymarket's official token do not count. An announcement, testnet deployment, or airdrop claim page alone does not qualify, the token must actually launch and be transferable.

This question is managed and resolved by Manifold.

Notes: This page is not Polymarket and is not the governing source for this AAR proposition. It is preserved only as contextual evidence that similar prediction-market wording distinguishes a platform's official token from stablecoin/utility/collateral tokens unless the project promotes that asset as its official token.

[plaintiff] PX-R1 Official FAQ: pUSD is official collateral token, no TGE
Source: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Title: Does Polymarket Have a Token?
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Does Polymarket Have a Token?
Updated this week

All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels:
- Web: https://polymarket.com
- Twitter / X: https://x.com/polymarket
- Discord: https://discord.gg/polymarket

[plaintiff] PX-R2 Official pUSD ERC-20 facts
Source: https://docs.polymarket.com/concepts/pusd
Title: Polymarket USD
Retrieved: 2026-06-30T07:49:00Z

Material page text extract:
# Polymarket USD
pUSD — the collateral token used for all trading on Polymarket

pUSD (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD
The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. See the Contracts page for all collateral-related contract addresses.

[plaintiff] PX-R3 Defendant analogy with non-governing different wording
Source: https://manifold.markets/Simon74fe/will-polymarket-launch-its-official
Title: Will Polymarket launch its official token in 2026?
Retrieved: 2026-06-30T08:00:30Z

Material visible page text extract:

Will Polymarket launch its official token in 2026?

Resolves YES if Polymarket launches a token (likely called $POLY) that is officially promoted by Polymarket as its official token, and the token is live and transferable on-chain before January 1, 2027.

Stablecoins and other utility tokens that are not promoted as Polymarket's official token do not count. An announcement, testnet deployment, or airdrop claim page alone does not qualify, the token must actually launch and be transferable.

This question is managed and resolved by Manifold.

Notes: This page is not Polymarket and is not the governing source for this AAR proposition. It is preserved only as contextual evidence that similar prediction-market wording distinguishes a platform's official token from stablecoin/utility/collateral tokens unless the project promotes that asset as its official token.

## Submitted Evidence

[plaintiff arguments] Official Polymarket docs: Polymarket USD pUSD concept page (ev_916b2f4e8c95_submitted-evidence-01-plaintiff-916b2f4e8c95)
Source: https://docs.polymarket.com/concepts/pusd
SHA-256: `916b2f4e8c9535e19f18f095c5daa81dc25171601ea81ad6d38a89dc64763b36`
Bytes: 1342
Relevance: Primary official Polymarket channel describing pUSD as Polymarket USD, a standard ERC-20 token on Polygon used for all trading, backed by USDC, transferable, and linking to contracts.

[plaintiff arguments] Official Polymarket docs: Contracts page pUSD address (ev_2416b58d16e6_submitted-evidence-02-plaintiff-2416b58d16e6)
Source: https://docs.polymarket.com/resources/contracts
SHA-256: `2416b58d16e6002b65f4b3e6261a36bbb364ee6e1dd91ea3709646006ccfa855`
Bytes: 920
Relevance: Primary official Polymarket channel identifying pUSD as a Polymarket collateral contract on Polygon mainnet and giving the contract address.

[plaintiff arguments] Official Polymarket docs: Changelog April 2026 CLOB V2 and pUSD (ev_95ea1f1f0980_submitted-evidence-03-plaintiff-95ea1f1f0980)
Source: https://docs.polymarket.com/changelog
SHA-256: `95ea1f1f098096e43348cccaaadf462bf1da61fc2c913d2c6d3f942cbad19f15`
Bytes: 1616
Relevance: Primary official Polymarket channel establishing public communication and timing: pUSD upgrade announced April 17, 2026 and CLOB V2 live April 28, 2026.

[plaintiff arguments] Official Polymarket docs: Migrating to CLOB V2 pUSD (ev_48196fa8b9eb_submitted-evidence-04-plaintiff-48196fa8b9eb)
Source: https://docs.polymarket.com/v2-migration
SHA-256: `48196fa8b9eb0172245d3142e9a3e319a3709075d0649afe19a32dd84cf9e9e8`
Bytes: 1347
Relevance: Primary official Polymarket channel describing the shipped CLOB V2 upgrade, go-live date, and pUSD as a new standard ERC-20 collateral token.

[plaintiff arguments] Official Polymarket help: Exchange Upgrade April 28 2026 (ev_4a80d921eea2_submitted-evidence-05-plaintiff-4a80d921eea2)
Source: https://help.polymarket.com/en/articles/14762452-polymarket-exchange-upgrade-april-28-2026
SHA-256: `4a80d921eea26cf5afd467e0d5e87668ebdb2da808c9629646695e2a74ffaadc`
Bytes: 1753
Relevance: User-facing official Polymarket communication of April 28, 2026 rollout, pUSD conversion, and pUSD as standard ERC-20 backed 1:1 by USDC.

[plaintiff arguments] Official Polymarket help: Does Polymarket Have a Token (ev_c11c331daf8c_submitted-evidence-06-plaintiff-c11c331daf8c)
Source: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
SHA-256: `c11c331daf8cec97717a0005c2f2041f6fc367edfb68de922f8f7830953a8b4d`
Bytes: 743
Relevance: Official Polymarket page confirming pUSD is Polymarket's official collateral token while distinguishing it from an airdrop or token generation event.

[plaintiff arguments] Polygonscan page: Polymarket pUSD Token contract address (ev_a30057276eda_submitted-evidence-07-plaintiff-a30057276eda)
Source: https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
SHA-256: `a30057276eda99832abbb692ba2e885e44b7ab0b8f184f8bfbcbbf8e3a118a34`
Bytes: 928
Relevance: Corroborates on-chain existence and labeling of the pUSD contract address identified by Polymarket's official contracts page.

[defendant arguments] Analogous prediction-market wording: Polymarket official token excludes utility tokens (ev_6a1799ab5d17_submitted-evidence-08-defendant-6a1799ab5d17)
Source: https://manifold.markets/Simon74fe/will-polymarket-launch-its-official
SHA-256: `6a1799ab5d172b097f5c402bc7f75a3761cd84c7a205539b8d87b79bef300f48`
Bytes: 1076
Relevance: Contextual/adverse interpretive source: a similar public prediction-market question about whether Polymarket will launch its official token says stablecoins and other utility tokens not promoted as Polymarket's official token do not count, supporting the defense distinction between pUSD collateral utility and an official token launch. Not offered as governing market text.

## Technical Reports

[plaintiff] Plaintiff source-chain and adverse-check ledger
At merits phase, plaintiff re-scanned the AAR record and then searched official Polymarket documentation/help sources and the pUSD contract address. Submitted admitted extracts from docs.polymarket.com/concepts/pusd, docs.polymarket.com/resources/contracts, docs.polymarket.com/changelog, docs.polymarket.com/v2-migration, help.polymarket.com exchange-upgrade article, help.polymarket.com 'Does Polymarket Have a Token?' FAQ, and Polygonscan for 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB. Adverse check found Polymarket's FAQ distinguishing pUSD from any airdrop or token generation event; plaintiff relies on that as a limitation, not as contrary proof, because the market condition does not require an airdrop/TGE. Remaining gaps: no original market URL/API capture, no immutable archive/server-header publication history, and submitted source captures are faithful text extracts rather than full raw HTML snapshots.

[defendant] Defense source-chain and adverse-check ledger
Defendant inspected the updated record and read plaintiff's seven new extracts by evidence ID. Native exact-phrase searches for the original Polymarket market URL or identifier did not locate a governing market page. Defendant submitted one non-governing contextual Manifold analog, limited to ordinary prediction-market usage. Remaining material gaps: no original Polymarket market URL/API capture, no source hierarchy beyond preserved condition text, no raw HTML snapshots for plaintiff's official pages, no server-header or immutable archive publication history, and Polygonscan corroborates contract existence rather than market-language interpretation.

## Result

Resolution: `demonstrated`

Final phase: `closed`
