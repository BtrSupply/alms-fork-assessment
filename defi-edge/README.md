## Audits
  - Damian Rusinek
  - Lucash-dev (Immunefi/Hackerone)
  - Mudit Gupta
  - ABDK
  - Watchpug
  - Riley Holterhus

## Sample Deployments
```
  Uniswap:
    DefiEdgeStrategy:
      - 56:0x1f36e4aeda53f7fac687a8d3ee97d6a4909de512 # uniswap
  Algebra:
    DefiEdgeStrategy:
      - 42161:0xdb1ec4538569aa6600ea86dbda14af187ad9942e # camelot
```

## Gamma Face-off
| **Criteria** | **Gamma** | **Defi Edge** | **Comparison Insights** |
|--------------|-----------|---------------|--------------------------|
| **1. Audits** | *3, High quality, Comprehensive* | *7, Medium-High quality, Detailed* | **Audit Count: Gamma (3), Defi Edge (7)** |
| **2. Code Quality** | *Clarity: 5, LoC: ~930, Complexity: Low* | *Clarity: 4, LoC: ~850, Complexity: Medium* | **Code Complexity: Gamma (Low), Defi Edge (Medium)** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks* | *Some Inline Assembly (YUL), Moderate Redundant Checks* | **YUL Usage: Gamma (No), Defi Edge (Yes)** |
| **4. Feature 1: Multi-Position Support** | *N* | *Y (via multiple ticks)* | **Multi-Position Support: Gamma (No), Defi Edge (Yes)** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *Y (via generic calldata support)* | **Generic Calldata Rebalancing: Gamma (No), Defi Edge (Yes)** |
| **6. Feature 3: Leveraged Farming** | *N* | *N* | **Leveraged Farming: Both (No)** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (pool prices directly)* | *Y (Chainlink-based feeds)* | **Oracle Reliance: Gamma (No), Defi Edge (Yes, Chainlink)** |
| **8. Accounting Methodology** | *Basic Share-Based* | *Hybrid Share-Based with Chainlink feeds* | **Accounting Methodology: Gamma (Basic), Defi Edge (Hybrid)** |
| **9. Access Control** | *Owner-only* | *Multi-role (Owner, Manager, Executor)* | **Access Control Roles: Gamma (1), Defi Edge (3)** |
| **10. Emergency Tasks** | *Y, Simple* | *Y, Complex* | **Emergency Task Complexity: Gamma (Simple), Defi Edge (Complex)** |
| **11. Upgradability** | *Partial (via UniProxy)* | *Full (Upgradeable contracts)* | **Upgradability: Gamma (Partial), Defi Edge (Full)** |
| **12. DEX Compatibility** | *Uniswap, Algebra* | *Uniswap, Algebra* | **Supported DEXs: Both (Uniswap, Algebra)** |