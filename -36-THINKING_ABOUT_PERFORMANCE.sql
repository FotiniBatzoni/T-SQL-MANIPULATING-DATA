USE AdventureWorks2012; 
GO 
--Create a work table 

IF  EXISTS (SELECT * FROM sys.objects            
 WHERE object_id = OBJECT_ID(N'[dbo].[demoPerformance]')                
 AND type in (N'U')) DROP TABLE [dbo].[demoPerformance];
  GO 
 
CREATE TABLE [dbo].[demoPerformance](     
	[SalesOrderID] [int] NOT NULL,     
	[SalesOrderDetailID] [int] NOT NULL,  
	CONSTRAINT [PK_demoPerformance] PRIMARY KEY CLUSTERED (     
	[SalesOrderID] ASC,     
	[SalesOrderDetailID] ASC )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF,     
	ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] ) ON [PRIMARY] 
 
GO 
 
PRINT 'Insert all rows start';
 PRINT getdate(); 
 
--Insert all rows from the Sales.SalesOrderDetail table at once INSERT INTO dbo.demoPerformance(SalesOrderID, SalesOrderDetailID) SELECT SalesOrderID, SalesOrderDetailID FROM Sales.SalesOrderDetail; 
 
PRINT 'Insert all rows end'; 
PRINT getdate(); 
 
--Remove all rows from the first insert TRUNCATE TABLE [dbo].[demoPerformance]; 
 
PRINT 'Insert rows one at a time begin'; 
PRINT getdate(); 
 

--Set up a loop to insert one row at a time WHILE EXISTS( 
 
    SELECT *     
	FROM Sales.SalesOrderDetail AS d 
	LEFT JOIN dbo.demoPerformance AS p    
	 ON d.SalesOrderID = p.SalesOrderID         
	 AND d.SalesOrderDetailID = p.SalesOrderDetailID     
	 WHERE p.SalesOrderID IS NULL) 
	 BEGIN 
 
 
    INSERT INTO dbo.demoPerformance (SalesOrderID,SalesOrderDetailID)     
	SELECT TOP 1 d.SalesOrderID, d.SalesOrderDetailID     
	FROM Sales.SalesOrderDetail AS d 
	LEFT JOIN dbo.demoPerformance AS p    
	 ON d.SalesOrderID = p.SalesOrderID         
	 AND d.SalesOrderDetailID = p.SalesOrderDetailID     
	 WHERE p.SalesOrderID IS NULL; 
 
END PRINT 'Insert rows one at a time end'; 
PRINT getdate(); 

--After the code executes or you stop execution after a few minutes, click the Messages tab to see the results (Figure 6-19). 
--Run this statement to see how many rows were actually inserted from the loop: 

USE AdventureWorks2012; 
GO 

SELECT COUNT(*) 
FROM dbo.demoPerformance;

-- The loop inserted about 12,000 rows for me in over 7 minutes! The first INSERT statement, inserting more than 120,000 rows, took less than a second to run. 
  