USE AdventureWorks2012; 
GO 
 

 --Write an UPDATE statement that increases the ListPrice of every product in the dbo.demoProduct table by 10 percent. 
 
 SELECT LISTPRICE,(LISTPRICE +LISTPRICE*0.10) AS [PLUS 10%]
 FROM DBO.demoProduct
 WHERE LISTPRICE >0
 
 UPDATE LP
 SET LISTPRICE = (LISTPRICE +LISTPRICE*0.10)
 FROM DBO.demoProduct AS LP
 WHERE LISTPRICE >0
 
