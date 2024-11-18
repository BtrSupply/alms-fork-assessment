## Audits
  - Sherlock https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf
  - WatchPug https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf
  - Statemind https://github.com/ArrakisFinance/v2-core/blob/main/audit/arrakis-v2-core-and-palm-statemind-audit.pdf

## Sample Deployment
```
  Uniswap:
    ArrakisV2:
      - 100:0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38
```

## Gamma Face-off
| **Criteria** | **Gamma** | **Arrakis-V2** | **Comparison Insights** |
| --- | --- | --- | --- |
| **1. Audits** | *3, High, Comprehensive, None* | *3, Medium-High, Comprehensive, None* | **Both have equally comprehensive audits, slight edge towards Gamma** |
| **2. Code Quality** | *Clarity: 5, LoC: ~930, Complexity: Low, Depth: 2, Inheritance: Yes (OpenZeppelin), Proxy Patterns: No, Storage Layout: 5, Dependencies: OpenZeppelin, Uniswap* | *Clarity: 4, LoC: ~1260, Complexity: Medium, Depth: 3, Inheritance: Yes (OpenZeppelin), Proxy Patterns: Yes (Upgradeable), Storage Layout: 4, Dependencies: OpenZeppelin, Uniswap* | **Gamma's code is more concise, less complex, but less featureful** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks, Sound* | *No YUL, Minimal Redundant Checks, Mostly Sound* | **Both are well-optimized, with a slight edge to Arrakis-V2** |
| **4. Feature 1: Multi-Position Support** | *N* | *Y (with support for multiple fee tiers)* | **Arrakis-V2 supports multi-position** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *Y (via the `rebalance` function with swap payload)* | **Arrakis-V2 supports generic calldata swap during rebalancing** |
| **6. Feature 3: Leveraged Farming** | *N* | *N* | **Neither currently supports leveraged farming** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (uses pool prices directly)* | *N (uses Uniswap V3's TWAP, no external oracles)* | **Both rely on internal price mechanisms, not external oracles** |
| **8. Accounting Methodology** | *Basic Share-Based: shares worth a constant proportion of each token, No Leverage Support, Simple* | *Custom, with fee growth and global tracking, Manager Fee BPS, More Complex* | **Gamma uses simple share-based accounting; Arrakis-V2's methodology is more nuanced** |
| **9. Access Control** |  *Owner*: deploy, update, pause, manage funds | *Owner*: deploy, update, pause, manage funds, *Manager*: manage vault settings, allowances | **Arrakis-V2's access control is more comprehensive, with a distinct Manager role** |
| **10. Emergency Tasks** | *Y, Y, Simple (via UniProxy registry update)* | *Y, Y, More Comprehensive (with manager balance withdrawal)* | **Both support emergency tasks; Arrakis-V2's process is more comprehensive** |
| **11. Upgradability** | *N (Hypervisor), Y (via UniProxy registry update)* | *Y (Upgradeable contracts)* | **Both have upgradability mechanisms, but different approaches** |
| **12. DEX Compatibility** | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe), with potential for others* | **Gamma supports Uniswap and Algebra; Arrakis-V2 supports Uniswap with potential for more** |
