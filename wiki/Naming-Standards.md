# Naming standards

- Use schema-qualified names such as `dbo.Orders`.
- Use PascalCase for tables and columns.
- Prefix primary key constraints with `PK_`.
- Prefix foreign key constraints with `FK_`.
- Prefix check constraints with `CK_`.
- Prefix default constraints with `DF_`.
- Name indexes with `IX_<Table>_<KeyColumns>`.
- Name migrations with a version and a short action, such as `V001__create_tables.sql`.
- Keep names clear and stable. Do not include dates that change the meaning.
