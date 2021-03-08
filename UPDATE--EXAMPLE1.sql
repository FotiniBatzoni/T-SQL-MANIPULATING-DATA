USE AdventureWorks2012; 
GO 
 

 -- Write an UPDATE statement that updates the SubTotal column of each row of the dbo.demoSalesOrderHeader table
 -- with the sum of the LineTotal column of the dbo.demoSalesOrderDemo table

SELECT * INTO dbo.demoSalesOrderDETAIL 
FROM Sales.SalesOrderDETAIL; 
 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderDemo1]')                
			 AND type in (N'U')) DROP TABLE [dbo].[demoSalesOrderDemo1]; 
			 GO 
 
SELECT * INTO dbo.demoSalesOrderDemo1 
FROM Sales.SalesOrderDETAIL; 