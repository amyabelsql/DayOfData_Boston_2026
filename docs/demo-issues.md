# Suggested demo issues

## Slow query review

Body

Review the customer order query in `dbo.GetCustomerOrderSummary`. Compare its plan and runtime with the current indexes. Remove private data from all evidence.

Labels `performance`, `needs-dba-review`

## Add a covering index for customer orders

Body

Review the proposed index on `Orders (CustomerId, OrderDate)` with included columns `TotalAmount` and `Status`. Check overlapping indexes, write cost, execution plans, and rollback.

Labels `index`, `performance`, `needs-dba-review`

## Add a status value to Orders

Body

Review the allowed order status values and decide whether a constraint or reference table is needed. Include migration and rollback steps.

Labels `schema-change`, `needs-dba-review`

## Check failed backup jobs

Body

Review backup job alerts and confirm that recent backups can be restored in a non-production environment.

Labels `maintenance`, `needs-dba-review`

## Review database access

Body

Check that database access follows the team's least-privilege rules. Do not include credentials or customer data.

Labels `security`, `needs-dba-review`
