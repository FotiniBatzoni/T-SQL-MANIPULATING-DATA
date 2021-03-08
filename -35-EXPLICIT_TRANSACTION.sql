USE AdventureWorks2012; 
GO 
 
-- Write a transaction that includes two INSERT statements to add two more rows to the dbo.Demo table.
-- Attempt to insert a letter instead of a number into the ID column in one of the statements.
-- Select the data from the dbo.Demo table to see which rows made it to the table

IF OBJECT_ID('dbo.Demo') IS NOT NULL 
BEGIN     
DROP TABLE dbo.Demo; 
END; 
GO 

CREATE TABLE dbo.Demo(ID INT PRIMARY KEY, Name VARCHAR(25))


BEGIN TRAN
 INSERT INTO DBO.DEMO VALUES (3,3);
 INSERT INTO DBO.DEMO VALUES (4,4);
COMMIT TRAN

BEGIN TRAN
 INSERT INTO DBO.DEMO VALUES (A,3);
 INSERT INTO DBO.DEMO VALUES (5,5);
COMMIT TRAN

SELECT ID,NAME
FROM DBO.DEMO


