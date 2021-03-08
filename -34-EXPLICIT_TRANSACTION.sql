USE AdventureWorks2012; 
GO 
 
--Write a transaction that includes two INSERT statements to add two rows to the dbo.Demo table.

IF OBJECT_ID('dbo.Demo') IS NOT NULL 
BEGIN     
DROP TABLE dbo.Demo; 
END; 
GO 

CREATE TABLE dbo.Demo(ID INT PRIMARY KEY, Name VARCHAR(25)); 

BEGIN TRAN
	INSERT INTO DBO.DEMO(ID,NAME)
	VALUES (1,1);
	INSERT INTO DBO.DEMO(ID,NAME)
	VALUES (2,2);
COMMIT TRAN

SELECT ID,NAME
FROM DBO.DEMO