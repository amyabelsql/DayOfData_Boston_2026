# Runbook for index changes

1. Open an issue with the query, workload, current plan, and measured impact.
2. Check existing indexes for duplicate or overlapping keys.
3. Propose the key and included columns. Note the write and storage cost.
4. Add a migration and a rollback script.
5. Test the change in a non-production environment.
6. Compare actual execution plans and workload measures before and after.
7. Ask a DBA to review the pull request and attach the plan.
8. Schedule the approved change and record the result.
9. Check index use after deployment. Remove the old index only when evidence supports it.

Check the target SQL Server version and edition before using online index options. Plan a rollback before deployment.
