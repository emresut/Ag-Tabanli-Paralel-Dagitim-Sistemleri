USE project_5_db;

SELECT 'raw_employee_table' AS table_name, COUNT(*) AS total_count
FROM raw_employee_table
UNION ALL
SELECT 'messy_employee_table', COUNT(*)
FROM messy_employee_table
UNION ALL
SELECT 'clean_employee_table', COUNT(*)
FROM clean_employee_table;