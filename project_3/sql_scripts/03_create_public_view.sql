CREATE VIEW employee_public_view AS
SELECT
    Employee_ID,
    First_Name,
    Last_Name,
    Age,
    Department_Region,
    Status,
    Join_Date,
    Performance_Score,
    Remote_Work
FROM employee_data;