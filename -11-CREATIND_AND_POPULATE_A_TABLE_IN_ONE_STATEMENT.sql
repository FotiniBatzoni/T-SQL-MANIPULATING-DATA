USE AdventureWorks2012;
GO

--Write a SELECT INTO statement that creates a table, dbo.tempCustomerSales, 
--showing every CustomerID from the Sales.Customer along with a count of the orders placed and the total amount due for each customer. 

--SELECT C.CustomerID,SOH.TotalDue,SOH.SalesOrderID
--INTO dbo.tempCustomerSales
--FROM Sales.Customer AS C
--LEFT JOIN SALES.SalesOrderHeader AS SOH
--ON C.CustomerID=SOH.CustomerID

--SELECT * FROM dbo.tempCustomerSales
--ORDER BY CUSTOMERID


SELECT CUSTOMERID,SUM(TotalDue) AS [TOTAL DUE PER CUSTOMER] ,COUNT(SALESORDERID) AS [COUNT OF ORDERS]
FROM dbo.tempCustomerSales
GROUP BY CUSTOMERID
ORDER BY CUSTOMERID


 
 