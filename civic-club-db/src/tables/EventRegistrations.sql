CREATE TABLE EventRegistrations (
    RegistrationID INT IDENTITY(1,1) PRIMARY KEY,
    EventID INT NOT NULL FOREIGN KEY REFERENCES Events(EventID),
    MemberID INT NOT NULL FOREIGN KEY REFERENCES Members(MemberID),
    RegistrationDate DATE DEFAULT GETDATE(),
    AttendanceStatus NVARCHAR(50) DEFAULT 'Registered'
);
GO