-- Prod-Case04_Feature-Naming-Audit_MySQL
SELECT 
    feature_name,
    CASE 
        WHEN INSTR(BINARY feature_name, 'B-') = 1 THEN 1
        ELSE 0
    END AS b_position
FROM product_features;
