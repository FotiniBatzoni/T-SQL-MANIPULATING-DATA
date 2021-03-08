USE AdventureWorks2012; 
GO 
 

 -- Write an UPDATE statement that updates the SubTotal column of each row of the dbo.demoSalesOrderHeader table
 -- with the sum of the LineTotal column of the dbo.demoSalesOrderDemo table

SELECT * INTO dbo.demoSalesOrderHeader FROM Sales.SalesOrderHeader; 
 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderDemo]')                
			 AND type in (N'U')) DROP TABLE [dbo].[demoSalesOrderDemo]; 
			 GO 
 
SELECT * INTO dbo.demoSalesOrderDemo 
FROM Sales.SalesOrderHeader; 