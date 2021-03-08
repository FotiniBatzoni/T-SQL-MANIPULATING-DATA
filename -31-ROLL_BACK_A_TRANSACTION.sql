USE AdventureWorks2012; 
GO 
 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoTransaction]')                
			 AND type in (N'U')) 
 DROP TABLE [dbo].[demoTransaction];
 GO 
 
CREATE TABLE dbo.demoTransaction 
(col1 INT NOT NULL); 
GO 
 
--1 
BEGIN TRAN     
	INSERT INTO dbo.demoTransaction (col1) VALUES (1);     
	INSERT INTO dbo.demoTransaction (col1) VALUES (2);
 COMMIT TRAN 
 
  --2 
  BEGIN TRAN     
	INSERT INTO dbo.demoTransaction (col1) VALUES (3);     
	INSERT INTO dbo.demoTransaction (col1) VALUES (4); 
ROLLBACK TRAN  
GO 

--3 
SELECT col1 
FROM dbo.demoTransaction; 