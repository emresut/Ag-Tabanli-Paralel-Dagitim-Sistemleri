CREATE TRIGGER trg_employee_update
ON employee_data
AFTER UPDATE
AS
BEGIN

    INSERT INTO audit_log (
        operation_type,
        employee_id,
        executed_by
    )
    SELECT
        'UPDATE',
        Employee_ID,
        SYSTEM_USER
    FROM inserted;

END;