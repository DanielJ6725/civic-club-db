CREATE TABLE dbo.Memberships_Audit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    MembershipID INT,
    MemberID INT,
    MembershipTypeID INT,

    OldStartDate DATE,
    NewStartDate DATE,

    OldEndDate DATE,
    NewEndDate DATE,

    OldStatus NVARCHAR(20),
    NewStatus NVARCHAR(20),

    ActionType NVARCHAR(10), 
    ActionDate DATETIME DEFAULT GETDATE(),
    ActionUser NVARCHAR(100) DEFAULT SYSTEM_USER
);
GO