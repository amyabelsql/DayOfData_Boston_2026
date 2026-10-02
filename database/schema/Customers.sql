CREATE TABLE dbo.Customers
(
    CustomerId int IDENTITY (1, 1) NOT NULL,
    CustomerName nvarchar(200) NOT NULL,
    EmailAddress nvarchar(320) NULL,
    CreatedAt datetime2(0) NOT NULL
    CONSTRAINT DF_Customers_CreatedAt DEFAULT SYSUTCDATETIME(),
    CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerId)
);
