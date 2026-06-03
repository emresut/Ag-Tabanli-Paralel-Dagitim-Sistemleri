SELECT 
    dp.name AS role_name,
    pe.permission_name,
    pe.state_desc,
    OBJECT_NAME(pe.major_id) AS object_name
FROM sys.database_permissions pe
JOIN sys.database_principals dp
    ON pe.grantee_principal_id = dp.principal_id
WHERE dp.name IN ('readonly_user', 'readwrite_user', 'admin_user')
ORDER BY dp.name, object_name, pe.permission_name;