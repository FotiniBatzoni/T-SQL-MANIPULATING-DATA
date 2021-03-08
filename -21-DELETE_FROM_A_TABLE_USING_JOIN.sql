USE AdventureWorks2012; 
GO 
 
--Delete the rows from the dbo.demoProduct table that have never been ordered

SELECT P.PRODUCTID, SOD.SALESORDERID
FROM DBO.demoProduct AS P
LEFT JOIN SALES.SalesOrderDETAIL AS SOD
ON P.ProductID= SOD.ProductID
WHERE SALESORDERID IS NULL


DELETE P
FROM DBO.demoProduct AS P
LEFT JOIN SALES.SalesOrderDETAIL AS SOD
ON P.ProductID= SOD.ProductID
WHERE SALESORDERID IS NULL