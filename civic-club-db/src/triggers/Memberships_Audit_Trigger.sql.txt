CREATE OR ALTER TRIGGER Memberships_Audit_Trigger
ON dbo.Memberships
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Memberships_Audit
    (
        MembershipID,
        MemberID,
        MembershipTypeID,
        NewStartDate,
        NewEndDate,
        NewStatus,
        ActionType
    )
    SELECT
        i.MembershipID,
        i.MemberID,
        i.MembershipTypeID,
        i.StartDate,
        i.EndDate,
        i.Status,
        'INSERT'
    FROM inserted AS i
    WHERE NOT EXISTS (
        SELECT 1 FROM deleted AS d WHERE d.MembershipID = i.MembershipID
    );

    INSERT INTO dbo.Memberships_Audit
    (
        MembershipID,
        MemberID,
        MembershipTypeID,
        OldStartDate,
        NewStartDate,
        OldEndDate,
        NewEndDate,
        OldStatus,
        NewStatus,
        ActionType
    )
    SELECT
        i.MembershipID,
        i.MemberID,
        i.MembershipTypeID,
        d.StartDate,
        i.StartDate,
        d.EndDate,
        i.EndDate,
        d.Status,
        i.Status,
        'UPDATE'
    FROM inserted AS i
    INNER JOIN deleted AS d
        ON i.MembershipID = d.MembershipID;

    INSERT INTO dbo.Memberships_Audit
    (
        MembershipID,
        MemberID,
        MembershipTypeID,
        OldStartDate,
        OldEndDate,
        OldStatus,
        ActionType
    )
    SELECT
        d.MembershipID,
        d.MemberID,
        d.MembershipTypeID,
        d.StartDate,
        d.EndDate,
        d.Status,
        'DELETE'
    FROM deleted AS d
    WHERE NOT EXISTS (
        SELECT 1 FROM inserted AS i WHERE i.MembershipID = d.MembershipID
    );
END;
GO