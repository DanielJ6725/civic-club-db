CREATE OR ALTER TRIGGER dbo.NoOverlappingActiveMemberships
ON dbo.Memberships
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS
    (
        SELECT 1
        FROM inserted i
        JOIN dbo.Memberships m
          ON m.MemberID = i.MemberID
         AND m.MembershipID <> i.MembershipID
        WHERE i.Status = 'Active'
          AND m.Status = 'Active'
          AND i.StartDate <= m.EndDate
          AND m.StartDate <= i.EndDate
    )
    BEGIN
        ;THROW 50001, N'No overlapping Active memberships are allowed for the same member.', 1;
    END;

    IF EXISTS
    (
        SELECT 1
        FROM inserted a
        JOIN inserted b
          ON a.MemberID = b.MemberID
         AND a.MembershipID <> b.MembershipID
        WHERE a.Status = 'Active'
          AND b.Status = 'Active'
          AND a.StartDate <= b.EndDate
          AND b.StartDate <= a.EndDate
    )
    BEGIN
        ;THROW 50002, N'This statement includes overlapping Active memberships for the same member.', 1;
    END;
END;
GO