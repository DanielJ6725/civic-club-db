ALTER TABLE dbo.EventRegistrations
ADD CONSTRAINT Unique_EventRegistrations_EventID_MemberID
UNIQUE (EventID, MemberID);
GO