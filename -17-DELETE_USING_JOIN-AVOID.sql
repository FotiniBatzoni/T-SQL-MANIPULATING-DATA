USE AdventureWorks2012; 
GO 
 
DELETE dbo.demoSalesOrderDetail 
SELECT d.SalesOrderID 
FROM dbo.demoSalesOrderDetail AS d 
INNER JOIN dbo.demoSalesOrderHeader AS h 
ON d.SalesOrderID = h.SalesOrderID 
WHERE h.SalesOrderNumber = 'SO71797';