USE AdventureWorks2012; 
GO 
 
SELECT SalesORDERID,PRODUCTID
FROM DBO.DEMOSALESORDERDETAIL
WHERE PRODUCTID NOT IN
		(SELECT PRODUCTID
		FROM DBO.DEMOPRODUCT
		WHERE PRODUCTID IS NOT NULL)


DELETE FROM DBO.DEMOSALESORDERDETAIL
WHERE PRODUCTID NOT IN
		(SELECT PRODUCTID
		FROM DBO.DEMOPRODUCT
		WHERE PRODUCTID IS NOT NULL)


SELECT SalesORDERID,PRODUCTID
FROM DBO.DEMOSALESORDERDETAIL
WHERE PRODUCTID NOT IN
		(SELECT PRODUCTID
		FROM DBO.DEMOPRODUCT
		WHERE PRODUCTID IS NOT NULL)