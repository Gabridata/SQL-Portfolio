\# Legal-Case05\_OCR-Name-Standardization\_MySQL

\*\*Legal Operations / Litigation Support\*\*



\## Business Context

A Canadian law firm is digitizing historical case files into a new case management platform. During OCR (Optical Character Recognition) extraction from scanned records, participant names were imported with inconsistent trailing whitespace, mixed capitalization formats, and occasional missing accent marks.



This inconsistency leads to:

\- Duplicate entries in case search and retrieval tools

\- Incorrect matching against government identity registries  

\- Formatting issues in automated correspondence and legal notifications



Ensuring standardized participant names is essential to maintain record accuracy and operational reliability.



\## Problem

Standardize participant names through comprehensive cleansing to ensure consistency across legal case data, addressing OCR-introduced formatting issues.



\## Table

`legal\_case\_participants`  

(case\_id, case\_number, participant\_id, participant\_name, participant\_type, case\_role)



\## Data Context

\- Jurisdiction: Canada

\- Case numbers follow standard provincial case formatting:

&nbsp; - Ontario → `YYYY-ON-#####`

&nbsp; - British Columbia → `YYYY-BC-#####` 

&nbsp; - Quebec → `YYYY-QC-#####`

\- Participant roles follow typical criminal/civil legal terminology.

\- Data is intentionally unbalanced to reflect real operational caseloads:

&nbsp; - ~70% defendants (accused parties)

&nbsp; - ~30% witnesses, plaintiffs, or legal counsel

\- Some names include French Canadian accents, some do not, simulating OCR variability.



\## Expected Output



| original\_name        | standardized\_name  | participant\_type | case\_role         |

|---------------------|-------------------|------------------|-------------------|

| "Élise Tremblay  "   | "Élise tremblay"  | witness          | Key witness       |

| "LIAM BROWN   "      | "Liam brown"      | defendant        | Primary accused   |

| "jean-pierre martin" | "Jean-pierre martin" | defendant    | Accused party     |



\*\*Technical Note:\*\* Basic title case standardization is applied. Compound names with hyphens will show partial capitalization (e.g., "Jean-pierre" instead of "Jean-Pierre"), reflecting a realistic first-step approach in data cleansing pipelines where complex name formatting requires additional specialized processing.



\## Key Learning Points

\- Use `RTRIM()` and `TRIM()` to remove trailing/leading whitespace.

\- Apply string functions for basic name capitalization standardization.

\- OCR-extracted records require systematic normalization.

\- Understand the limitations of simple text processing for complex name formats.

\- Text standardization is an essential step in data quality workflows used in legal processing environments.



\## Digitization workflows typically follow these stages:



| Step | Objective | Example SQL / Tooling |

|------|-----------|-----------------------|

| Whitespace cleanup | Remove trailing/leading empty characters | `TRIM()` / `RTRIM()` |

| Case normalization | Ensure consistent text casing | `CONCAT()`, `UPPER()`, `LOWER()` |

| Name formatting | Standardize compound names and accents | String manipulation functions |

| Advanced cleansing | Handle complex name formats and validation | Python (specialized libraries) |

| Entity resolution | Detect potentially duplicated identities | Python (FuzzyWuzzy), record-linkage libraries |



\## Business Impact

\- Reduces duplicate participant entries across multiple legal cases.

\- Ensures reliable matching with federal/provincial identity registries.

\- Improves accuracy and speed of legal search and document automation workflows.

\- Provides foundation for more advanced data quality initiatives.



\## Data Source Note

All names in this dataset are simulated for demonstration purposes.  

No real identities or case documents are used.

