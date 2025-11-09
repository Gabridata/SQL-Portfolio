# Legal-Case05_OCR-Name-Standardization_MySQL

-- 1. Preview original data
SELECT 
    participant_id,
    participant_name AS original_name,
    participant_type,
    case_role
FROM legal_case_participants
WHERE participant_id IN (1, 2, 11, 12, 61, 62)
ORDER BY participant_id;

-- 2. Data standardization process
-- Remove leading/trailing whitespace
UPDATE legal_case_participants 
SET participant_name = TRIM(participant_name);

-- Apply basic title case capitalization
UPDATE legal_case_participants
SET participant_name = CONCAT(
    UPPER(SUBSTRING(participant_name, 1, 1)),
    LOWER(SUBSTRING(participant_name, 2))
);

-- Normalize multiple spaces
UPDATE legal_case_participants
SET participant_name = REPLACE(REPLACE(participant_name, '  ', ' '), '  ', ' ');

-- 3. Preview standardized results
SELECT 
    participant_id,
    participant_name AS standardized_name,
    participant_type,
    case_role
FROM legal_case_participants
WHERE participant_id IN (1, 2, 11, 12, 61, 62)
ORDER BY participant_id;

-- 4. Data quality verification
SELECT 
    COUNT(*) AS total_records,
    AVG(CHAR_LENGTH(participant_name)) AS avg_name_length,
    MIN(CHAR_LENGTH(participant_name)) AS min_name_length, 
    MAX(CHAR_LENGTH(participant_name)) AS max_name_length
FROM legal_case_participants;