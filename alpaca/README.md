## Audits
  - Inspex https://github.com/alpaca-finance/alpaca-v2-automated-vault/blob/main/audit/Inspex_AUDIT2023012_Alpaca%20Finance_Alpaca%20Finance%202.0%20Automated%20Vaults%20V3_FullReport_v1.0.pdf

## Sample Deployment
 - ...

## Gamma Face-off
| **Criteria** | **Gamma** | **Alpaca** | **Comparison Insights** |
| --- | --- | --- | --- |
| **1. Audits** | *3, High, Comprehensive, None* | *1, Medium, Limited, None* | **Gamma has more comprehensive audits** |
| **2. Code Quality** | *Clarity: 5, LoC: ~930, Complexity: Low, Depth: 2, Inheritance: Yes (OpenZeppelin), Proxy Patterns: No, Storage Layout: 5, Dependencies: OpenZeppelin, Uniswap* | *Clarity: 4, LoC: ~1070, Complexity: Medium, Depth: 3, Inheritance: Yes (OpenZeppelin), Proxy Patterns: Yes (Upgradeable), Storage Layout: 4, Dependencies: OpenZeppelin, Solmate, PancakeSwap* | **Gamma's code is more concise, clearer, and less complex** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks, Sound* | *No YUL, Some Redundant Checks, Mostly Sound* | **Gamma is slightly more optimized** |
| **4. Feature 1: Multi-Position Support** | *N* | *Y (via multiple vaults)* | **Alpaca supports multi-position, but with added complexity** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *N (only swaps on PancakeSwap using specific calldata, no support for generic calldata or other DEXs)* | **Neither supports generic calldata rebalancing; Alpaca limited to PancakeSwap** |
| **6. Feature 3: Leveraged Farming** | *N* | *Y (up to 10x)* | **Alpaca supports leveraged farming** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (uses pool prices directly)* | *Y (uses oracles for price feeds, e.g., Chainlink)* | **Alpaca relies on external oracles for price feeds** |
| **8. Accounting Methodology** | *Basic Share-Based: shares worth a constant proportion of each token, No Leverage Support, Simple* | *Debt/AUM, Y, up to 10x Leverage, Notable for leveraged strategies* | **Gamma uses simple share-based accounting; Alpaca's methodology suits leveraged strategies** |
| **9. Access Control** |  *Owner*: deploy, update, pause, manage funds | *Owner*: deploy, update, pause, manage funds, *Manager*: manage vault settings, allowances, *Executor*: execute rebalancing, manage positions | Alpaca's access control is more comprehensive |
| **10. Emergency Tasks** | *Y, Y, Simple (via UniProxy registry update)* | *Y, Y, Complex* | **Both support emergency tasks; Gamma's process is simpler and more elegant via UniProxy** |
| **11. Upgradability** | *N (Hypervisor), Y (via UniProxy registry update)* | *Y (Upgradeable contracts)* | **Both have upgradability mechanisms, but different approaches** |
| **12. DEX Compatibility** | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | *Y (PancakeSwap/Uniswap), N (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | **Gamma supports Uniswap and Algebra; Alpaca supports PancakeSwap/Uniswap** |
