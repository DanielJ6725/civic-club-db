CREATE TABLE Memberships (
    MembershipID INT IDENTITY(1,1) PRIMARY KEY,
    MemberID INT NOT NULL FOREIGN KEY REFERENCES Members(MemberID),
    MembershipTypeID INT NOT NULL FOREIGN KEY REFERENCES MembershipTypes(MembershipTypeID),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Status NVARCHAR(20) DEFAULT 'Active',
    CHECK (StartDate <= EndDate)
);
GO