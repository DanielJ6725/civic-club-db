CREATE TABLE Payments (
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,
    MemberID INT NOT NULL FOREIGN KEY REFERENCES Members(MemberID),
    MembershipID INT NOT NULL FOREIGN KEY REFERENCES Memberships(MembershipID),
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount > 0),
    PaymentDate DATE DEFAULT GETDATE(),
    PaymentMethod NVARCHAR(100),
    Notes NVARCHAR(1000) DEFAULT ''
);
GO