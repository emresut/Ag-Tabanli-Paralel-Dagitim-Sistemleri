RESTORE DATABASE project_5_db_test1
FROM DISK = 'C:\sql_backups\project_5_db_full.bak'
WITH 
    MOVE 'project_5_db' TO 'C:\sql_backups\project_5_db_test1.mdf',
    MOVE 'project_5_db_log' TO 'C:\sql_backups\project_5_db_test1_log.ldf',
    REPLACE;
GO