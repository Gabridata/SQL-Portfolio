# Supp-Case03_Customer-Initials-Extraction_MySQL
**SUPP** = Customer Support Operations

## Business Context
The Customer Support team handles thousands of service tickets per month.  
For reporting and dashboarding, leadership requested a way to **partially display customer names** — showing only the first three characters.  

This approach improves readability while keeping full names hidden, aligning with **data privacy best practices**.

---
## Table
support_tickets(
  ticket_id INT,
  customer_name VARCHAR(100),
  issue_category VARCHAR(50),
  priority VARCHAR(20),
  created_at DATE
)

---

## Problem
Display only the **first three characters** of each customer's name from the support_tickets table.

---

## SQL Query
```sql
SELECT 
    SUBSTRING(customer_name, 1, 3) AS customer_initials
FROM support_tickets;
```
## Expected Output
| customer_initials |
|-------------------|
| Ali               |
| Ben               |
| Cha               |
| Dia               |
| Eri               |

## Key Learning Points  
- Using SUBSTRING() in MySQL for string manipulation.
- Protecting customer privacy in reporting.
- Building user-friendly fields for dashboards.

# Business Impact
- Data Privacy: Customers’ full names are not exposed in dashboards.
- Dashboard Usability: Easier to read summaries and charts.
- Scalability: Supports >100 customer records monthly.

---
**Note on Data Privacy**  
All customer names in this case are simulated and generated for demonstration purposes.
No real customer information is used.
