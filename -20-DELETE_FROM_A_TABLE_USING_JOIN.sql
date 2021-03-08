USE AdventureWorks2012; 
GO 
 
--Delete the rows from the dbo.demoCustomer table if the customer has not placed an order 
--or if the sum of the TotalDue from the dbo.demoSalesOrderHeader table for the customer is less than $1,000. 


SELECT C.CustomerID,SOH.SALESORDERID,soh.TotalDue
FROM SAles.Customer AS C
 JOIN sales.SalesOrderHeader AS SOH
ON C.CustomerID=SOH.CustomerID
group by c.CustomerID,soh.SalesOrderID,TotalDue
HAVING SUM(TOTALDUE)<1000


delete FROM SAles.Customer AS C
 JOIN sales.SalesOrderHeader AS SOH
ON C.CustomerID=SOH.CustomerID
group by c.CustomerID,soh.SalesOrderID,TotalDue
HAVING SUM(TOTALDUE)<1000
