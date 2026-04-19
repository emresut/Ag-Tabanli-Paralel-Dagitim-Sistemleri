USE project_5_db;

IF OBJECT_ID('dbo.messy_employee_table', 'U') IS NOT NULL
    DROP TABLE dbo.messy_employee_table;
GO

SELECT *
INTO dbo.messy_employee_table
FROM dbo.raw_employee_table;