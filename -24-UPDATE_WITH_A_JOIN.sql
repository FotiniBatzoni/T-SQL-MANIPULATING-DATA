USE AdventureWorks2012; 
GO 
 
 --1

 SELECT AddressLine1, AddressLine2 
 FROM dbo.demoAddress; 
 
--2 
UPDATE a 
SET AddressLine1 = FirstName + ' ' + LastName,    
	 AddressLine2 = AddressLine1 + ISNULL(' ' + AddressLine2,'') 
FROM dbo.demoAddress AS a 
INNER JOIN Person.BusinessEntityAddress c 
ON a.AddressID = c.AddressID 
INNER JOIN Person.Person b 
ON b.BusinessEntityID = c.BusinessEntityID 
 

--3 
SELECT AddressLine1, AddressLine2 
FROM dbo.demoAddress