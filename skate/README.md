## Audits
  - Certik https://github.com/Range-Protocol/contracts/blob/master/audits/Certik-Audit.pdf
  - Halborn https://github.com/Range-Protocol/contracts/blob/master/audits/Halborn-Audit.pdf
  - Salusec https://github.com/Range-Protocol/contracts/blob/master/audits/Salusec-Audit.pdf
  - Veridise https://github.com/Range-Protocol/contracts/blob/master/audits/Veridise-Audit.pdf

## Sample Deployment
  - ...

## Gamma Face-off
| **Criteria** | **Gamma** | **Skate** | **Comparison Insights** |
| --- | --- | --- | --- |
| **1. Audits** | *3, High, Comprehensive, None* | *4, Medium, Comprehensive, None* | **Both protocols have multiple audits, Gamma's auditors being more reputable** |
| **2. Code Quality** | *Clarity: 5, LoC: ~930, Complexity: Low, Depth: 2, Inheritance: Yes (OpenZeppelin), Proxy Patterns: No, Storage Layout: 5, Dependencies: OpenZeppelin, Uniswap* | *Clarity: 4, LoC: ~680, Complexity: Medium, Depth: 2-3, Inheritance: Yes (OpenZeppelin), Proxy Patterns: Yes (UUPS), Storage Layout: 4, Dependencies: OpenZeppelin, Uniswap* | **Skate's code is very concise, slightly complex, Skate's use UUPS upgradeability** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks, Sound* | *No YUL, Few Redundant Checks, Sound* | **Both are well-optimized, with no significant differences in this aspect** |
| **4. Feature 1: Multi-Position Support** | *N* | *N* | **Neither Gamma nor Skate currently supports multi-position** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *N* | **Neither protocol supports generic calldata rebalancing** |
| **6. Feature 3: Leveraged Farming** | *N* | *N* | **Leveraged farming is not supported by either Gamma or Skate** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (uses pool prices directly)* | *N (uses Uniswap V3's internal price mechanisms)* | **Both rely on internal price mechanisms, not external oracles** |
| **8. Accounting Methodology** | *Basic Share-Based: shares worth a constant proportion of each token, No Leverage Support, Simple* | *Custom, with performance and managing fees, No Leverage Support, More Complex* | **Skate's accounting methodology is more nuanced, with a focus on fee calculations** |
| **9. Access Control** |  *Owner*: deploy, update, pause, manage funds | *Manager*: update ticks, pause/unpause, swap, add/remove liquidity, collect fees, update fees; *Factory*: initialize, upgrade | **Skate's access control is more comprehensive, with distinct roles for Manager and Owner** |
| **10. Emergency Tasks** | *Y, Y, Simple (via UniProxy registry update)* | *Y, N, Pausable (via OpenZeppelin's Pausable)* | **Both support pausing, but Gamma has more comprehensive emergency capabilities** |
| **11. Upgradability** | *N (Hypervisor), Y (via UniProxy registry update)* | *Y (UUPS Upgradability)* | **Skate's UUPS upgradability provides a more flexible and secure upgrade path** |
| **12. DEX Compatibility** | *Y (Uniswap), Y (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | *Y (Uniswap), Unknown (Algebra), N (Balancer/Gyroscope), N (Trader Joe)* | **Gamma and Skate both support Uniswap and Algebra** |
