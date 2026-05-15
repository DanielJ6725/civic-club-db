CREATE OR ALTER PROCEDURE AddMember(
    @FirstName NVARCHAR(100),
    @LastName NVARCHAR(100),
    @Email NVARCHAR(255),
    @Phone NVARCHAR(20),
    @StreetAddress NVARCHAR(255) = NULL,
    @City NVARCHAR(100) = NULL,
    @State NVARCHAR(50) = NULL,
    @ZipCode NVARCHAR(20) = NULL,
    @Status NVARCHAR(50) = 'Active'
)
AS
BEGIN
    INSERT INTO dbo.Members
    (FirstName,LastName, Email, Phone, StreetAddress, City, State, Zipcode, Status)
    VALUES
    (@FirstName, @LastName, @Email, @Phone, @StreetAddress, @City, @State, @ZipCode, @Status);
END;
GO