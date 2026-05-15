CREATE UNIQUE INDEX IX_Members_Email
ON dbo.Members (Email);
GO

CREATE INDEX IX_Memberships_MemberID
ON dbo.Memberships (MemberID);
GO

CREATE INDEX IX_Memberships_Member_Status_Dates
ON dbo.Memberships (MemberID, Status, StartDate, EndDate);
GO

CREATE INDEX IX_Payments_PaymentDate
ON dbo.Payments (PaymentDate);
GO

CREATE INDEX IX_Events_EventDate
ON dbo.Events (EventDate);
GO