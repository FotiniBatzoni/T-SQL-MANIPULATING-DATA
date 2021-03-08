USE AdventureWorks2012;
GO


 --1
 INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
  SELECT 7,'Dominic','P.','Gash'
  UNION 
  SELECT 10,'Kathleen','M.','Garza' 
  UNION 
  SELECT 11, 'Katherine', NULL,' Harding'; 

--2 
INSERT INTO dbo.demoCustomer (CustomerID, FirstName, MiddleName, LastName) 
VALUES (12,'Johnny','A.','Capino'),        
	   (16,'Christopher','R.','Beck'),        
	   (18,'David','J.','Liu'); 
 
--3 
SELECT CustomerID, FirstName, MiddleName, LastName 
FROM dbo.demoCustomer
WHERE CustomerID >= 7; 