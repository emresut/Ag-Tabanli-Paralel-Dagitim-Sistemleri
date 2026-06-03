-- Parametreli Sorgular
-- Kod ve veri kısımlarını birbirinden ayırıyor.
-- Kullanıcı girdileri sorgu metnine doğrudan eklenmemekte ve parametre olarak iletilmektedir.

DECLARE @name NVARCHAR(100);

--SET @name = 'Alice';
SET @name = ''' OR 1=1 --';

EXEC sp_executesql
N'
SELECT *
FROM employee_data
WHERE First_Name = @name
',
N'@name NVARCHAR(100)',
@name;