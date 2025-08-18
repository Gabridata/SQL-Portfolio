-- HR-Case01_Standardize-Employee-LastNames_PostgreSQL: solution.sql
-- Alias for business-friendly reporting (PostgreSQL)

SELECT last_name AS WORKER_LASTNAME
FROM worker
ORDER BY last_name ASC;