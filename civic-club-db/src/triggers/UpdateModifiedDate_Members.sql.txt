CREATE OR ALTER TRIGGER UpdateModifiedDate_Members
ON dbo.Members
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE m
    SET ModifiedDate = GETDATE()
    FROM dbo.Members m
    INNER JOIN inserted i
        ON m.MemberID = i.MemberID;
END;
GO