USE AdventureWorks2012; 
GO 
 
 IF  EXISTS (SELECT * FROM sys.objects     
		WHERE object_id = OBJECT_ID(N'[dbo].[demoPersonStore]')     
		AND type in (N'U')) DROP TABLE [dbo].[demoPersonStore] 
		GO 
 
CREATE TABLE [dbo].[demoPersonStore] 
( [FirstName] [NVARCHAR] (60), 
[LastName] [NVARCHAR] (60), 
[CompanyName] [NVARCHAR] (60) ); 
 
INSERT INTO dbo.demoPersonStore 
(FirstName, LastName, CompanyName) 
SELECT a.FirstName, a.LastName, c.Name 
FROM Person.Person a 
JOIN Sales.SalesPerson b 
ON a.BusinessEntityID = b.BusinessEntityID 
JOIN Sales.Store c 
ON b.BusinessEntityID = c.SalesPersonID 
 
--1 
SELECT FirstName,LastName, CompanyName,    
      LEFT(FirstName,3) + '.' + LEFT(LastName,3) AS NewCompany 
FROM dbo.demoPersonStore; 
 
--2 
UPDATE dbo.demoPersonStore
 SET CompanyName = LEFT(FirstName,3) + '.' + LEFT(LastName,3); 
 
--3 
SELECT FirstName,LastName, CompanyName,     
LEFT(FirstName,3) + '.' + LEFT(LastName,3) AS NewCompany
 FROM dbo.demoPersonStore;