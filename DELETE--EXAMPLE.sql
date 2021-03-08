USE AdventureWorks2012; 
GO 
 
IF  EXISTS (SELECT * FROM sys.objects             
			WHERE object_id = OBJECT_ID(N'[dbo].[demoProduct]')                
			AND type in (N'U')) 
DROP TABLE [dbo].[demoProduct]; 
GO 
 
SELECT * INTO dbo.demoProduct 
FROM Production.Product; 
 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomer]')
			 AND type in (N'U')) 
DROP TABLE [dbo].[demoCustomer]; 
GO 
 
SELECT * INTO dbo.demoCustomer 
FROM Sales.Customer; 

IF  EXISTS (SELECT * FROM sys.objects             
			WHERE object_id = OBJECT_ID(N'[dbo].[demoAddress]')                
			AND type in (N'U')) 
DROP TABLE [dbo].[demoAddress]; 
GO 
 
SELECT * INTO dbo.demoAddress 
FROM Person.Address; 
 
IF  EXISTS (SELECT * FROM sys.objects             
			WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderHeader]')                
			AND type in (N'U')) 
DROP TABLE [dbo].[demoSalesOrderHeader]; 
GO 
 
SELECT * INTO dbo.demoSalesOrderHeader 
FROM Sales.SalesOrderHeader; 
 
IF  EXISTS (SELECT * FROM sys.objects             
			WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderDetail]')                
			AND type in (N'U')) 
DROP TABLE [dbo].[demoSalesOrderDetail]; 
GO 
 
SELECT * INTO dbo.demoSalesOrderDetail 
FROM Sales.SalesOrderDetail; 