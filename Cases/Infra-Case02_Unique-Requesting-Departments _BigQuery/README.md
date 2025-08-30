# Infra-Case02_Unique-Requesting-Departments _BigQuery

## Business Context
The Infrastructure team manages servers, cloud services, and internal tools across different departments. Leadership requested a simple query to understand the distribution of departments making requests to Infrastructure.  
This case helps analysts learn how to fetch unique values from a column to create a cleaner basis for reporting.  

## Table
infrastructure_requests(
  request_id, 
  department, 
  request_type, 
  priority, 
  created_at
)

## Problem
Retrieve all unique department names that have made infrastructure requests.

## SQL Query
```sql
SELECT DISTINCT department
FROM `project.dataset.infrastructure_requests`;
```

## Expected Output
| department  |
|-------------|
| Engineering |
| Finance     |
| Marketing   |
| Operations  |
| Sales       |
| Support     |

## Key Learning Points  
- Using DISTINCT to fetch unique values.
- Understanding column-level deduplication in BigQuery.
- Providing a clean list of categories for further reporting.

# Business Impact
- Helps Infrastructure team identify which departments rely most on IT services.
- Simplifies reporting by eliminating duplicates.
- Provides input for dashboards on request volume by department.

---
**Note on Data Privacy**  
All records in this case are simulated data created for demonstration purposes.
