SELECT 
    DB_NAME(s.database_id) AS database_name,
    OBJECT_NAME(s.object_id, s.database_id) AS table_name,
    i.name AS index_name,
    s.user_seeks,
    s.user_scans,
    s.user_lookups,
    s.user_updates
FROM sys.dm_db_index_usage_stats s
JOIN sys.indexes i
    ON s.object_id = i.object_id
   AND s.index_id = i.index_id
WHERE s.database_id = DB_ID('project_1_db')
  AND s.object_id = OBJECT_ID('online_store_transactions');