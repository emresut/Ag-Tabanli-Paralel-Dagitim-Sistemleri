SELECT TOP 20
    qs.execution_count,
    qs.total_worker_time,
    qs.total_elapsed_time,
    st.text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) st
WHERE st.text LIKE '%PERF_TEST_TEXAS_SUM%'
ORDER BY qs.total_elapsed_time DESC;