CREATE OR ALTER PROCEDURE dbo.CreateMembership
    @MemberID INT,
    @MembershipTypeID INT,
    @StartDate DATE,
    @EndDate DATE,
    @Status NVARCHAR(20) = 'Active'
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Memberships (MemberID, MembershipTypeID, StartDate, EndDate, Status)
    VALUES (@MemberID, @MembershipTypeID, @StartDate, @EndDate, @Status);
END;
GO