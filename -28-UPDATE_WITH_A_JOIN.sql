USE AdventureWorks2012; 
GO 
 

 -- Write an UPDATE statement that corrects the UnitPrice and LineTotal of each row 
 --of the dbo.demoSalesOrderDetail table by joining the table on the dbo.demoProduct table. 
 

 UPDATE SOD
 SET SOD.UNITPRICE=P.LISTPRICE
 FROM dbo.demoSalesOrderDetail AS SOD
 JOIN  dbo.demoProduct AS P
 ON P.ProductID=SOD.ProductID

 SELECT SOD.PRODUCTID,SOD.UNITPRICE,SOD.ORDERQTY,P.LISTPRICE,SOD.UNITPRICE*SOD.ORDERQTY AS LINETOTAL
 FROM dbo.demoSalesOrderDetail AS SOD
 JOIN  dbo.demoProduct AS P
 ON P.ProductID=SOD.ProductID
