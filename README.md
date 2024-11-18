# ALMs Face-off: BTR Fork Assessment

## Intro

### Candidates

The following protocols were selected for being part of the ALM market, having open-source code, permissive licencing, known contributors and/or auditors:
- Gamma Strategies
- Arrakis V2
- Beefy CLM
- DefiEdge
- Ichi (aka BRIL, Cupcake Hop)
- SkateFi (aka Range Protocol)
- Steer Protocol

### Selection Methodology

- Select the best protocol based on the criteria and sub-criteria listed in the comparison template.
- Provide a brief explanation of the protocol's strengths and weaknesses.
- Include a comparison of the protocol's strengths and weaknesses with our baseline, Gamma Strategies.
- Discuss the protocol's features, strengths and weaknesses in the context of BTR: use cases covered, missing, and not required.

## Problem Statement

Concentrated Liquidity Managers (CLMs) have theoretically simplified the concentrated liquidity landscape by enabling LPs to maintain yields through targeted price ranges. However, most existing solutions face serious challenges:

| **Competitor Flaws** | **Impact** |
|-----------------------|------------|
| Excessive Rebalancing | High impermanent loss for LPs due to market impact and swap fees. |
| Inefficient Triggers | Poorly timed rebalances increase slippage and reduce profitability. |
| Deterministic Rebalancing | Predictable swaps invite arbitrageurs, further reducing LP returns. |
| Poor Volatility and Momentum Analysis | Reactivity (if any) to market movements instead of proactive positioning. |
| Absence of Forecasting | Strategies fail to adapt to evolving market conditions. |

These flaws result in **major inefficient capital allocation**, **high costs**, and **missed profits**.

## Results

| Criteria                | Flume | Gamma | Arrakis V2 | Arrakis V3 | Beefy CLM | Maverick | DeFiEdge | Ichi/CupcakeHop/Bril |
|-------------------------|-------|-------|------------|------------|-----------|----------|----------|----------------------|
| **Aggregated Swaps**    | ✔️   | -     | -          | ✔️        | -         | ❌       | ✔️      | ❌                  |
| **Low Complexity**      | ✔️   | ✔️   | ✔️        | ❌         | ❌        | ❌       | ❌       | ✔️                 |
| **Multi-position**      | ✔️   | ❌    | ✔️        | ✔️        | ✔️       | ✔️      | ✔️      | ❌                  |
| **Uniswap Compatible**  | ✔️   | ✔️   | ✔️        | ✔️ (V4) | ✔️      | ❌       | ✔️      | ✔️                 |
| **Multi-DEX**           | ✔️   | ✔️   | ✔️        | ❌         | ✔️       | ❌       | ✔️      | ❌                  |
| **Volatility Aware**    | ✔️   | ❌    | ✔️        | ✔️        | ✔️       | ❌       | ❌       | ❌                  |
| **MEV Resistant**       | ✔️   | ❌    | -          | ✔️        | ❌        | ❌       | ✔️      | ❌                  |
| **AAA Audited**         | ✔️   | ✔️   | ✔️        | ✔️        | ✔️       | ✔️      | ✔️      | ❌                  |

### NB
- Maverick was listed here, but not considered since it is a DEX of its own and does not tap into Uniswap liquidity
- Arrakis V3 (Modular) was listed here, but no candidate as focusing intent liquidity (Uniswap X, 1inch Fusion, Cow Swap...) through their [HOT AMM](https://docs.arrakis.fi/text/introduction/integrations/hotAmm.html) that uses a V4 hook (w/ [Valantis](https://valantis.xyz/), therefore breaking V3 compatibility.
- SkateFi and Steer Protocol require further analysis to be listed here, but were rulled-out for lack of track record

## Detailed Comparison Template (see results in sub-folders)

[Criteria	Sub-Criteria 1 * Sub Criteria 2 * ...]	[Protocol A (Gamma)]	[Protocol B (Repository Project X)]	[Comparison Insights]
1. Audits	* Number of Audits * Auditor Reputation * Audit Scope * Known Vulnerabilities			
2. Code Quality	* Clarity (1-5) * Lines of Code (LoC) * Complexity: * Depth * Inheritance * Proxy Patterns * Storage Layout (1-5)
3. Code Optimization	* Inline Assembly/YUL Usage * Redundant Checks * Compute Soundness * Storage Soundness			
4. Feature 1: Multi-Position Support	* Supported (Y/N) * Implementation Details			
5. Feature 2: Generic Calldata Rebalancing	* Supported (Y/N) * Implementation Details	
6. Feature 3: Leveraged Farming	* Supported (Y/N) * Implementation Details
7. Feature 4: Oracle Reliance (Price Feed)	* Supported (Y/N) * Implementation Details
8. Accounting Methodology	* Methodology Used * Leverage Support (Y/N) * Notable Aspects			
9. Access Control	* Role List with Task Descriptions * Notable Access Control Mechanisms			
10. Emergency Tasks	* Pausing Capability (Y/N) * Token Recovery (Native & ERC20) (Y/N) * Recovery Process
11. Upgradability	* Upgradability (Y/N) * Upgrade Process
12. DEX Compatibility	* Compatibility with Uniswap (Y/N) * Compatibility with Algebra (Y/N) * Compatibility with Balancer/Gyroscope (Y/N) * Compatibility with Trader Joe (Y/N)

## Comparison Prompt for complementary LLM analysis

You will assess multiple solidity projects from this repository.
Our team is working on a new ALM (automated liquidity manager) for Uniswap V3 (and other concentrated liquidity DEXs) and we need these compared on multiple angles: 

** pass the template **

Selection Methodology:

- Select the best protocol based on the criteria and sub-criteria listed in the comparison template.
- Provide a brief explanation of the protocol's strengths and weaknesses.
- Include a comparison of the protocol's strengths and weaknesses with other protocols, our baseline being Gamma.
- Discuss the protocol's features, strengths and weaknesses in the context of BTR: use cases covered, missing, and not required.

Start with the comparative analysis of all these protocols based on the above template, and we will then move on to pick the best option for a fork once all protocols are compared, to finally work on the missing requirements.

Since the protocols are quite heavy code-wise, we will be comparing them 1vs1, with our baseline for comparison being Gamma.
