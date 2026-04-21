BACKUP DATABASE project_5_db
TO DISK = 'C:\sql_backups\project_5_db_diff.bak'
WITH DIFFERENTIAL, STATS = 10;
GO