CREATE TABLE dbo.Customers
(
    CustomerId int IDENTITY (1, 1) NOT NULL,
    CustomerName nvarchar(200) NOT NULL,
    EmailAddress nvarchar(320) NULL,
    CreatedAt datetime2(0) NOT NULL
    CONSTRAINT DF_Customers_CreatedAt DEFAULT SYSUTCDATETIME(),
    CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerId)
);
GO

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
GO

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
