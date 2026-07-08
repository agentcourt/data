# Arbitration Transcript

## Complaint

### Proposition

Before January 1, 2027 at 00:00 PST, Polymarket launched an official fungible token: a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels, excluding NFT launches, promotional offerings, tokenized point systems, and token launches in collaboration with other projects or communities.

### Standard of Evidence

Preponderance of the evidence.

## Council

- C1: openrouter://qwen/qwen3-30b-a3b-instruct-2507 (personas/generic.md)
- C2: openrouter://nvidia/nemotron-3-super-120b-a12b (personas/generic.md)
- C3: openrouter://qwen/qwen3.5-plus-02-15 (personas/generic.md)
- C4: openrouter://mistralai/mistral-medium-3-5 (personas/generic.md)
- C5: openrouter://nvidia/nemotron-3-super-120b-a12b (personas/generic.md)
## Proceeding

### Openings

#### Plaintiff Opening

Council members, this case turns on whether Polymarket's pUSD rollout qualifies as the official fungible token launch described in the proposition. The plaintiff's theory is straightforward: pUSD is not an NFT, a promotional giveaway, a points balance, or a collaboration token. On the current record it is Polymarket USD, a standard ERC-20 collateral token deployed for Polymarket's own production trading system, publicly documented through official Polymarket documentation before the January 1, 2027 deadline.

The proposition has four practical elements: a fungible token; official release by Polymarket; public communication through official Polymarket channels; and timing before January 1, 2027 at 00:00 PST. The case-packet evidence already frames each element. The preserved market/rule text in ev_9f790b70e7f8_market-page identifies the token criteria and the exclusions. The primary-evidence summary, ev_2c067be8800a_primary-evidence, reports that Polymarket described pUSD as the collateral token used for all trading on Polymarket, a standard ERC-20 token on Polygon, backed by USDC, transferable, and using 6 decimals. It also reports that Polymarket's contracts page identified pUSD / CollateralToken at a specific Polygon address, and that Polymarket's changelog and V2 migration materials tied pUSD to the CLOB V2 production rollout in April 2026.

The strongest present attribution evidence is ev_ce624e6c59c1_official-source-record. It maps the official Polymarket documentation pages for pUSD, contracts, changelog, and V2 migration, and it distinguishes official Polymarket sources from the corroborating Polygonscan page. If credited, those official-channel records prove far more than rumor or market speculation: they show Polymarket itself publicly described, named, and documented the token, and connected it to the live production exchange upgrade.

The defense's best argument is also visible now. ev_38c7491e77a8_unresolved-record-gaps candidly notes that later adjudicators might distinguish an "official token launch" from a technical collateral token introduced with CLOB V2. That is the real dispute. Plaintiff's answer is that the proposition does not require a governance token, a speculative token, an airdrop, or a standalone marketing campaign. It asks whether Polymarket launched an official fungible token. A mandatory ERC-20 collateral token for Polymarket trading, publicly documented by Polymarket and live in production, is comfortably within that language unless the council imports a limitation the proposition does not contain.

There are weight issues the plaintiff will not hide. The packet says the preserved official-source captures were made after an earlier run; server-dated headers, immutable archive snapshots, and exact publication history are not yet preserved. ev_8676b8beeed6_secondary-reporting adds that no secondary reporting has been captured. Those gaps matter to provenance, but they do not point to a contrary fact. They tell us what should be obtained in the evidence phases: direct captures of Polymarket's pUSD, contracts, changelog, and V2 migration pages; dated archive or server metadata if available; and on-chain corroboration for the listed pUSD contract address.

So the opening issue is narrow. If pUSD is accepted as what the official Polymarket materials say it is - Polymarket USD, a standard ERC-20 collateral token launched with the production CLOB V2 upgrade - the plaintiff has met the preponderance burden. The later record should focus on preserving the official source pages and resolving provenance, not on treating the absence of an airdrop-style announcement as a defeat of the proposition.

#### Defendant Opening

Council members, the defense opening is simple: this case should not be decided by substituting the words "collateral mechanism" for the condition's words, "official token launch." Plaintiff may later prove that Polymarket introduced pUSD as part of CLOB V2. The current packet does not yet prove, by a preponderance, that this was the qualifying official fungible token launch contemplated by the market.

The proposition requires more than an ERC-20 address and more than a technical migration note. It requires a fungible token officially released by Polymarket and publicly communicated through official Polymarket channels, while excluding launches that are not the relevant official Polymarket token event. The live dispute is therefore both factual and interpretive: did Polymarket launch a token in the ordinary market sense, or did it deploy a technical settlement-collateral token inside an exchange infrastructure upgrade?

The case-packet evidence is not as complete as plaintiff's opening makes it sound. ev_9f790b70e7f8_market-page preserves the rule text, but it expressly says no real Polymarket market URL or market identifier was provided and no broader factual research was included. That matters because the council is being asked to resolve a prediction condition without the original market page/API context that might show how market participants understood "official token."

The pro-pUSD packet materials also carry provenance limits. ev_2c067be8800a_primary-evidence is a summary of later-preserved source captures. ev_ce624e6c59c1_official-source-record maps official Polymarket documentation pages and quotes fetched markdown, but it also says those captures were made after the arbitration run and that server publication timestamps and archive snapshots remain worth adding. That is not nothing; it may be useful lead evidence. But at this opening stage it is not the same as a clean, dated, original official launch announcement preserved with publication history.

Most importantly, ev_38c7491e77a8_unresolved-record-gaps identifies the decisive issue in terms favorable to neither side: the pUSD evidence is strong for a Polymarket-controlled ERC-20 collateral-token rollout, but an adjudicator could distinguish an "official token launch" from a "technical collateral token introduced as part of CLOB V2." The defense asks the council to keep that distinction at the center of the case. A backend collateral token can be standard, transferable, and documented without being the token launch this market was asking about.

The current record also lacks corroborating context. ev_8676b8beeed6_secondary-reporting says no secondary reporting had been captured and no preliminary factual research had been performed. There is no admitted official social announcement, blog post, archive snapshot, server-dated header, contract creation analysis, custody/admin analysis, or contrary official statement distinguishing pUSD from any future platform/governance token. Those missing links affect weight because plaintiff's theory depends on treating a CLOB migration collateral asset as a public official token launch.

The defense does not need to prove pUSD is fake, non-fungible, or undocumented. The burden is plaintiff's. If later evidence shows a dated official Polymarket launch announcement, direct official-channel publication history, and on-chain custody facts tying pUSD to a public token release rather than merely trading infrastructure, the case may change. But on the present packet, the safer reading is that pUSD is collateral infrastructure for Polymarket's exchange, not the official token launch required by the proposition. The later record should focus on that distinction, not assume it away.

### Arguments

#### Plaintiff Argument

Council members, the plaintiff has now supplied the direct official-source record the opening identified. The preponderance question is not whether Polymarket held an airdrop, launched a governance coin, or listed a speculative asset on outside exchanges. The proposition asks whether Polymarket launched an official fungible token before January 1, 2027, and excludes NFTs, promotions, point systems, and collaboration/community tokens. The record now proves that Polymarket launched pUSD.

