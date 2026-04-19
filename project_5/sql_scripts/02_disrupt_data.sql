USE project_5_db;

UPDATE messy_employee_table
SET Age = 'unknown'
WHERE Employee_ID LIKE '%5' AND Age IS NOT NULL;

UPDATE messy_employee_table
SET Email = 'invalid_email'
WHERE Employee_ID LIKE '%3';

UPDATE messy_employee_table
SET First_Name = '  ' + First_Name + '  '
WHERE Employee_ID LIKE '%2';

UPDATE messy_employee_table
SET Salary = '-5000'
WHERE Employee_ID LIKE '%7';

UPDATE messy_employee_table
SET Phone = 'no-phone'
WHERE Employee_ID LIKE '%7';

UPDATE messy_employee_table
SET Department_Region = 'Admin_Nevada'
WHERE Employee_ID LIKE '%1';

UPDATE messy_employee_table
SET Join_Date = 'not_a_date'
WHERE Employee_ID LIKE '%3';