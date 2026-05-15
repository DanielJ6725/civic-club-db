CREATE OR ALTER PROCEDURE dbo.CreateMembershipType(
    @Name NVARCHAR(100),
    @AnnualFees DECIMAL(10,2),
    @Description NVARCHAR(500) = NULL)
AS
BEGIN
    INSERT INTO dbo.MembershipTypes (Name, AnnualFees, Description)
    VALUES (@Name, @AnnualFees, @Description);
END;
GO
