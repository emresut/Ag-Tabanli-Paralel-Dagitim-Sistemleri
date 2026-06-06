CREATE TABLE schema_change_log (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    event_type NVARCHAR(100),
    object_name NVARCHAR(255),
    object_type NVARCHAR(100),
    sql_command NVARCHAR(MAX),
    changed_by NVARCHAR(100),
    changed_at DATETIME DEFAULT GETDATE()
);