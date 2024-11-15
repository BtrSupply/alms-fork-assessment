## Audits
  - Quantstamp https://github.com/ichifarm/ichi-oneToken/blob/master/audits/quantstamp/audit.pdf
  - Solidified https://github.com/ichifarm/ichi-oneToken/blob/master/audits/solidified/audit.pdf
  - Certik https://skynet.certik.com/projects/ichi
  - Bramah Systems https://github.com/ichifarm/audit/blob/main/Ichi_Farm_Audit_Bramah.pdf

## Sample Deployment
```
  Uniswap:
    IchiVault:
      - 137:0x711901e4b9136119fb047abe8c43d49339f161c3 # uniswap
      - 56:0x80d9d313d2170cb51a769f9dbd0a11f97be28a07 # pancakeswap
  Algebra:
    IchiVault: []
```

## Gamma Details (Comparison Benchmark)
| **Criteria** | **Gamma** | **Ichi** | **Comparison Insights** |
|--------------|-----------|---------------|--------------------------|
| **1. Audits** | *3, High quality, Comprehensive* | *4, Medium-High quality, Detailed* | **Audit Count: Gamma (3), Ichi (4)** |
| **2. Code Quality** | *Clarity: 5, LoC: ~1,500, Complexity: Low* | *Clarity: 4, LoC: ~2,000, Complexity: Medium* | **Code Complexity: Gamma (Low), Ichi (Medium)** |
| **3. Code Optimization** | *No YUL, Few Redundant Checks* | *No YUL, Moderate Redundant Checks* | **YUL Usage: Gamma (No), Ichi (No)** |
| **4. Feature 1: Multi-Position Support** | *N* | *N* | **Multi-Position Support: Gamma (No), Ichi (No)** |
| **5. Feature 2: Generic Calldata Rebalancing** | *N* | *Y (via generic calldata support)* | **Generic Calldata Rebalancing: Gamma (No), Ichi (No)** |
| **6. Feature 3: Leveraged Farming** | *N* | *N* | **Leveraged Farming: Both (No)** |
| **7. Feature 4: Oracle Reliance (Price Feed)** | *N (pool prices directly)* | *N (Uniswap TWAP)* | **Oracle Reliance: Gamma (No), Ichi (No)** |
| **8. Accounting Methodology** | *Basic Share-Based* | *Basic Share-Based* | **Accounting Methodology: Gamma (Basic), Ichi (Basic)** |
| **9. Access Control** | *Owner-only* | *Multi-role (Owner, Manager, Executor)* | **Access Control Roles: Gamma (1), Ichi (3)** |
| **10. Emergency Tasks** | *Y, Simple* | *Y, Complex* | **Emergency Task Complexity: Gamma (Simple), Ichi (Complex)** |
| **11. Upgradability** | *Partial (via UniProxy)* | *Full (Upgradeable contracts)* | **Upgradability: Gamma (Partial), Ichi (Full)** |
| **12. DEX Compatibility** | *Uniswap, Algebra* | *Uniswap, Algebra* | **Supported DEXs: Both (Uniswap, Algebra)** |