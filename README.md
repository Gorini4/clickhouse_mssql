# Example of connecting ClickHouse to Microsoft SQL Server

This repository contains scripts demonstrating ClickHouse's ability to connect to external databases using ODBC table engine.

## Instructions

1. Clone the repository and run containers with command `docker compose up`. It will create two docker containers - ClickHouse and SQL Server.
1. Connect to the SQL Server (with DBeaver, DataGrip, etc.) and run script `sql/mssql_init.sql`. Connection properties: server - localhost, port - 11433, user - sa, password - Pass@word.
1. Connect to the ClickHouse (with DBeaver, DataGrip, etc.) and run script `sql/clickhouse.sql`. Connection properties: server - localhost, port - 18123, user - default, leave password empty.

As a result of ClickHouse select query, you will see the data selected from the table located on SQL Server.