First, pUSD is a fungible token. PX-1, Polymarket's own pUSD documentation, describes pUSD as Polymarket USD, the collateral token used for all trading on Polymarket. It states that pUSD is a standard ERC-20 token on Polygon, backed by USDC, transferable, with 6 decimals. That satisfies fungibility. It also shows this is not a points system: the asset is an ERC-20 on Polygon, wrapped/unwrapped through on-chain collateral contracts, representing a USDC claim.

Second, pUSD was officially released and publicly communicated by Polymarket. PX-2 is the official Polymarket Contracts page. It says the page is the single source of truth for all contract addresses used across the platform and lists pUSD - CollateralToken (proxy) at 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB, along with its implementation, onramp, and offramp. That is not third-party speculation; it is Polymarket publishing the contract address as part of its platform contract set. PX-6, the official Help Center, removes any remaining ambiguity: all trading and liquidity rewards are in pUSD, which Polymarket calls its official collateral token.

Third, the launch was before the deadline. PX-3, the official Polymarket changelog, states that on April 17, 2026 Polymarket was shipping a coordinated upgrade including new Exchange contracts, a rewritten CLOB backend, and a new collateral token, pUSD, and that the exchange upgrades would go live April 28, 2026. It then records on April 28, 2026 that CLOB V2 was live on production and points to pUSD migration materials. PX-4, the official migration guide, likewise states that CLOB V2 is live as of April 28, 2026 and that the new collateral is pUSD, a standard ERC-20 backed by USDC. April 28, 2026 is before January 1, 2027.

Fourth, on-chain corroboration matches the official source chain. PX-5 is not offered as Polymarket attribution; PX-2 does that. PX-5 corroborates that the exact address Polymarket lists resolves publicly on Polygonscan as "Polymarket: pUSD Token" with verified/token metadata and substantial transaction activity. That supports real public existence, not merely a planned or internal database label.

The defense's best point is semantic: perhaps pUSD is only infrastructure and not an "official token launch" in the ordinary market sense. The evidence answers that in two ways. Factually, Polymarket did more than hide a settlement primitive in code. It named pUSD Polymarket USD, documented it for all trading, published its contract address, required it for the production CLOB V2 migration, and told Help Center users that all trading and liquidity rewards are in pUSD, its official collateral token. Legally, the proposition's elements do not require an airdrop, TGE, governance rights, price speculation, or exchange listings. Indeed, PX-6 says Polymarket has not announced an airdrop or token generation event; that is not adverse to plaintiff. It confirms the council should not decide this case by looking for an excluded promotional offering or a different kind of token event.

The limits are candid. The original packet, especially PX-8 and PX-9, identified provenance gaps: no original market URL, no immutable April archive snapshot, and current official-docs captures rather than server publication history from the launch date. Those gaps affect weight, but they do not create a competing explanation. The newly submitted evidence gives official Polymarket pages, retrieval metadata, dated changelog entries, a Help Center characterization, and on-chain corroboration. Under a preponderance standard, that is enough.

The proposition is satisfied: before the deadline, Polymarket publicly launched pUSD, an official fungible ERC-20 token used across its platform trading system. The council should find for plaintiff.

Exhibits offered:
- PX-1 Polymarket pUSD documentation: submitted-evidence-01-plaintiff-b5b4cf7d908f.txt
- PX-2 Polymarket Contracts pUSD address: submitted-evidence-02-plaintiff-838f5b652691.txt
- PX-3 Polymarket changelog CLOB V2/pUSD: submitted-evidence-03-plaintiff-9afebe9fe2ad.txt
- PX-4 Polymarket V2 migration pUSD: submitted-evidence-04-plaintiff-698e8127dde8.txt
- PX-5 Polygonscan pUSD token corroboration: submitted-evidence-05-plaintiff-e447a6447df7.txt
- PX-6 Polymarket Help Center token article: submitted-evidence-06-plaintiff-b3b269de98e4.txt
- PX-7 Initial primary evidence summary: primary-evidence.txt
- PX-8 Known gaps and adverse issues: unresolved-record-gaps.txt
- PX-9 Initial official source record: official-source-record.txt

Technical reports:
- Plaintiff Source Search And Weight Ledger
  Searched official Polymarket docs, official Help Center, and Polygonscan for the decisive elements. Submitted official pUSD, Contracts, Changelog, V2 Migration, and Help Center captures plus Polygonscan corroboration. Secondary reporting was found but not offered because official sources were stronger. Remaining gap: no immutable April archive/server-publication history; weight rests on current official pages with dated changelog/migration entries and corroborating explorer metadata.

#### Defendant Argument

Council members, the defense does not dispute the easy points. pUSD exists. It is an ERC-20. It is documented by Polymarket. It went into production before the January 1, 2027 deadline. The question is whether those facts prove the actual proposition: that Polymarket launched an official fungible token, as opposed to deploying a collateral wrapper inside a trading-system migration.

Plaintiff's own exhibits show why the answer should be no, or at least why plaintiff has not carried the burden. PX-1 calls pUSD the collateral token used for trading, but it also gives the limiting frame: day to day, nothing changes for users; pUSD is the technical settlement layer underneath the same experience; it is a wrapper that represents a USDC claim; and there are no current plans to list it on external exchanges. That is infrastructure language, not launch language. The asset is described as settlement plumbing for Polymarket's exchange, not as a public platform token event.

PX-3 and PX-4 reinforce that point. The changelog entry is not a token launch announcement. It says CLOB V2 is live and that Polymarket shipped a coordinated upgrade: new exchange contracts, a rewritten backend, and a new collateral token. The migration guide is for integrations moving from CLOB V1 to CLOB V2. It says normal frontend users wrap automatically, while power users and API traders use a collateral onramp. That proves a migration of trading infrastructure. It does not prove the kind of official token launch the market condition asks the council to identify.

The strongest defense evidence is the official Help Center article, PX-6. Its headline asks the ordinary user question: Does Polymarket have a token? The answer distinguishes two things. It says trading and liquidity rewards are in pUSD, Polymarket's official collateral token. But it also says Polymarket has not announced plans for any airdrop or token generation event and warns users to trust only official channels. If Polymarket itself, in an article framed around whether it "has a token," separates pUSD collateral from any airdrop or TGE, the council should not collapse that distinction. The proposition does not say "did Polymarket deploy an official collateral wrapper." It says "launched an official fungible token."

The newly submitted defense exhibit D-X1 is secondary, so I do not overstate it. It reports that Polymarket's CMO described a future token and airdrop after U.S. relaunch, with token focus to come after the U.S. app launch. That source is not an official channel and is not needed to prove the core point. Its limited value is context: market participants and reporting use "Polymarket token launch" to mean a future token/airdrop event, not the already-operational pUSD collateral wrapper.

Plaintiff leans heavily on the word "official." But the record shows pUSD is official collateral, not that it is the official token launch. Those are different propositions. A protocol can have official contracts, official collateral, official documentation, and official support pages without every documented ERC-20 wrapper becoming the official token launch for a prediction market. If that were enough, any platform settlement asset or wrapped claim would satisfy token-launch conditions even when the platform simultaneously tells users no token generation event has been announced.

There are also continuing weight limits. The original packet admitted gaps: no real market URL or market identifier, no pre-run market/API capture, no immutable April archive snapshot, and no page publication history. Plaintiff has improved the record with direct current captures, but the decisive interpretation remains unresolved. The official pages show pUSD's function; they do not show an official public token launch in the ordinary sense of the condition.

