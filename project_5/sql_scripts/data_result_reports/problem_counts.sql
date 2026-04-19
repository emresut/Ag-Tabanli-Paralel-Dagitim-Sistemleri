USE project_5_db;

SELECT 'Invalid Age' AS issue_type, COUNT(*) AS issue_count
FROM messy_employee_table
WHERE TRY_CAST(Age AS INT) IS NULL OR TRY_CAST(Age AS INT) NOT BETWEEN 18 AND 65

UNION ALL

SELECT 'Invalid Email', COUNT(*)
FROM messy_employee_table
WHERE Email NOT LIKE '%_@_%._%'

UNION ALL

SELECT 'Invalid Salary', COUNT(*)
FROM messy_employee_table
WHERE TRY_CAST(Salary AS DECIMAL(12,2)) IS NULL OR TRY_CAST(Salary AS DECIMAL(12,2)) <= 0

UNION ALL

SELECT 'Invalid Join Date', COUNT(*)
FROM messy_employee_table
WHERE TRY_CONVERT(DATE, Join_Date, 101) IS NULL
  AND TRY_CONVERT(DATE, Join_Date, 103) IS NULL

UNION ALL

SELECT 'Trim Needed In First_Name', COUNT(*)
FROM messy_employee_table
WHERE First_Name <> LTRIM(RTRIM(First_Name))

UNION ALL

SELECT 'Department Format Inconsistent', COUNT(*)
FROM messy_employee_table
WHERE Department_Region LIKE '%_%';