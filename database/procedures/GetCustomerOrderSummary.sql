CREATE OR ALTER PROCEDURE dbo.GetCustomerOrderSummary
    @CustomerId int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        o.OrderId,
        o.OrderDate,
        o.TotalAmount,
        o.Status
    FROM dbo.Orders AS o
    WHERE o.CustomerId = @CustomerId
    ORDER BY o.OrderDate DESC;
END;
