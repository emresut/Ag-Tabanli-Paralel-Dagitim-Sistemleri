GRANT SELECT ON employee_public_view TO readonly_user;
DENY SELECT ON employee_data TO readonly_user;

GRANT SELECT ON employee_public_view TO readwrite_user;
GRANT INSERT, UPDATE ON employee_data TO readwrite_user;
DENY SELECT ON employee_data TO readwrite_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON employee_data TO admin_user;
GRANT SELECT ON employee_public_view TO admin_user;