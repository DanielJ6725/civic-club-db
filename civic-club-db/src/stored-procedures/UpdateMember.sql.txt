CREATE OR ALTER PROCEDURE dbo.UpdateMember(
    @MemberID      int,
    @FirstName     NVARCHAR(50)  = NULL,
    @LastName      NVARCHAR(50)  = NULL,
    @Email         NVARCHAR(255) = NULL,
    @Phone         NVARCHAR(30)  = NULL,
    @StreetAddress NVARCHAR(255) = NULL,
    @City          NVARCHAR(100) = NULL,
    @State         NVARCHAR(50)  = NULL,
    @ZipCode       NVARCHAR(20)  = NULL,
    @Status        NVARCHAR(50)  = NULL)
AS
BEGIN
    UPDATE dbo.Members
    SET FirstName = COALESCE(@FirstName, FirstName),
        LastName = COALESCE(@LastName, LastName),
        Email = COALESCE(@Email, Email),
        Phone = COALESCE(@Phone, Phone),
        StreetAddress = COALESCE(@StreetAddress, StreetAddress),
        City = COALESCE(@City, City),
        State = COALESCE(@State, State),
        Zipcode = COALESCE(@Zipcode, Zipcode),
        Status = COALESCE(@Status, Status)
    WHERE MemberID = @MemberID;
END;
GO