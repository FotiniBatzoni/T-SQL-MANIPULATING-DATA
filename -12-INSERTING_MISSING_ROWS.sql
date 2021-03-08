USE AdventureWorks2012;
GO

--Write an INSERT statement that inserts all the products into the dbo.demoProduct table 
--from the Production.Product table that have not already been inserted.
-- Don’t specify literal ProductID values in the statement. 

INSERT INTO dbo.demoProduct
          (ProductID,Name,Color,StandardCost,ListPrice,SIZE,Weight)
SELECT P.ProductID,P.Name,P.COLOR, P.StandardCost,P.LISTPRICE, P.Size,P.Weight
FROM Production.Product AS P
LEFT JOIN DBO.demoProduct AS D
ON P.ProductID=D.ProductID
