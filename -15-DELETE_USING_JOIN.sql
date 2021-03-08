USE AdventureWorks2012; 
GO 
 
SELECT d.SalesOrderID, SalesOrderNumber 
FROM dbo.demoSalesOrderDetail AS d 
INNER JOIN dbo.demoSalesOrderHeader AS h 
ON d.SalesOrderID = h.SalesOrderID 
WHERE h.SalesOrderNumber = 'SO71797'

DELETE d 
FROM dbo.demoSalesOrderDetail AS d 
INNER JOIN dbo.demoSalesOrderHeader AS h 
ON d.SalesOrderID = h.SalesOrderID 
WHERE h.SalesOrderNumber = 'SO71797' 
 
SELECT d.SalesOrderID, SalesOrderNumber 
FROM dbo.demoSalesOrderDetail AS d 
INNER JOIN dbo.demoSalesOrderHeader AS h 
ON d.SalesOrderID = h.SalesOrderID 
WHERE h.SalesOrderNumber = 'SO71797' 