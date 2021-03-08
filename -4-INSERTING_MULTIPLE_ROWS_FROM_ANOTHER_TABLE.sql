USE AdventureWorks2012;
GO


--1 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
SELECT BusinessEntityID, FirstName, MiddleName, LastName 
FROM Person.Person 
WHERE BusinessEntityID BETWEEN 19 AND 35; 
 
--2 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
SELECT DISTINCT c.BusinessEntityID, c.FirstName, c.MiddleName, c.LastName 
FROM Person.Person AS c 
INNER JOIN Sales.SalesOrderHeader AS s 
ON c.BusinessEntityID = s.SalesPersonID 
 
--3 
SELECT CustomerID, FirstName, MiddleName, LastName 
FROM dbo.demoCustomer 
WHERE CustomerID > 18; 