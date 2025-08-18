# HR-Case01: Standardize Employee Last Names (PostgreSQL)

## Business Context  
The HR team needs to unify how employee last names are displayed in dashboards and internal reports. Current column names are too technical and inconsistent for non-technical stakeholders. Standardization is required for clarity and usability.

## Table  
- **worker**(worker_id, first_name, last_name, department, salary, joining_date)

## Problem  
Display the last name of each employee using the alias `WORKER_LASTNAME` and sort them alphabetically (ASC).

## SQL Query  
```sql
SELECT last_name AS WORKER_LASTNAME
FROM worker
ORDER BY last_name ASC;

```
## Expected Output  
| WORKER_LASTNAME |
|-----------------|
| Anderson        |
| Brown           |
| Johnson         |
| Smith           |

## Key Learning Points  
- Using **column aliases** for business-friendly reporting  
- Sorting data with **ORDER BY**  
- Reinforcing **PostgreSQL syntax fundamentals**

## Business Impact  
- Standardized column naming for HR dashboards  
- Improved readability for non-technical stakeholders  
- Foundation for more complex employee reporting  

---

**Note on Data Privacy**  
All employee records in this case are simulated data created for demonstration purposes. No real employee information was used.  
