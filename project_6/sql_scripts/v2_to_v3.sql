ALTER TABLE employee_versioning_data
DROP COLUMN Department_Region;
GO

ALTER TABLE employee_versioning_data
ADD Job_Title NVARCHAR(100);
GO

UPDATE employee_versioning_data
SET Job_Title = 'Project Manager'
WHERE Employee_ID LIKE '%5';