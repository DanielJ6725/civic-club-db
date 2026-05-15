:r ..\src\setup\create_database.sql

:r ..\src\tables\Members.sql
:r ..\src\tables\MembershipTypes.sql
:r ..\src\tables\Memberships.sql
:r ..\src\tables\Payments.sql
:r ..\src\tables\Events.sql
:r ..\src\tables\EventRegistrations.sql

:r ..\src\stored-procedures\AddMember.sql
:r ..\src\stored-procedures\UpdateMember.sql
:r ..\src\stored-procedures\CreateMembershipType.sql
:r ..\src\stored-procedures\RecordPayment.sql
:r ..\src\stored-procedures\RegisterMemberForEvent.sql
:r ..\src\stored-procedures\CreateMembership.sql

:r ..\src\triggers\NoOverlappingActiveMemberships.sql

:r ..\src\indexes\indexes.sql
:r ..\src\constraints\Unique_EventRegistrations_EventID_MemberID.sql
:r ..\src\security\roles_permissions.sql

:r ..\src\audit\add_audit_columns.sql
:r ..\src\audit\Memberships_AuditTable.sql
:r ..\src\triggers\Memberships_Audit_Trigger.sql
:r ..\src\triggers\UpdateModifiedDate_Members.sql
