-- Supp-Case03_Customer-Initials-Extraction_MySQL
SELECT 
    SUBSTRING(customer_name, 1, 3) AS customer_initials
FROM support_tickets;
