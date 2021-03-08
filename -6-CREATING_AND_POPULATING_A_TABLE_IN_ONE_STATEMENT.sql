USE AdventureWorks2012;
GO


 IF EXISTS (SELECT * FROM sys.objects            
             WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomer]')                 
             AND type in (N'U')) DROP TABLE dbo.demoCustomer; 
 
GO 
 
--1 
SELECT BusinessEntityID, FirstName, MiddleName, LastName,     
		FirstName + ISNULL(' ' + MiddleName,'') + ' ' +  LastName AS FullName 
INTO dbo.demoCustomer 
FROM Person.Person; 
 
  --2 
  SELECT BusinessEntityID, FirstName, MiddleName, LastName, FullName 
  FROM dbo.demoCustomer; 