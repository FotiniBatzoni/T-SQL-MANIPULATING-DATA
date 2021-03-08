USE AdventureWorks2012; 
GO 
 
IF  EXISTS (SELECT * FROM sys.objects     
			WHERE object_id = OBJECT_ID(N'[dbo].[demoPerson]')     
			AND type in (N'U')) DROP TABLE [dbo].[demoPerson] 
			GO 
 
SELECT * INTO dbo.demoPerson 
FROM Person.Person 
WHERE Title in ('Mr.', 'Mrs.', 'Ms.') 


 --1 
 SELECT BusinessEntityID, NameStyle, Title 
 FROM dbo.demoPerson 
 ORDER BY BusinessEntityID; 
 
--2 
UPDATE dbo.demoPerson 
SET NameStyle = 1; 
 
--3 
SELECT BusinessEntityID, NameStyle, Title 
FROM dbo.demoPerson 
ORDER BY BusinessEntityID; 
 
--4 
UPDATE dbo.demoPerson 
SET NameStyle = 0 
WHERE Title = 'Ms.'; 
 
--5 
SELECT BusinessEntityID, NameStyle, Title 
FROM dbo.demoPerson 
ORDER BY BusinessEntityID; 