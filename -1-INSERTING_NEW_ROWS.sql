USE AdventureWorks2012;
GO

IF OBJECT_ID('demoCustomer') IS NOT NULL BEGIN     
DROP TABLE demoCustomer; 
END; 
CREATE TABLE demoCustomer
			(CustomerID INT NOT NULL PRIMARY KEY,     
			FirstName NVARCHAR(50) NOT NULL,
			MiddleName NVARCHAR(50) NULL,     
			LastName NVARCHAR(50) NOT NULL); 