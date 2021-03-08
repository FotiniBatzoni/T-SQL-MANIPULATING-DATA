USE AdventureWorks2012;
GO

--Write an INSERT statement that inserts all the addresses into the dbo.demoAddress table 
--from the Sales.Address table. Before running the INSERT statement,
-- type in and run the following command so that you can insert values into the AddressID column: 
--SET IDENTITY_INSERT dbo.demoAddress ON;

SET IDENTITY_INSERT dbo.demoAddress ON;

INSERT INTO DBO.demoAddress
			(AddressID,AddressLine1,AddressLine2,CITY,PostalCode)
SELECT AddressID,AddressLine1,AddressLine2,CITY,PostalCode
FROM Person.Address