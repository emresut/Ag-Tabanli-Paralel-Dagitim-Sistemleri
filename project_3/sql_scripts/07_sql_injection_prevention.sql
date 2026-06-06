DECLARE @name NVARCHAR(100);

--SET @name = 'Bob';
SET @name = ''' OR 1=1 --';

EXEC sp_executesql
N'
SELECT *
FROM employee_data
WHERE First_Name = @name
',
N'@name NVARCHAR(100)',
@name;