## Audits
  - Zellic https://github.com/beefyfinance/beefy-audits/blob/master/2024-02-28-Beefy-Zellic-CLM-Audit.pdf
  - Certora https://github.com/beefyfinance/beefy-audits/blob/master/2024-06-30-Beefy-Certora-CLM-Audit.pdf
  - Cyfrin https://github.com/beefyfinance/beefy-audits/blob/master/2024-04-06-Beefy-Cyfrin-CLM-Audit.pdf
  - Sherlock https://github.com/beefyfinance/beefy-audits/blob/master/2024-07-02-Beefy-Sherlock-CLM-Audit.pdf

## Sample Deployments
  Uniswap:
    BeefyVaultConcLiq: # == CLM
      - 42161:0x7d65c3a34a33594680a9181e14857724461b5aaa # uniswap
      - 42161:0x7d65c3a34a33594680a9181e14857724461b5aaa # pancakeswap
    StrategyPassiveManagerUniswap: # == CLM Strategy
      - 56:0x7bc78990ac1ef0754cfde935b2d84e9acf13ed29 # uniswap
    StrategyPassiveManagerPancake:
      - 42161:0xc29af56209e43578a799f9ec8eebe8d75294f92e # pancakeswap
    BeefyRewardPool: # == CLM Pool
      - 56:0x6045fedb41c74c5c197f4d3006cf1bd333320363
    VaultV7: # == Vault
      - 42161:0x943b3836abe7c6f4ea35208cd4c0de27ed7491dc # uniswap
    StrategyMerkl: # == Incentivized Vault == VaultStrategy
      - 42161:0xff56ea14937806168f80f61ff5ce84baab23f0d7
  Algebra:
    BeefyVaultConcLiq: # == CLM
      - 42161:0x7d65c3a34a33594680a9181e14857724461b5aaa # camelot
      - 1284:0x2190350a7a1987af83abe94245126c97a50ba7f8 # stellaswap
    StrategyPassiveManagerAlgebra: # == CLM Strategy
      - 24161:0x3299366e9800632221d9bbeadfc0af679647b2a3 # camelot
      - 1284:0x10f6a7b036d53324435543d4839dfe46101beef2 # stellaswap


## Gamma Face-off

| **Criteria** | **Gamma** | **Beefy** | **Comparison Insights** |
| --- | --- | --- | --- |
| **1. Audits** | *3, High, Comprehensive, None* | *Unknown, Beefy's VaultV7 is widely used, but audit info not provided* | **Gamma's audit history is more transparent** |
| **2. Code Quality** | *Clarity: 5, LoC: ~1,500, Complexity: Low, Depth: 2, Inheritance: Yes (OpenZeppelin), Proxy Patterns: No, Storage Layout: 5, Dependencies: OpenZeppelin, Uniswap* | *Clarity: 3, LoC: ~2,000 (estimated, across multiple contracts), Complexity: High, Depth: 3+, Inheritance: Yes (Beefy's VaultV7), Proxy Patterns: Yes, Storage Layout: 3, Dependencies: OpenZeppelin, Uniswap, Beefy's custom contracts* | **Gamma's code is more concise, clearer, and less complex** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks, Sound* | *No YUL, Some Redundant Checks, Mostly Sound (across multiple contracts)* | **Gamma is slightly more optimized** |
| **4. Feature 1: Multi-Position Support** | *N* | *N (but uses multiple contracts to achieve similar functionality)* | **Neither natively supports multi-position; Beefy's approach is more complex** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *N (rebalancing is contract-specific, with some hardcoded logic)* | **Neither supports generic calldata rebalancing** |
| **6. Feature 3: Leveraged Farming** | *N* | *N (but supports reward harvesting with embedded $CAKE logic)* | **Neither currently supports leveraged farming** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (uses pool prices directly)* | *Y (uses Uniswap's TWAP and IQuoter for price feeds)* | **Beefy relies on external oracles for price feeds** |
| **8. Accounting Methodology** | *Basic Share-Based: shares worth a constant proportion of each token, No Leverage Support, Simple* | *Custom, with reward harvesting and vault-based accounting, Leverage Support unknown, Complex* | **Gamma uses simple share-based accounting; Beefy's methodology is more nuanced** |
| **9. Access Control** |  *Owner*: deploy, update, pause, manage funds | *Owner*: deploy, update, pause, manage funds, *Manager*: manage strategy, *Multiple other roles* (e.g., BeefyRewardPool) | **Beefy's access control is more comprehensive, with multiple roles** |
| **10. Emergency Tasks** | *Y, Y, Simple (via UniProxy registry update)* | *Y, Y, Complex (with panic, unpause, and allowance management)* | **Both support emergency tasks; Beefy's process is more comprehensive but complex** |
| **11. Upgradability** | *N (Hypervisor), Y (via UniProxy registry update)* | *Y (via Beefy's VaultV7 upgradability mechanism)* | **Both have upgradability mechanisms, but different approaches** |
| **12. DEX Compatibility** | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | *Y (Uniswap, Sushi, Retro, Pancake), Unknown for others* | **Beefy supports multiple DEXs, but compatibility with others is uncertain** |
