IF NOT EXISTS (SELECT schema_id FROM sys.schemas WHERE name = 'Test')
BEGIN
    EXEC('CREATE SCHEMA Test');
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TestData')
BEGIN
    CREATE TABLE Test.TestData (
        ID INT PRIMARY KEY,
        Name NVARCHAR(50),
        Age INT
    );
END

INSERT INTO Test.TestData (ID, Name, Age) 
VALUES (1, 'Alice', 25),
       (2, 'Bob', 30),
       (3, 'Charlie', 35);
       
SELECT * FROM Test.TestData;