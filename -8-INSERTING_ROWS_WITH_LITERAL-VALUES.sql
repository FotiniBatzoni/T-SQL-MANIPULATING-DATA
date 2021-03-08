--Write a SELECT statement to retrieve data from the Sales.Product table. 
--Use these values to insert five rows into the dbo.demoProduct table using literal values. 
--Write five individual INSERT statements

USE AdventureWorks2012;
GO


 --1 
 INSERT INTO dbo.demoProduct
			(ProductID, Name, Color, StandardCost,ListPrice,Size,Weight)
VALUES (732,'ML Road Frame - Red, 48','Red','352,1394','594,83','48','2.26'); 
 
--2 
INSERT INTO  dbo.demoProduct
			(ProductID, Name, Color, StandardCost,ListPrice,Size,Weight)
 SELECT 733,	'ML Road Frame - Red, 52','	Red','	352,1394','	594,83',	'52','	2.30'; 
 
--3 
INSERT INTO dbo.demoProduct
VALUES (734,	'ML Road Frame - Red, 58','	Red	','352,1394','	594,83','	58','	2.36'); 
 
--4 
INSERT INTO dbo.demoProduct 
SELECT 735,'	ML Road Frame - Red, 60','	Red	','352,1394','	594,83','	60','	2.38'; 
 



