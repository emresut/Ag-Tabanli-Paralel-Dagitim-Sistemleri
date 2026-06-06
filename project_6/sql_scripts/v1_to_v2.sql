ALTER TABLE employee_versioning_data
ADD Department NVARCHAR(100);
GO

ALTER TABLE employee_versioning_data
ADD Region NVARCHAR(100);
GO

UPDATE employee_versioning_data
SET
    Department = LEFT(Department_Region, CHARINDEX('-', Department_Region) - 1),
    Region = SUBSTRING(
        Department_Region,
        CHARINDEX('-', Department_Region) + 1,
        LEN(Department_Region)
    )
WHERE Department_Region IS NOT NULL
  AND CHARINDEX('-', Department_Region) > 0;