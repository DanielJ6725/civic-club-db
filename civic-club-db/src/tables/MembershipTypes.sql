CREATE TABLE MembershipTypes (
    MembershipTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    AnnualFees DECIMAL(10,2) NOT NULL CHECK (AnnualFees > 0),
    Description NVARCHAR(500)
);
GO