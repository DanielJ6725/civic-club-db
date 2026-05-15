CREATE OR ALTER PROCEDURE dbo.RecordPayment
    @MemberID INT,
    @MembershipID INT,
    @Amount DECIMAL(10,2),
    @PaymentDate DATE = NULL,
    @PaymentMethod NVARCHAR(100) = NULL,
    @Notes NVARCHAR(1000) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Payments (MemberID, MembershipID, Amount, PaymentDate, PaymentMethod, Notes)
    VALUES (
        @MemberID,
        @MembershipID,
        @Amount,
        COALESCE(@PaymentDate, CAST(GETDATE() AS date)),
        @PaymentMethod,
        COALESCE(@Notes, '')
    );
END;
GO
