CREATE OR ALTER PROCEDURE dbo.GetRecentOrders
    @StartDate datetime2(0),
    @EndDate datetime2(0)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        o.OrderId,
        o.CustomerId,
        o.OrderDate,
        o.TotalAmount,
        o.Status
    FROM dbo.Orders AS o
    WHERE
        o.OrderDate >= @StartDate
        AND o.OrderDate < @EndDate
    ORDER BY o.OrderDate DESC;
END;
