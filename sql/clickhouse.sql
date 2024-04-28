CREATE TABLE odbc_test
(
    `ID` Int32,
    `Name` String,
    `Age` Int32
)
ENGINE = ODBC('DSN=mssqlconn;UID=sa;PWD={Pass@word}', 'Test', 'TestData');

SELECT * FROM odbc_test;