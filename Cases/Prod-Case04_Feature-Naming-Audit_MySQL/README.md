# Prod-Case04: Feature Naming Audit - MySQL
**Prod** = Product

## Business Context
The Product Operations team performs periodic audits on feature names. According to internal naming conventions, **all Beta features must start with "B-" (uppercase B followed by a hyphen)**.

This audit ensures consistency across teams and helps identify features that do not follow the required prefix format.

## Case Sensitivity Note
The convention is case-sensitive.  
This means:
- "B-NewFeature" is valid.
- "b-NewFeature" is not valid.

To enforce this in SQL, comparisons must use **BINARY**, which forces MySQL to treat uppercase and lowercase characters as different when evaluating matches.

## Problem
Find the position of the uppercase letter **'B'** in each feature name to verify whether Beta features correctly start with the "B-" prefix.

## Table
`product_features` (feature_id, feature_name, owner_team, release_date)

## Expected Output (sample)
| feature_name       | b_position |
|--------------------|------------|
| BetaDashboard      | 1          |
| MobileBuilder      | 0          |
| OnboardingFlow     | 0          |
| B-NewOnboarding    | 1          |
| b-NotificationSystem | 0        |
| B DataExport       | 1          |

## Key Learning Points
- Use **INSTR()** in MySQL to locate specific characters in text.
- Apply **BINARY** to ensure case-sensitive string evaluation.
- Naming audits can be automated to maintain consistency in product catalogs.

## Business Impact
- Ensures strict adherence to Beta feature naming conventions.
- Identifies features requiring correction before release.
- Maintains clarity and consistency in product documentation and system search behavior.

---

**Note on Data Privacy**  
All feature names used in this case are simulated and generated for demonstration purposes only.  
No real product or customer data is included.
