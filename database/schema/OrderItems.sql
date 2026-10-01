CREATE TABLE dbo.OrderItems
(
    OrderItemId bigint IDENTITY (1, 1) NOT NULL,
    OrderId bigint NOT NULL,
    ProductName nvarchar(200) NOT NULL,
    Quantity int NOT NULL,
    UnitPrice decimal(12, 2) NOT NULL,
    CONSTRAINT PK_OrderItems PRIMARY KEY CLUSTERED (OrderItemId),
    CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderId)
    REFERENCES dbo.Orders (OrderId),
    CONSTRAINT CK_OrderItems_Quantity CHECK (Quantity > 0),
    CONSTRAINT CK_OrderItems_UnitPrice CHECK (UnitPrice >= 0)
);
