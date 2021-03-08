USE AdventureWorks2012; 
GO 
 
 --Write a query that deletes the rows from the dbo.demoCustomer table where the LastName values begin with the letter S. 


 SELECT P.LastName
 FROM PERSON.PERSON AS P
 LEFT JOIN demoCustomer AS C
 ON P.BusinessEntityID=C.CUSTOMERID
 WHERE LASTNAME LIKE 'S%';

 DELETE P
 FROM PERSON.PERSON AS P
 LEFT JOIN demoCustomer AS C
 ON P.BusinessEntityID=C.CUSTOMERID
 WHERE LASTNAME LIKE 'S%';

 SELECT P.LastName
 FROM PERSON.PERSON AS P
 LEFT JOIN demoCustomer AS C
 ON P.BusinessEntityID=C.CUSTOMERID
 WHERE LASTNAME LIKE 'S%';