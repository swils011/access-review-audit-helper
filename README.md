# Access Review & Audit Helper

## Overview
This project demonstrates how identity data can be programmatically reviewed to support access governance, audit readiness, and least-privilege enforcement in an enterprise environment.

The tooling simulates access review workflows commonly required for SOX audits, security assessments, and periodic identity governance reviews.

All data used in this repository is anonymized and does not represent real users.

---

## Security Use Case
Organizations must regularly validate that:
- Disabled or inactive accounts are not retaining access
- Dormant accounts are identified and reviewed
- Access reviews are repeatable, consistent, and auditable

This project automates those checks using PowerShell.

---

## What This Project Demonstrates
- Identity risk identification
- Access review automation
- Audit-friendly reporting
- Practical PowerShell usage for security engineering

---

## Scripts

| Script | Purpose |
|------|--------|
| export-access-review.ps1 | Generates an audit ready CSV that surfaces identity risk and supports repeatable access reviews without manual investigation |

### export-access-review.ps1

Exports identity records into a consistent CSV format and flags accounts that may require review due to disabled status or extended inactivity.

**Use cases:**
- Periodic access reviews
- Audit and compliance support
- Least-privilege enforcement

**Run example:**
```powershell
pwsh ./scripts/export-access-review.ps1

## Sample Output

After running the script, the project generates an audit friendly CSV:

`output/access-review-results.csv`

Example rows:

| UserPrincipalName         | Enabled | LastLogonDate | DaysInactive | RiskFlag         |
|---------------------------|---------|---------------|-------------:|------------------|
| alex.jordan@example.com   | TRUE    | 12/10/2025    | 52           | No Risk          |
| taylor.morgan@example.com | FALSE   | 6/1/2024      | 609          | Disabled Account |
| jamie.lee@example.com     | TRUE    | 8/15/2024     | 534          | Dormant Account  |

Screenshot from a test run:

![Sample output](docs/screenshots/access-review-results.png)
