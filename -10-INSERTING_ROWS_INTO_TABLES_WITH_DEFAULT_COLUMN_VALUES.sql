USE AdventureWorks2012;
GO

--Write an INSERT statement that inserts all the rows into the dbo.demoSalesOrderHeader table from the Sales.SalesOrderHeader table. 
--Hint: Pay close attention to the properties of the columns in the dbo.demoSalesOrderHeader table. 


--CREATE TABLE [dbo].[demoSalesOrderHeader](     
--				[SalesOrderID] [INT] NOT NULL PRIMARY KEY,    
--				[SalesID] [INT] NOT NULL IDENTITY,     
--				[OrderDate] [DATETIME] NOT NULL,     
--				[CustomerID] [INT] NOT NULL,     
--				[SubTotal] [MONEY] NOT NULL,     
--				[TaxAmt] [MONEY] NOT NULL,     
--				[Freight] [MONEY] NOT NULL,     
--				[DateEntered] [DATETIME],     
--				[SalesNumber] [INT] NOT NULL,     
--				[TotalDue]  AS (ISNULL(([SubTotal]+[TaxAmt])+[Freight],(0))),     
--				[RV] ROWVERSION NOT NULL); 

INSERT INTO dbo.demoSalesOrderHeader
			(SalesOrderID,OrderDate,CustomerID,SubTotal,TaxAmt,Freight)
SELECT      SalesOrderID,OrderDate,CustomerID,SubTotal,TaxAmt,Freight
FROM Sales.SalesOrderHeader

