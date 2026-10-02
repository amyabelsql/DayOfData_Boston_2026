/*
Reason
The customer order query filters by CustomerId and sorts by OrderDate. The existing
CustomerId-only index does not include the selected values and can require lookups.
The new index keeps CustomerId as the leading key, adds OrderDate for ordering, and
includes TotalAmount and Status to cover that query. Drop the older index only after
checking its usage and other query needs.

Expected plan impact
The target query may use an ordered index seek and avoid key lookups. Confirm the
actual execution plan and workload impact in a non-production environment.

Rollback
Run database/indexes/rollback/V002__orders_customer_date_index.sql.
*/
CREATE NONCLUSTERED INDEX IX_Orders_CustomerId_OrderDate
    ON dbo.Orders (CustomerId, OrderDate)
    INCLUDE (TotalAmount, Status);
GO

DROP INDEX IX_Orders_CustomerId ON dbo.Orders;
