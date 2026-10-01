CREATE NONCLUSTERED INDEX IX_Orders_CustomerId
    ON dbo.Orders (CustomerId);
GO

DROP INDEX IX_Orders_CustomerId_OrderDate ON dbo.Orders;
