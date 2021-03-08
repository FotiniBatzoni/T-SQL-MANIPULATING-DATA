USE AdventureWorks2012;
GO

--1 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
 VALUES (1,'Orlando','N.','Gee'); 
 
--2 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
SELECT 3, 'Donna','F.','Cameras'; 
 
--3 
INSERT INTO dbo.demoCustomer 
VALUES (4,'Janet','M.','Gates'); 
 
--4 
INSERT INTO dbo.demoCustomer 
SELECT 6,'Rosmarie','J.','Carroll'; 
 
--5 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
VALUES (2,'Keith',NULL,'Harris'); 
 
--6 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, LastName)
 VALUES (5,'Lucy','Harrington'); 
 
--7 
SELECT CustomerID, FirstName, MiddleName, LastName 
FROM dbo.demoCustomer; 