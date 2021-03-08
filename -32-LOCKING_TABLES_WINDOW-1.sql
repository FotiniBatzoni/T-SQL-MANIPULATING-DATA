USE AdventureWorks2012; 
GO 
 
-- QUERY WINDOW 1


--1 STEP

IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoTransaction]')                
			 AND type in (N'U')) DROP TABLE [dbo].[demoTransaction]; 
			 GO 
 
CREATE TABLE dbo.demoTransaction (col1 INT NOT NULL); 

GO 
 
BEGIN TRAN     
 INSERT INTO dbo.demoTransaction (col1) VALUES (1);    
 INSERT INTO dbo.demoTransaction (col1) VALUES (2);

 COMMIT TRAN