CREATE TRIGGER trg_schema_change_log
ON DATABASE
FOR 
    CREATE_TABLE,
    ALTER_TABLE,
    DROP_TABLE,
    CREATE_INDEX,
    DROP_INDEX
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @event_data XML = EVENTDATA();

    INSERT INTO schema_change_log (
        event_type,
        object_name,
        object_type,
        sql_command,
        changed_by
    )
    VALUES (
        @event_data.value('(/EVENT_INSTANCE/EventType)[1]', 'NVARCHAR(100)'),
        @event_data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'NVARCHAR(255)'),
        @event_data.value('(/EVENT_INSTANCE/ObjectType)[1]', 'NVARCHAR(100)'),
        @event_data.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'NVARCHAR(MAX)'),
        SYSTEM_USER
    );
END;