Under preponderance, plaintiff must show the qualifying event more likely occurred than not. The better reading of the record is narrower: before the deadline, Polymarket migrated its CLOB infrastructure and collateral from USDC.e to pUSD, an official ERC-20 settlement wrapper designed to function within Polymarket. That is not enough to resolve this proposition yes. The council should find that plaintiff has not proven a qualifying official fungible token launch.

Exhibits offered:
- DX-A Plaintiff PX-1 pUSD page limiting pUSD as technical settlement layer: submitted-evidence-01-plaintiff-b5b4cf7d908f.txt
- DX-B Plaintiff PX-6 Help Center separates pUSD collateral from airdrop/TGE: submitted-evidence-06-plaintiff-b3b269de98e4.txt
- DX-C Plaintiff PX-3 changelog frames pUSD in CLOB V2 upgrade: submitted-evidence-03-plaintiff-9afebe9fe2ad.txt
- DX-D Plaintiff PX-4 migration guide frames pUSD as collateral migration: submitted-evidence-04-plaintiff-698e8127dde8.txt
- DX-E CoinDesk secondary context on future Polymarket token/airdrop: submitted-evidence-07-defendant-2b6994532a43.txt

Technical reports:
- Defense evidence-search ledger
  Reviewed all new plaintiff evidence and exact text for pUSD docs, Help Center, changelog, migration guide, contracts page, and Polygonscan. Conducted targeted web searches for Polymarket token/airdrop and CMO statements. Submitted one secondary CoinDesk extract as defense evidence for limited market-context use. No stronger official adverse Polymarket statement was found beyond plaintiff's own Help Center exhibit, which remains the defense's primary source.

### Rebuttals

#### Plaintiff Rebuttal

Council members, the defense rebuttal point is narrower than it sounds. Defendant has proved, at most, that Polymarket may also have contemplated a later airdrop or token-generation-event style token. That does not answer this proposition.

Start with the market text. It does not ask whether Polymarket launched its first token, only token, governance token, exchange-listed token, airdrop, or TGE. It asks whether Polymarket launched an official fungible token before the deadline, while excluding NFTs, promotional offerings, tokenized points, and collaboration/community launches. pUSD fits the words actually written: official, fungible, token, public Polymarket communication, before the deadline.

Defendant's D-X1 is weak for the role assigned to it. It is secondary reporting, not an official Polymarket record and not the underlying podcast media. Its own preserved analysis says it is probative only for context. Even taken at face value, it reports a future token and airdrop after U.S. relaunch, with no mechanics or use cases. That can coexist with pUSD. A company can have an official ERC-20 collateral token used for trading and later plan a different airdrop/governance/public token. D-X1 does not say pUSD is unofficial, non-fungible, not a token, or not launched.

The official Help Center, PX-R1, is more probative than D-X1 because it is Polymarket's own public user-facing answer to the token question. The defense quotes it as if it hurts plaintiff, but it actually distinguishes the two concepts: Polymarket says all trading and liquidity rewards are in pUSD, Polymarket's official collateral token, and separately says it has not announced an airdrop or token generation event. That is exactly plaintiff's point. We are not asking the council to find an airdrop or TGE. We are asking it to apply the condition to the official fungible token Polymarket did launch: pUSD.

The defense's "infrastructure" label also does not defeat the elements. PX-R2 says pUSD is Polymarket USD, the collateral token used for all trading, a standard ERC-20 on Polygon, backed by USDC, transferable, with 6 decimals. A token can be infrastructure and still be a token. In crypto systems, official platform tokens often serve functional roles. The proposition did not exclude collateral tokens or settlement wrappers. It excluded promotions, points, NFTs, and collaborations. pUSD is none of those.

Finally, timing remains established by the official source record. PX-3 and PX-4 tied pUSD to the CLOB V2 production migration live as of April 28, 2026. Defendant does not dispute that pUSD existed, was an ERC-20, was documented by Polymarket, and went into production before the deadline. Once the extra airdrop/TGE requirement is removed, those concessions decide the case.

So D-X1 changes little. It may show another future token was discussed. It does not erase the official pUSD launch that the record proves by a preponderance. The council should reject the defense's added limitation and find the proposition satisfied.

Exhibits offered:
- PX-R1 Polymarket Help Center distinguishes pUSD from airdrop/TGE: submitted-evidence-06-plaintiff-b3b269de98e4.txt
- PX-R2 Polymarket pUSD official ERC-20 documentation: submitted-evidence-01-plaintiff-b5b4cf7d908f.txt
- PX-R3 Defendant CoinDesk secondary report context: submitted-evidence-07-defendant-2b6994532a43.txt

### Surrebuttals

#### Defendant Surrebuttal

Council members, plaintiff's rebuttal usefully narrows the disagreement. Defense does not claim the market text expressly says "governance token," "first token," "airdrop," or "TGE." The defense claim is that the words actually used still describe a launch event, not merely the existence of any official ERC-20 in Polymarket's infrastructure.

Plaintiff says pUSD can coexist with a later token or airdrop. That is true, but it does not solve plaintiff's burden. Coexistence means the council must decide which event this condition was asking about. The official record shows pUSD was the collateral side of a CLOB V2 migration: a standard ERC-20 wrapper representing a USDC claim, handled automatically for normal frontend users, with no current external exchange listing plans. That makes pUSD real and official, but it also explains why calling it the proposition's "official token launch" overreads the evidence.

PX-R1 is the clearest answer to plaintiff's literalism. In a Help Center article framed as "Does Polymarket Have a Token?", Polymarket says trading and liquidity rewards are in pUSD, its official collateral token, and then separately says it has not announced plans for any airdrop or token generation event. Plaintiff treats that as proof there is no TGE requirement. The better inference is that Polymarket itself distinguishes the collateral token from the ordinary public token-launch question users were asking.

PX-R2 does the same. It does not present pUSD as an investment, governance, community, or platform token launch. It calls pUSD the technical settlement layer underneath the same user experience and a wrapper representing a USDC claim. A technical settlement wrapper can be a token in the smart-contract sense without being the official token launch in the market-resolution sense.

D-X1 is secondary, and the defense has said so. But plaintiff's own rebuttal concedes the important possibility: a later token can coexist with pUSD. Once that is conceded, the mere fact that pUSD is official and fungible does not end the case. The council must decide whether this condition meant Polymarket's technical collateral wrapper or the public token launch category that Polymarket's own Help Center separates from pUSD collateral.

On this record, plaintiff has proven official collateral infrastructure before the deadline. It has not proven, by a preponderance, that Polymarket launched the official fungible token described by the proposition.

Exhibits offered:
- DX-S1 Help Center token question distinguishes pUSD collateral from airdrop/TGE: submitted-evidence-06-plaintiff-b3b269de98e4.txt
- DX-S2 pUSD page describes technical settlement wrapper: submitted-evidence-01-plaintiff-b5b4cf7d908f.txt
- DX-S3 Secondary context for later public token/airdrop discussion: submitted-evidence-07-defendant-2b6994532a43.txt

### Closings

#### Plaintiff Closing

