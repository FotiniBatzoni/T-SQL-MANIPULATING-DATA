USE AdventureWorks2012; 
GO 
 

 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomerSummary]')               
			  AND type in (N'U')) DROP TABLE [dbo].[demoCustomerSummary]; 
			  GO 
 
CREATE TABLE dbo.demoCustomerSummary 
			(CustomerID INT NOT NULL PRIMARY KEY,     
			SaleCount INTEGER NULL,     
			TotalAmount MONEY NULL); 
 
GO 
 
INSERT INTO dbo.demoCustomerSummary (CustomerID, SaleCount,TotalAmount) 
SELECT BusinessEntityID, 0, 0 
FROM dbo.demoPerson; 
 
GO 
 
--1 
SELECT CustomerID, SaleCount, TotalAmount 
FROM dbo.demoCustomerSummary 
WHERE CustomerID in (11621,12798,13589,14465,18623); 
 
--2 
WITH Totals AS (     
SELECT COUNT(*) AS SaleCount,SUM(TotalDue) AS TotalAmount,        
 CustomerID     
 FROM dbo.demoSalesOrderHeader     
 GROUP BY CustomerID) 
 UPDATE c 
 SET TotalAmount = Totals.TotalAmount,     
     SaleCount = Totals.SaleCount 
 FROM dbo.demoCustomerSummary AS c 
 INNER JOIN Totals 
 ON c.CustomerID = Totals.CustomerID; 
 
--3 
SELECT CustomerID, SaleCount, TotalAmount 
FROM dbo.demoCustomerSummary 
WHERE CustomerID in (11621,12798,13589,14465,18623); 