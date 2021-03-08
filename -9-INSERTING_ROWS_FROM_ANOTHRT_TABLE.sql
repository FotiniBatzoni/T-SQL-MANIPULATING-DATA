USE AdventureWorks2012;
GO

--Write a SELECT statement to retrieve data from the Sales.Product table. 
--Use these values to insert five rows into the dbo.demoProduct table using literal values. 
--Insert five more rows into the dbo.demoProduct table. This time write one INSERT statement

SELECT ProductID, Name, Color, StandardCost,ListPrice,Size,Weight
FROM Production.Product

SELECT ProductID, Name, Color, StandardCost,ListPrice,Size,Weight
FROM demoProduct



INSERT INTO dbo.demoProduct
			(ProductID, Name, Color, StandardCost,ListPrice,Size,Weight) 
SELECT ProductID, Name, Color, StandardCost,ListPrice,Size,Weight
FROM Production.Product
WHERE ProductID BETWEEN 430 and 440; 
 
