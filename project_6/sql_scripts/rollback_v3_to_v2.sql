ALTER TABLE employee_versioning_data
ADD Department_Region NVARCHAR(255);
GO

UPDATE employee_versioning_data
SET Department_Region = Department + '-' + Region;
GO

ALTER TABLE employee_versioning_data
DROP COLUMN Job_Title;