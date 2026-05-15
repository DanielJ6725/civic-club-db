CREATE ROLE ReadOnly;
CREATE ROLE DataEntry;
CREATE ROLE Admin;

GRANT SELECT ON dbo.Members TO ReadOnly;
GRANT SELECT ON dbo.MembershipTypes TO ReadOnly;
GRANT SELECT ON dbo.Memberships TO ReadOnly;
GRANT SELECT ON dbo.Payments TO ReadOnly;
GRANT SELECT ON dbo.Events TO ReadOnly;
GRANT SELECT ON dbo.EventRegistrations TO ReadOnly;

GRANT SELECT, INSERT, UPDATE ON dbo.Members TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON dbo.MembershipTypes TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON dbo.Memberships TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON dbo.Payments TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON dbo.Events TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON dbo.EventRegistrations TO DataEntry;

GRANT EXECUTE ON dbo.AddMember TO DataEntry;
GRANT EXECUTE ON dbo.UpdateMember TO DataEntry;
GRANT EXECUTE ON dbo.CreateMembership TO DataEntry;
GRANT EXECUTE ON dbo.CreateMembershipType TO DataEntry;
GRANT EXECUTE ON dbo.RecordPayment TO DataEntry;
GRANT EXECUTE ON dbo.RegisterMemberForEvent TO DataEntry;

GRANT CONTROL ON DATABASE::[Civic Center DB] TO Admin;
GO
