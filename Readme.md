** ALMs Face-off: BTR Fork Assessment **

Selection Methodology:

- Select the best protocol based on the criteria and sub-criteria listed in the comparison template.
- Provide a brief explanation of the protocol's strengths and weaknesses.
- Include a comparison of the protocol's strengths and weaknesses with other protocols, our baseline being Gamma.
- Discuss the protocol's features, strengths and weaknesses in the context of BTR: use cases covered, missing, and not required.

## Comparison Template:

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

## Comparison Prompt for GPT static code analysis:

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
