USE AdventureWorks2012;
GO

--1 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
SELECT c.BusinessEntityID, c.FirstName, c.MiddleName, c.LastName 
FROM Person.Person AS c 
LEFT OUTER JOIN dbo.demoCustomer AS d 
ON c.BusinessEntityID = d.CustomerID 
WHERE d.CustomerID IS NULL; 
 
--2 
SELECT COUNT(CustomerID) AS CustomerCount 
FROM dbo.demoCustomer; 
