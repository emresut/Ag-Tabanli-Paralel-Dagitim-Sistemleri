USE project_5_db;

IF OBJECT_ID('clean_employee_table', 'U') IS NOT NULL
    DROP TABLE clean_employee_table;

CREATE TABLE clean_employee_table (
    Employee_ID NVARCHAR(50) PRIMARY KEY,
    First_Name NVARCHAR(50) NULL,
    Last_Name NVARCHAR(50) NULL,
    Age INT NULL,
    Department NVARCHAR(100) NULL,
    Region NVARCHAR(100) NULL,
    Status NVARCHAR(50) NULL,
    Join_Date DATE NULL,
    Salary DECIMAL(12,2) NULL,
    Email NVARCHAR(255) NULL,
    Phone NVARCHAR(50) NULL,
    Performance_Score NVARCHAR(50) NULL,
    Remote_Work BIT NULL
);