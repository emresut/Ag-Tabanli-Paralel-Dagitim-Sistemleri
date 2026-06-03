CREATE TABLE audit_log (
    audit_id INT IDENTITY(1,1) PRIMARY KEY,
    operation_type NVARCHAR(20),
    employee_id NVARCHAR(50),
    executed_by NVARCHAR(100),
    execution_time DATETIME DEFAULT GETDATE()
);