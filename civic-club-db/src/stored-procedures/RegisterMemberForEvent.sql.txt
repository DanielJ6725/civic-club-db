CREATE OR ALTER PROCEDURE dbo.RegisterMemberForEvent
    @EventID INT,
    @MemberID INT,
    @RegistrationDate DATE = NULL,
    @AttendanceStatus NVARCHAR(50) = 'Registered'
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.EventRegistrations (EventID, MemberID, RegistrationDate, AttendanceStatus)
    VALUES (
        @EventID,
        @MemberID,
        COALESCE(@RegistrationDate, CAST(GETDATE() AS date)),
        @AttendanceStatus
    );
END;
GO