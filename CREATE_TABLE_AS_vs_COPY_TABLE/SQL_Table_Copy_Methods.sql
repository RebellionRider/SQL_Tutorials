-- Author: Manish Sharma
-- YouTube: www.YouTube.com/@RebellionRider
-- Instagram: www.instagram.com/RebellionRider
-- Website: www.RebellionRider.com

-- PostgreSQL: Copy table with data using CREATE TABLE AS
CREATE TABLE new_table AS
SELECT * FROM source_table;

-- PostgreSQL: Copy table with data using CREATE TABLE and INSERT INTO
CREATE TABLE new_table (LIKE source_table);
INSERT INTO new_table SELECT * FROM source_table;

-- PostgreSQL: Copy table with data using pg_dump and pg_restore
-- To create a dump:
-- pg_dump -t source_table -f source_table.sql your_database
-- To restore the dump into a new table:
-- psql -d your_database -f source_table.sql

-- PostgreSQL: Copy table without data using CREATE TABLE
CREATE TABLE new_table (LIKE source_table);

-- PostgreSQL: Copy table with data using SELECT INTO
SELECT * INTO new_table FROM source_table;

-- PostgreSQL: Copy table without data using pg_dump and pg_restore
-- To restore the dump without data:
-- pg_restore --data-only -d your_database -f source_table.sql

-- PostgreSQL: Copy table without data using CREATE TABLE AS with NO DATA
CREATE TABLE new_table AS TABLE source_table WITH NO DATA;

-- Oracle: Copy table with data using CREATE TABLE AS SELECT
CREATE TABLE new_table AS
SELECT * FROM source_table;

-- Oracle: Copy table without data using CREATE TABLE AS SELECT with WHERE 1=0
CREATE TABLE new_table AS
SELECT * FROM source_table WHERE 1 = 0;