Council members, the case is now much narrower than it began. The defense does not dispute that pUSD exists, that it is an ERC-20, that Polymarket documented it, or that it went into production before January 1, 2027. Those concessions cover most of the proposition. The remaining question is whether the council should add an unstated limitation: that an official fungible token must be an airdrop, TGE, governance token, externally listed asset, or non-infrastructure public token event. The record and the market text do not support adding that limitation.

The admitted official evidence establishes the elements. PX-1 says pUSD is Polymarket USD, the collateral token used for all trading on Polymarket. It says pUSD is a standard ERC-20 token on Polygon, backed by USDC, transferable, and has 6 decimals. That is a fungible token. It is not an NFT, not a points balance, and not a promotional giveaway.

PX-2 establishes official release and attribution. Polymarket's own Contracts page describes itself as the single source of truth for platform contract addresses and lists pUSD - CollateralToken at the same Polygon address later corroborated by PX-5. That is Polymarket publicly identifying and publishing the token as part of its platform contracts. PX-6, the official Help Center, is even plainer: all trading and liquidity rewards are in pUSD, Polymarket's official collateral token.

PX-3 and PX-4 establish timing. The official changelog announced the coordinated CLOB V2 upgrade including a new collateral token, pUSD, with go-live on April 28, 2026; the migration guide says CLOB V2 is live as of April 28, 2026 and identifies pUSD as the new collateral. April 28, 2026 is before the January 1, 2027 deadline.

The defense's best point is that pUSD is infrastructure. But a token can be infrastructure and still be a token. The proposition did not exclude settlement tokens, collateral tokens, wrapped claims, or tokens used inside Polymarket's trading system. It excluded NFTs, promotions, points, and collaboration/community launches. pUSD is none of those. It is a Polymarket-named ERC-20 used for all trading, officially documented and deployed before the deadline.

The Help Center evidence does not defeat plaintiff; it clarifies the distinction. PX-6 says Polymarket has not announced an airdrop or token generation event, while also calling pUSD Polymarket's official collateral token. That means pUSD is not an airdrop or TGE. It does not mean pUSD is unofficial or non-token. The defense asks the council to treat "no TGE" as "no official fungible token." That swaps the proposition for a narrower one.

D-X1 does not change the result. It is secondary reporting, not official Polymarket documentation or the underlying podcast. At most, it shows discussion of a later possible token and airdrop after U.S. relaunch. A later token can coexist with an earlier official collateral token. D-X1 does not say pUSD was fake, non-fungible, unofficial, undocumented, or outside production.

The record is not perfect: there is no immutable April archive snapshot or original market URL. But preponderance does not require archival perfection. It asks what is more likely than not. Current official Polymarket pages, dated changelog and migration entries, the official Help Center, the published contracts page, on-chain corroboration, and defense concessions all point the same way.

Polymarket launched pUSD before the deadline. pUSD is an official fungible token under the words of the proposition. The council should find the proposition proven.

#### Defendant Closing

Council members, the closing question is not whether pUSD has token mechanics. It does. The closing question is whether plaintiff has shown, more likely than not, that Polymarket launched the official fungible token described by this proposition, rather than deployed official collateral infrastructure inside a CLOB migration.

That distinction is not a loophole. It is the difference between the event the market asks about and the technical system the record actually proves. Plaintiff's strongest evidence shows pUSD is official collateral: Polymarket USD, an ERC-20 on Polygon, backed by USDC, transferable, used for trading, and documented on Polymarket pages. The defense has not hidden from that. But the same evidence supplies the limiting context.

PX-1 says pUSD is the technical settlement layer underneath the same user experience. It describes pUSD as a wrapper representing a USDC claim and says pUSD is designed to function within Polymarket, with no current plans to list it on external exchanges. That is not the language of a public token launch. It is the language of settlement infrastructure: a collateral wrapper that lets the exchange settle trades and handle withdrawals.

PX-3 and PX-4 confirm that framing. The April 2026 materials are about CLOB V2: new exchange contracts, a rewritten backend, a migration guide, and a new collateral token. Normal users have wrapping handled automatically. Power users and API traders use onramp contracts. That is a production migration, not a standalone launch announcement for Polymarket's official token.

PX-6 is decisive because it is Polymarket's own user-facing article framed around the exact public question: Does Polymarket have a token? It answers by calling pUSD Polymarket's official collateral token, then separately says Polymarket has not announced plans for any airdrop or token generation event. Plaintiff says that only proves no TGE is required. The defense says it proves the more important point: Polymarket itself distinguishes collateral pUSD from the ordinary token-launch question users were asking. An official collateral token is not automatically the official token launch.

Plaintiff is right that the proposition does not list "collateral tokens" among exclusions. But absence of an exclusion is not the same as proof of inclusion. The proposition still requires a launch of an official fungible token. If every official ERC-20 contract used inside a platform's settlement architecture counts, then the word "launched" loses its event meaning and the market resolves on backend implementation details. That is not the better reading of a public prediction condition.

D-X1 has limited weight because it is secondary reporting, and the defense has treated it that way. But it supports the same contextual distinction: discussion of a future Polymarket token and airdrop can coexist with pUSD precisely because pUSD is collateral infrastructure, not the public token event. The record does not need D-X1 to reject plaintiff's overbroad theory; the official Polymarket Help Center and pUSD page already do the work.

The remaining provenance and context gaps reinforce caution. The original packet lacked the real market URL and identifier, a pre-run market/API capture, immutable April archive snapshots, and page publication history. Plaintiff improved the record with current official captures, but those captures prove what the pages now say about pUSD's function. They do not transform a technical settlement wrapper into the proposition's official token launch.

Under preponderance, plaintiff had to show the qualifying event occurred. The record shows something narrower and undisputed: before the deadline, Polymarket migrated its trading infrastructure to use pUSD, an official ERC-20 collateral wrapper representing USDC claims inside Polymarket. That is not enough. The council should find the proposition not proven.

## Council Deliberation

### Round 1

Tally: 4 demonstrated

[C1] demonstrated
Polymarket launched pUSD before January 1, 2027, as a standard ERC-20 token on Polygon, documented as its official collateral token across multiple official channels. The record confirms pUSD was publicly communicated, officially released, and deployed in production on April 28, 2026. The proposition excludes NFTs, promotional offerings, points systems, and collaboration tokens—pUSD is none of these. The defense's argument that pUSD is merely infrastructure misreads the proposition's text, which does not exclude official platform tokens used in core trading systems.

[C2] demonstrated
The admitted record shows that Polymarket officially documented and released pUSD as a standard ERC-20 fungible token for all trading on its platform before the deadline, via official channels (Contracts page, Help Center, changelog, migration guide). pUSD is not an NFT, promotional offering, points system, or collaboration token. Thus, by a preponderance of the evidence, Polymarket launched an official fungible token as defined in the proposition.

[C3] demonstrated
The admitted record proves by preponderance that Polymarket launched pUSD, an official fungible ERC-20 token, before January 1, 2027. Official Polymarket documentation (PX-1 through PX-4, PX-6) publicly described, published contract addresses for, and deployed pUSD to production on April 28, 2026. The proposition excludes NFTs, promotions, points, and collaboration tokens—none of which apply to pUSD—and does not require a governance token, airdrop, or TGE.

