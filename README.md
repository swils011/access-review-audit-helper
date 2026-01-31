# Access Review & Audit Helper

## Overview
This project demonstrates how identity data can be programmatically reviewed to support access governance, audit readiness, and least privilege enforcement.

The scripts simulate enterprise access review workflows commonly required for SOX audits, security assessments, and periodic identity governance reviews.

All data used is anonymized and does not represent real users.

## Security Use Case
Organizations must regularly validate that:
- Disabled or inactive accounts are not retaining access
- Dormant accounts are identified and remediated
- Access reviews are repeatable and auditable

This project automates those checks using PowerShell.

## What This Project Demonstrates
- Identity risk identification
- Access review automation
- Audit friendly reporting
- Practical PowerShell usage for security engineering

## Scripts
| Script | Purpose |
|------|--------|
| Get-StaleAccounts.ps1 | Identifies accounts inactive beyond a defined threshold |
| Get-DisabledAccounts.ps1 | Surfaces disabled accounts retaining directory objects |
| Export-AccessReview.ps1 | Produces CSV output suitable for auditors |

## Sample Output
Sample CSV output is provided to demonstrate how results could be reviewed by security, compliance, or audit teams.
