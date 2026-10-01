SELECT
    i.name AS IndexName,
    ips.avg_fragmentation_in_percent AS FragmentationPercent,
    ips.page_count AS PageCount,
    OBJECT_SCHEMA_NAME(ips.object_id) AS SchemaName,
    OBJECT_NAME(ips.object_id) AS TableName
FROM
    sys.dm_db_index_physical_stats(
        DB_ID(),
        NULL,
        NULL,
        NULL,
        'LIMITED'
    ) AS ips
INNER JOIN sys.indexes AS i
    ON
        ips.object_id = i.object_id
        AND ips.index_id = i.index_id
WHERE
    ips.index_id > 0
    AND ips.page_count >= 1000
ORDER BY ips.avg_fragmentation_in_percent DESC;