[C4] demonstrated
The official Polymarket documentation, changelog, contracts page, and Help Center establish that Polymarket launched pUSD, an official fungible ERC-20 token used for all trading, with public communication via official channels, before the January 1, 2027 deadline.

## Exhibits

[plaintiff] PX-1 Polymarket pUSD documentation
Retrieval: curl -L https://docs.polymarket.com/concepts/pusd.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:19 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket USD

> pUSD — the collateral token used for all trading on Polymarket

**pUSD** (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Note text on page: Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD section extract: The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts table extract:
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

Additional extract: pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. The page links readers to the Contracts page for all collateral-related contract addresses.

[plaintiff] PX-2 Polymarket Contracts pUSD address
Retrieval: curl -L https://docs.polymarket.com/resources/contracts.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:19 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Contracts

> All Polymarket smart contract addresses, audits, and security resources

All Polymarket contracts are deployed on **Polygon mainnet** (Chain ID: 137). This is the single source of truth for all contract addresses used across the platform.

Collateral Contracts table extract:
pUSD — CollateralToken (proxy): 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB, linked to https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
pUSD — CollateralToken (impl): 0x6bBCef9f7ef3B6C592c99e0f206a0DE94Ad0925f, linked to https://polygonscan.com/address/0x6bBCef9f7ef3B6C592c99e0f206a0DE94Ad0925f
CollateralOnramp: 0x93070a847efEf7F70739046A929D47a521F5B8ee
CollateralOfframp: 0x2957922Eb93258b93368531d39fAcCA3B4dC5854

The same page lists V2/core trading contracts and states the page is the single source of truth for contract addresses used across the platform.

[plaintiff] PX-3 Polymarket changelog CLOB V2/pUSD
Retrieval: curl -L https://docs.polymarket.com/changelog.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:20 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket Changelog

> Welcome to the Polymarket Changelog. Here you will find any important changes to Polymarket, including but not limited to CLOB, API, UI and Mobile Applications.

Update label Apr 28, 2026, description: CLOB V2 is live on production.
Text extract: Polymarket's CLOB V2 upgrade is live on https://clob.polymarket.com. V2 now runs on the standard CLOB host. Legacy V1 SDKs and V1-signed orders are no longer supported on production. Resting orders from before the cutover did not migrate and must be re-created with V2 signing. The migration guide is linked for the SDK, raw order signing, pUSD, and builder attribution changes.

Update label Apr 17, 2026, description: CLOB V2: upgrades go live April 28 at ~11:00 UTC, with ~1 hour of downtime.
Text extract: Polymarket is shipping a coordinated upgrade: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (pUSD). Exchange upgrades go live April 28, 2026 at ~11:00 UTC with ~1 hour of downtime. All integrations must migrate to the V2 SDK before the cutover; there will be no backward compatibility after go-live.

The relevant dates, April 17 and April 28, 2026, are before the proposition deadline of January 1, 2027 at 00:00 PST.

[plaintiff] PX-4 Polymarket V2 migration pUSD
Retrieval: curl -L https://docs.polymarket.com/v2-migration.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:21 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Migrating to CLOB V2

> A complete guide to upgrading your integration to Polymarket's CLOB V2 — new contracts, new backend, new collateral token, and a simpler builder program.

Intro extract: Polymarket has shipped a coordinated upgrade of its entire trading infrastructure: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (Polymarket USD, or pUSD). The guide walks users through migrating from CLOB V1 to CLOB V2.

Warning extract: CLOB V2 is live as of April 28, 2026. Legacy V1 SDKs and V1-signed orders are no longer supported on production. Upgrade to the V2 SDK or update raw order signing before submitting orders to https://clob.polymarket.com.

TL;DR table extract: Collateral before V1 was USDC.e; after V2 is pUSD, described as standard ERC-20, backed by USDC.

What's changing / New collateral token extract: Polymarket is migrating from USDC.e to pUSD (Polymarket USD), a standard ERC-20 on Polygon backed by USDC. Backing is enforced onchain by the smart contract. For users trading on polymarket.com, the frontend handles wrapping automatically with a one-time approval. Power users and API-only traders wrap USDC.e into pUSD via the Collateral Onramp contract's wrap() function.

[plaintiff] PX-5 Polygonscan pUSD token corroboration
Retrieval: curl -L https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
Response headers observed: HTTP/2 200; content-type: text/html; date: Tue, 30 Jun 2026 11:12:07 GMT; server: cloudflare.

Page title/meta extract:
Title: Polymarket: pUSD Token | Address: 0xC011a7E1...342E82DFB | PolygonScan
Meta description: Contract: Verified | Token Rep: OK | Price: $0.9998 | Transactions: 669,892 | As at Jun-30-2026 11:12:07 AM (UTC)
Open graph title: Polymarket: pUSD Token | Address: 0xC011a7E1...342E82DFB | PolygonScan
Open graph site name: Polygon (POL) Blockchain Explorer
Open graph URL: https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB

Analysis note: This source is not an official Polymarket channel. It corroborates the public on-chain identity of the same address Polymarket's official Contracts page lists for pUSD CollateralToken (proxy), but official Polymarket docs remain the stronger source for Polymarket attribution and public communication.

[plaintiff] PX-6 Polymarket Help Center token article
Retrieval: curl -L https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Response headers observed: HTTP/2 200; content-type: text/html; date: Tue, 30 Jun 2026 11:50:40 GMT; x-intercom-version: 6f22c10085425375aca6bc01e61ebab71c22a364; canonical URL in HTML matches source URL.

Structured metadata extract:
Schema.org Article headline: Does Polymarket Have a Token?
Publisher: Polymarket Help Center
URL: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Date modified: 2026-06-24T15:25:27Z

Article text extracted from rendered HTML / __NEXT_DATA__ articleContent:
All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels: Web: https://polymarket.com/ ; Twitter / X: https://x.com/polymarket ; Discord: https://discord.gg/polymarket

Analysis note: This source is official Polymarket Help Center material. It does not claim an airdrop or governance-token TGE; it instead identifies pUSD as Polymarket's official collateral token.

[plaintiff] PX-7 Initial primary evidence summary
Primary evidence preserved after the 2026-05-03 open-record arbitration:

1. Official Polymarket pUSD concept page, captured at source-captures/polymarket-docs-pusd.txt.
   Material facts: pUSD is described by Polymarket as the collateral token used for all trading on Polymarket, a standard ERC-20 token on Polygon, backed by USDC, transferable, and with 6 decimals.

2. Official Polymarket Contracts page, captured at source-captures/polymarket-docs-contracts.txt.
   Material facts: the page states it is the single source of truth for Polymarket contract addresses, lists all Polymarket contracts on Polygon mainnet, and identifies pUSD — CollateralToken (proxy) at 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB.

3. Official Polymarket Changelog, captured at source-captures/polymarket-docs-changelog.txt.
   Material facts: Apr 17, 2026 entry announces a coordinated upgrade including a new collateral token, pUSD, with go-live planned for Apr 28, 2026 at ~11:00 UTC. Apr 28, 2026 entry says CLOB V2 is live on production and points to the migration guide for pUSD.

4. Official Polymarket V2 migration guide, captured at source-captures/polymarket-docs-v2-migration.txt.
   Material facts: says Polymarket shipped new Exchange contracts, a rewritten CLOB backend, and a new collateral token, Polymarket USD or pUSD; says CLOB V2 is live as of Apr 28, 2026; says pUSD is a standard ERC-20 backed by USDC.

5. Polygonscan pUSD token page, captured at source-captures/polygonscan-pusd-token.txt.
   Material facts: page title identifies the address as Polymarket: pUSD Token; extracted page shows many recent token transactions and contract/source metadata. This corroborates production-chain existence but is secondary to Polymarket's own Contracts page for official attribution.


[plaintiff] PX-8 Known gaps and adverse issues
Known gaps after the 2026-05-03 open-record run:
- The real Polymarket market URL and market identifier remain absent.
- The packet still lacks a pre-run official Polymarket market-page/API capture for the prediction-market question itself.
- The official Polymarket documentation pages were preserved after the run, based on attorney-discovered evidence. A closed-record replay should use these captures or better archival captures from the start.
- Server-dated headers, immutable archive captures, and exact page publication/change histories were not preserved.
- The pUSD evidence is strong for a Polymarket-controlled ERC-20 collateral-token rollout, but a later adjudicator could distinguish "official token launch" from "technical collateral token introduced as part of CLOB V2." That semantic issue drove the main defense theory and two council dissents.
- The deadline remains in the future relative to setup date. The demonstrated result rested on pUSD as an already qualifying launch, not on the absence of future events.


[plaintiff] PX-9 Initial official source record
Official-source record after the 2026-05-03 open-record arbitration.

The run relied on official Polymarket documentation and Polygonscan corroboration discovered by the search-enabled attorney. After the run, the main cited pages were captured under source-captures/.

Captured official Polymarket pages:
- source-captures/polymarket-docs-pusd.txt
  URL: https://docs.polymarket.com/concepts/pusd
  Key text from fetched markdown: "pUSD (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC." The page states pUSD is transferable, has 6 decimals, is backed by USDC, and links to the Contracts page.
- source-captures/polymarket-docs-contracts.txt
  URL: https://docs.polymarket.com/resources/contracts
  Key text from fetched markdown: "All Polymarket contracts are deployed on Polygon mainnet (Chain ID: 137). This is the single source of truth for all contract addresses used across the platform." Under Collateral Contracts, the page lists "pUSD — CollateralToken (proxy)" at 0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB.
- source-captures/polymarket-docs-changelog.txt
  URL: https://docs.polymarket.com/changelog
  Key text from fetched markdown: Apr 17, 2026 entry says Polymarket is shipping "new Exchange contracts, a rewritten CLOB backend, and a new collateral token (pUSD)" and that exchange upgrades go live April 28, 2026 at ~11:00 UTC. Apr 28, 2026 entry says "CLOB V2 is live on production" and points to the migration guide for pUSD.
- source-captures/polymarket-docs-v2-migration.txt
  URL: https://docs.polymarket.com/v2-migration
  Key text from fetched markdown: "Polymarket has shipped a coordinated upgrade of its entire trading infrastructure: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (Polymarket USD, or pUSD)." It says CLOB V2 is live as of April 28, 2026 and identifies pUSD as standard ERC-20 collateral backed by USDC.

Captured corroborating explorer page:
- source-captures/polygonscan-pusd-token.txt
  URL: https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
  Fetched page title identifies "Polymarket: pUSD Token" at the same address. The extracted page shows current transactions, a contract creation row, and Solidity source metadata for CollateralToken. Explorer evidence is corroborative. The official Polymarket Contracts page is the stronger attribution evidence.

Capture manifest:
- source-captures/capture-manifest.txt

Remaining official-source limitations:
- These captures were made after the arbitration, not before attorney filings.
- The captured HTML files should be treated as post-run preservation of discovered evidence, not as evidence available in the original thin packet.
- Server publication timestamps and archive snapshots remain worth adding before any closed-record run.


[defendant] DX-A Plaintiff PX-1 pUSD page limiting pUSD as technical settlement layer
Retrieval: curl -L https://docs.polymarket.com/concepts/pusd.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:19 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket USD

> pUSD — the collateral token used for all trading on Polymarket

**pUSD** (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Note text on page: Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD section extract: The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts table extract:
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

Additional extract: pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. The page links readers to the Contracts page for all collateral-related contract addresses.

[defendant] DX-B Plaintiff PX-6 Help Center separates pUSD collateral from airdrop/TGE
Retrieval: curl -L https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Response headers observed: HTTP/2 200; content-type: text/html; date: Tue, 30 Jun 2026 11:50:40 GMT; x-intercom-version: 6f22c10085425375aca6bc01e61ebab71c22a364; canonical URL in HTML matches source URL.

Structured metadata extract:
Schema.org Article headline: Does Polymarket Have a Token?
Publisher: Polymarket Help Center
URL: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Date modified: 2026-06-24T15:25:27Z

Article text extracted from rendered HTML / __NEXT_DATA__ articleContent:
All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels: Web: https://polymarket.com/ ; Twitter / X: https://x.com/polymarket ; Discord: https://discord.gg/polymarket

Analysis note: This source is official Polymarket Help Center material. It does not claim an airdrop or governance-token TGE; it instead identifies pUSD as Polymarket's official collateral token.

[defendant] DX-C Plaintiff PX-3 changelog frames pUSD in CLOB V2 upgrade
Retrieval: curl -L https://docs.polymarket.com/changelog.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:20 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket Changelog

> Welcome to the Polymarket Changelog. Here you will find any important changes to Polymarket, including but not limited to CLOB, API, UI and Mobile Applications.

Update label Apr 28, 2026, description: CLOB V2 is live on production.
Text extract: Polymarket's CLOB V2 upgrade is live on https://clob.polymarket.com. V2 now runs on the standard CLOB host. Legacy V1 SDKs and V1-signed orders are no longer supported on production. Resting orders from before the cutover did not migrate and must be re-created with V2 signing. The migration guide is linked for the SDK, raw order signing, pUSD, and builder attribution changes.

Update label Apr 17, 2026, description: CLOB V2: upgrades go live April 28 at ~11:00 UTC, with ~1 hour of downtime.
Text extract: Polymarket is shipping a coordinated upgrade: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (pUSD). Exchange upgrades go live April 28, 2026 at ~11:00 UTC with ~1 hour of downtime. All integrations must migrate to the V2 SDK before the cutover; there will be no backward compatibility after go-live.

The relevant dates, April 17 and April 28, 2026, are before the proposition deadline of January 1, 2027 at 00:00 PST.

[defendant] DX-D Plaintiff PX-4 migration guide frames pUSD as collateral migration
Retrieval: curl -L https://docs.polymarket.com/v2-migration.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:21 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Migrating to CLOB V2

> A complete guide to upgrading your integration to Polymarket's CLOB V2 — new contracts, new backend, new collateral token, and a simpler builder program.

Intro extract: Polymarket has shipped a coordinated upgrade of its entire trading infrastructure: new Exchange contracts, a rewritten CLOB backend, and a new collateral token (Polymarket USD, or pUSD). The guide walks users through migrating from CLOB V1 to CLOB V2.

Warning extract: CLOB V2 is live as of April 28, 2026. Legacy V1 SDKs and V1-signed orders are no longer supported on production. Upgrade to the V2 SDK or update raw order signing before submitting orders to https://clob.polymarket.com.

TL;DR table extract: Collateral before V1 was USDC.e; after V2 is pUSD, described as standard ERC-20, backed by USDC.

What's changing / New collateral token extract: Polymarket is migrating from USDC.e to pUSD (Polymarket USD), a standard ERC-20 on Polygon backed by USDC. Backing is enforced onchain by the smart contract. For users trading on polymarket.com, the frontend handles wrapping automatically with a one-time approval. Power users and API-only traders wrap USDC.e into pUSD via the Collateral Onramp contract's wrap() function.

[defendant] DX-E CoinDesk secondary context on future Polymarket token/airdrop
Retrieval: Opened CoinDesk article URL via web tool on 2026-06-30 during defendant argument phase.

Source: CoinDesk, "Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says," by Helene Braun, edited by Nikhilesh De. Page date shown: Oct. 24, 2025, 4:21 p.m.

Extracted page facts:
- Headline: Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says.
- Subheadline: "There will be a token, there will be an airdrop," CMO said as the platform nears an official U.S. return via a regulated exchange.
- Summary bullet: Polymarket will launch a token and distribute a portion of it to users through an airdrop after it formally relaunches in the United States, its chief marketing officer said.
- Article text says Polymarket CMO Matthew Modabber said on the Degenz Live podcast: "There will be a token, there will be an airdrop." The article states the launch is not imminent and that Modabber said the company is focused first on returning to the U.S. market.
- Further article text reports Modabber said: "Right now our core priority is launching in the U.S. and making a big splash there. After we take care of business on the U.S. app and U.S. launch there will be a focus on the token."
- Article text states Modabber did not offer details on token mechanics or use cases, and describes the upcoming token as part of Polymarket's next phase.

Analysis note: This is secondary reporting, not an official Polymarket source and not direct podcast media. It is probative only for context: in October 2025, reporting on Polymarket's own CMO treated "a token" and "an airdrop" as a future event after U.S. relaunch, which tends to distinguish the ordinary public token-launch concept from pUSD collateral infrastructure.

[plaintiff] PX-R1 Polymarket Help Center distinguishes pUSD from airdrop/TGE
Retrieval: curl -L https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Response headers observed: HTTP/2 200; content-type: text/html; date: Tue, 30 Jun 2026 11:50:40 GMT; x-intercom-version: 6f22c10085425375aca6bc01e61ebab71c22a364; canonical URL in HTML matches source URL.

Structured metadata extract:
Schema.org Article headline: Does Polymarket Have a Token?
Publisher: Polymarket Help Center
URL: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Date modified: 2026-06-24T15:25:27Z

Article text extracted from rendered HTML / __NEXT_DATA__ articleContent:
All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels: Web: https://polymarket.com/ ; Twitter / X: https://x.com/polymarket ; Discord: https://discord.gg/polymarket

Analysis note: This source is official Polymarket Help Center material. It does not claim an airdrop or governance-token TGE; it instead identifies pUSD as Polymarket's official collateral token.

[plaintiff] PX-R2 Polymarket pUSD official ERC-20 documentation
Retrieval: curl -L https://docs.polymarket.com/concepts/pusd.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:19 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket USD

> pUSD — the collateral token used for all trading on Polymarket

**pUSD** (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Note text on page: Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD section extract: The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts table extract:
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

Additional extract: pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. The page links readers to the Contracts page for all collateral-related contract addresses.

[plaintiff] PX-R3 Defendant CoinDesk secondary report context
Retrieval: Opened CoinDesk article URL via web tool on 2026-06-30 during defendant argument phase.

Source: CoinDesk, "Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says," by Helene Braun, edited by Nikhilesh De. Page date shown: Oct. 24, 2025, 4:21 p.m.

Extracted page facts:
- Headline: Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says.
- Subheadline: "There will be a token, there will be an airdrop," CMO said as the platform nears an official U.S. return via a regulated exchange.
- Summary bullet: Polymarket will launch a token and distribute a portion of it to users through an airdrop after it formally relaunches in the United States, its chief marketing officer said.
- Article text says Polymarket CMO Matthew Modabber said on the Degenz Live podcast: "There will be a token, there will be an airdrop." The article states the launch is not imminent and that Modabber said the company is focused first on returning to the U.S. market.
- Further article text reports Modabber said: "Right now our core priority is launching in the U.S. and making a big splash there. After we take care of business on the U.S. app and U.S. launch there will be a focus on the token."
- Article text states Modabber did not offer details on token mechanics or use cases, and describes the upcoming token as part of Polymarket's next phase.

Analysis note: This is secondary reporting, not an official Polymarket source and not direct podcast media. It is probative only for context: in October 2025, reporting on Polymarket's own CMO treated "a token" and "an airdrop" as a future event after U.S. relaunch, which tends to distinguish the ordinary public token-launch concept from pUSD collateral infrastructure.

[defendant] DX-S1 Help Center token question distinguishes pUSD collateral from airdrop/TGE
Retrieval: curl -L https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Response headers observed: HTTP/2 200; content-type: text/html; date: Tue, 30 Jun 2026 11:50:40 GMT; x-intercom-version: 6f22c10085425375aca6bc01e61ebab71c22a364; canonical URL in HTML matches source URL.

Structured metadata extract:
Schema.org Article headline: Does Polymarket Have a Token?
Publisher: Polymarket Help Center
URL: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
Date modified: 2026-06-24T15:25:27Z

Article text extracted from rendered HTML / __NEXT_DATA__ articleContent:
All trading and liquidity rewards are in pUSD, Polymarket's official collateral token. pUSD is a standard ERC-20 token on Polygon, backed by USDC.

Polymarket has not announced plans for any airdrop or token generation event. Be wary of scams claiming airdrops, giveaways, etc. Announcements will only come from official channels.

If in doubt, refer to official Polymarket communication channels: Web: https://polymarket.com/ ; Twitter / X: https://x.com/polymarket ; Discord: https://discord.gg/polymarket

Analysis note: This source is official Polymarket Help Center material. It does not claim an airdrop or governance-token TGE; it instead identifies pUSD as Polymarket's official collateral token.

[defendant] DX-S2 pUSD page describes technical settlement wrapper
Retrieval: curl -L https://docs.polymarket.com/concepts/pusd.md
Response headers observed: HTTP/2 200; content-type: text/markdown; date: Tue, 30 Jun 2026 11:12:19 GMT; server: Vercel; x-matched-path: /_mintlify/_markdown/_sites/[subdomain]/[[...slug]]; x-robots-tag: noindex, nofollow.

Source text extract:
# Polymarket USD

> pUSD — the collateral token used for all trading on Polymarket

**pUSD** (Polymarket USD) is the collateral token used for all trading on Polymarket. It's a standard ERC-20 token on Polygon, backed by USDC. The smart contract — which enables the withdrawal functionality — enforces the backing. No algorithmic peg, no fractional reserve.

Note text on page: Day to day, nothing changes. You load funds, see a balance, trade, and withdraw. pUSD is the technical settlement layer underneath the same experience you're used to.

Why pUSD section extract: The protocol settles all trading activity in native USDC, providing a more capital efficient, scalable, and institutionally aligned settlement standard as the platform continues to grow. pUSD is a standard ERC-20 wrapper that represents a USDC claim. Wrapping and unwrapping are enforced onchain by the CollateralOnramp and CollateralOfframp contracts.

Key facts table extract:
Token standard: ERC-20
Network: Polygon mainnet
Decimals: 6
Backing: USDC (enforced onchain)
Transferable: Yes — standard ERC-20

Additional extract: pUSD is designed to function within Polymarket. There are no current plans to list it on external exchanges. The page links readers to the Contracts page for all collateral-related contract addresses.

[defendant] DX-S3 Secondary context for later public token/airdrop discussion
Retrieval: Opened CoinDesk article URL via web tool on 2026-06-30 during defendant argument phase.

Source: CoinDesk, "Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says," by Helene Braun, edited by Nikhilesh De. Page date shown: Oct. 24, 2025, 4:21 p.m.

Extracted page facts:
- Headline: Polymarket Will Launch Token and Airdrop After U.S. Relaunch, CMO Says.
- Subheadline: "There will be a token, there will be an airdrop," CMO said as the platform nears an official U.S. return via a regulated exchange.
- Summary bullet: Polymarket will launch a token and distribute a portion of it to users through an airdrop after it formally relaunches in the United States, its chief marketing officer said.
- Article text says Polymarket CMO Matthew Modabber said on the Degenz Live podcast: "There will be a token, there will be an airdrop." The article states the launch is not imminent and that Modabber said the company is focused first on returning to the U.S. market.
- Further article text reports Modabber said: "Right now our core priority is launching in the U.S. and making a big splash there. After we take care of business on the U.S. app and U.S. launch there will be a focus on the token."
- Article text states Modabber did not offer details on token mechanics or use cases, and describes the upcoming token as part of Polymarket's next phase.

Analysis note: This is secondary reporting, not an official Polymarket source and not direct podcast media. It is probative only for context: in October 2025, reporting on Polymarket's own CMO treated "a token" and "an airdrop" as a future event after U.S. relaunch, which tends to distinguish the ordinary public token-launch concept from pUSD collateral infrastructure.

## Submitted Evidence

[plaintiff arguments] Official Polymarket docs capture: Polymarket USD (pUSD) (ev_b5b4cf7d908f_submitted-evidence-01-plaintiff-b5b4cf7d908f)
Source: https://docs.polymarket.com/concepts/pusd.md
SHA-256: `b5b4cf7d908f9188334d7c7adb50014bbae04495c83bc970474133649c1080b1`
Bytes: 1618
Relevance: Shows Polymarket's official description of pUSD as Polymarket USD, the collateral token used for all trading on Polymarket; states pUSD is a standard ERC-20 on Polygon, backed by USDC, transferable, and has 6 decimals.

[plaintiff arguments] Official Polymarket docs capture: Contracts page pUSD address (ev_838f5b652691_submitted-evidence-02-plaintiff-838f5b652691)
Source: https://docs.polymarket.com/resources/contracts.md
SHA-256: `838f5b652691676e8703fc2f09e9505e08ee850841db87d05f5f2729d59ee488`
Bytes: 1199
Relevance: Shows Polymarket's official contracts page identifies all platform contract addresses on Polygon mainnet and lists pUSD CollateralToken proxy and implementation addresses under Collateral Contracts.

[plaintiff arguments] Official Polymarket docs capture: Changelog CLOB V2 pUSD rollout (ev_9afebe9fe2ad_submitted-evidence-03-plaintiff-9afebe9fe2ad)
Source: https://docs.polymarket.com/changelog.md
SHA-256: `9afebe9fe2ad9991b83d7c72057310bfb2bfde76627c00684c8f71855ccba3ff`
Bytes: 1537
Relevance: Shows Polymarket publicly communicated before the deadline that CLOB V2 went live in production on April 28, 2026 and that the April 17, 2026 upgrade included a new collateral token, pUSD.

[plaintiff arguments] Official Polymarket docs capture: Migrating to CLOB V2 pUSD (ev_698e8127dde8_submitted-evidence-04-plaintiff-698e8127dde8)
Source: https://docs.polymarket.com/v2-migration.md
SHA-256: `698e8127dde8c14e5589de4f930bb667e64fb462d37469ecf8c0cea91196c39c`
Bytes: 1537
Relevance: Shows Polymarket's official migration guide says CLOB V2 is live as of April 28, 2026 and identifies pUSD as the new collateral token, a standard ERC-20 on Polygon backed by USDC.

[plaintiff arguments] Polygonscan capture: pUSD token address metadata (ev_e447a6447df7_submitted-evidence-05-plaintiff-e447a6447df7)
Source: https://polygonscan.com/address/0xC011a7E12a19f7B1f670d46F03B03f3342E82DFB
SHA-256: `e447a6447df713e32793f27e77ba364d6638da178c2e283dd487b8e310e3b367`
Bytes: 1004
Relevance: Corroborates that the official Polymarket contracts address resolves on Polygonscan as a token page titled Polymarket: pUSD Token, with verified-contract/token reputation metadata and many transactions. This supports on-chain existence but is secondary to official Polymarket docs for attribution.

[plaintiff arguments] Official Polymarket Help Center capture: Does Polymarket Have a Token? (ev_b3b269de98e4_submitted-evidence-06-plaintiff-b3b269de98e4)
Source: https://help.polymarket.com/en/articles/13364250-does-polymarket-have-a-token
SHA-256: `b3b269de98e48d5d5b696c9bcca2f7f28cd0788768495125fec22affdbda5648`
Bytes: 1323
Relevance: Addresses the defense's ordinary-token-launch objection: Polymarket says pUSD is its official collateral token while separately saying it has not announced an airdrop or token generation event.

[defendant arguments] CoinDesk secondary report: Polymarket future token and airdrop after U.S. relaunch (ev_2b6994532a43_submitted-evidence-07-defendant-2b6994532a43)
Source: https://www.coindesk.com/markets/2025/10/24/polymarket-will-launch-token-and-airdrop-after-u-s-relaunch-cmo-says
SHA-256: `2b6994532a435d15d94f7ec3950ec92eaaf33931f20c6070810d53618b5c36b4`
Bytes: 1747
Relevance: Supports defense argument that public discourse and secondary reporting treated Polymarket's token/airdrop as a future event after U.S. relaunch, distinct from pUSD collateral already used in trading infrastructure. Weight is limited because this is secondary reporting, not official Polymarket documentation.

## Technical Reports

[plaintiff] Plaintiff Source Search And Weight Ledger
Searched official Polymarket docs, official Help Center, and Polygonscan for the decisive elements. Submitted official pUSD, Contracts, Changelog, V2 Migration, and Help Center captures plus Polygonscan corroboration. Secondary reporting was found but not offered because official sources were stronger. Remaining gap: no immutable April archive/server-publication history; weight rests on current official pages with dated changelog/migration entries and corroborating explorer metadata.

[defendant] Defense evidence-search ledger
Reviewed all new plaintiff evidence and exact text for pUSD docs, Help Center, changelog, migration guide, contracts page, and Polygonscan. Conducted targeted web searches for Polymarket token/airdrop and CMO statements. Submitted one secondary CoinDesk extract as defense evidence for limited market-context use. No stronger official adverse Polymarket statement was found beyond plaintiff's own Help Center exhibit, which remains the defense's primary source.

## Result

Resolution: `demonstrated`

Final phase: `closed`
