CREATE TABLE dbo.Orders
(
    OrderId bigint IDENTITY (1, 1) NOT NULL,
    CustomerId int NOT NULL,
    OrderDate datetime2(0) NOT NULL,
    TotalAmount decimal(12, 2) NOT NULL,
    Status varchar(20) NOT NULL,
    CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED (OrderId),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerId)
    REFERENCES dbo.Customers (CustomerId),
    CONSTRAINT CK_Orders_TotalAmount CHECK (TotalAmount >= 0)
);
