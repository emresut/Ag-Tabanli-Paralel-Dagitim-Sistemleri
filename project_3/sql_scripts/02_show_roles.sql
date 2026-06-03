SELECT name, type_desc
FROM sys.database_principals
WHERE type = 'R'
  AND name IN ('readonly_user', 'readwrite_user', 'admin_user');