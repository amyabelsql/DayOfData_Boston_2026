SELECT
    d.name AS DatabaseName,
    MAX(b.backup_finish_date) AS LastFullBackup
FROM sys.databases AS d
LEFT JOIN msdb.dbo.backupset AS b
    ON
        d.name = b.database_name
        AND b.type = 'D'
WHERE d.database_id > 4
GROUP BY d.name
ORDER BY LastFullBackup;
