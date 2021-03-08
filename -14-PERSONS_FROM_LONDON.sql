USE AdventureWorks2012;
GO

SELECT BEA.BUSINESSENTITYID,A.CITY,P.LastName
FROM PERSON.BusinessEntityAddress AS BEA
LEFT JOIN demoAddress AS A
ON BEA.ADDRESSID=A.AddressID
RIGHT JOIN Person.Person AS P
ON P.BusinessEntityID=BEA.BusinessEntityID
WHERE CITY = 'LONDON'