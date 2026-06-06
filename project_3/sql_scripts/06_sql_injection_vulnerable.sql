DECLARE @name NVARCHAR(100);
DECLARE @sql NVARCHAR(MAX);

-- SET @name = 'Bob';
SET @name = ''' OR 1=1 --';


SET @sql =
'SELECT *
FROM employee_data
WHERE First_Name = ''' + @name + '''';

PRINT @sql;

EXEC(@sql);