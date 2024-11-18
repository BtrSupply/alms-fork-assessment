## Audits
  - Omniscia https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4/
  - Zellic https://steer.finance/wp-content/uploads/2023/05/FILE_2279.pdf

## Sample Deployment
```
Uniswap:
  UniswapMultiPositionLiquidityManager:
    - 137:0x434bf4902c0dcd515bc76a302f20c9c45b844b1b # uniswap
    - 137:0x4655196cbec85a507450f8d8252e38bedbf0e2d5 # sushiswap
Algebra:
  AlgebraMultiPositionLiquidityManager:
    - 137:0xac70aeb44eb2630df830323dc0e35023b7cb6086 # quickswap
```

## Gamma Face-off
Here is the comparison table in the identical format, comparing **Gamma** and **Steer**:

| **Criteria** | **Gamma** | **Steer** | **Comparison Insights** |
| --- | --- | --- | --- |
| **1. Audits** | *3, High, Comprehensive, None* | *2, Medium-High, Comprehensive, None* | **Both project have comprehensive audits, Gamma auditors being more reputable** |
| **2. Code Quality** | *Clarity: 5, LoC: ~930, Complexity: Low, Depth: 2, Inheritance: Yes (OpenZeppelin), Proxy Patterns: No, Storage Layout: 5, Dependencies: OpenZeppelin, Uniswap* | *Clarity: 4, LoC: ~1070, Complexity: Medium, Depth: 2-3, Inheritance: Yes (OpenZeppelin), Proxy Patterns: Yes (UUPS), Storage Layout: 4, Dependencies: OpenZeppelin, Uniswap* | **Steer's code is concise given its features, and uses UUPS for upgradeability** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks, Sound* | *No YUL, Few Redundant Checks, Sound* | **Both are well-optimized, with no significant differences in this aspect** |
| **4. Feature 1: Multi-Position Support** | *N* | *Y (Using `UniswapMultiPositionLiquidityManager` contract)* | **Steer supports multi-position, whereas Gamma does not** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *N* | **Neither protocol supports generic calldata rebalancing** |
| **6. Feature 3: Leveraged Farming** | *N* | *N* | **Leveraged farming is not supported by either Gamma or Steer** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (uses pool prices directly)* | *N (uses Uniswap V3's internal price mechanisms)* | **Both rely on internal price mechanisms, not external oracles** |
| **8. Accounting Methodology** | *Basic Share-Based: shares worth a constant proportion of each token, No Leverage Support, Simple* | *Custom, with performance and managing fees, No Leverage Support, More Complex* | **Steer's accounting methodology is more nuanced, with a focus on fee calculations** |
| **9. Access Control** | *Owner*: deploy, update, pause, manage funds | *Manager*: update ticks, pause/unpause, swap, add/remove liquidity, collect fees, update fees; *Steer*: collect Steer fees; *Vault Registry*: initialize | **Steer's access control is more comprehensive, with distinct roles** |
| **10. Emergency Tasks** | *Y, Y, Simple (via UniProxy registry update)* | *Y, N, Pausable (via OpenZeppelin's Pausable)* | **Both support pausing, but Gamma has more comprehensive emergency task capabilities** |
| **11. Upgradability** | *N (Hypervisor), Y (via UniProxy registry update)* | *Y (UUPS Upgradability)* | **Steer uses UUPS upgradability** |
| **12. DEX Compatibility** | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | **Gamma and Steer both support Uniswap and Algebra** |