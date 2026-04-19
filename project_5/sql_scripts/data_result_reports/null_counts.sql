USE project_5_db;

SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS null_age,
    SUM(CASE WHEN Join_Date IS NULL THEN 1 ELSE 0 END) AS null_join_date,
    SUM(CASE WHEN Salary IS NULL THEN 1 ELSE 0 END) AS null_salary,
    SUM(CASE WHEN Email IS NULL THEN 1 ELSE 0 END) AS null_email,
    SUM(CASE WHEN Phone IS NULL THEN 1 ELSE 0 END) AS null_phone
FROM clean_employee_table;