USE [AdventureWorks2012];
 GO 
 
IF  EXISTS
 (SELECT * FROM sys.objects             
 WHERE object_id = OBJECT_ID(N'[dbo].[demoProduct]')               
  AND type in (N'U')) DROP TABLE [dbo].[demoProduct]; 
  GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomer]')                
AND type in (N'U')) DROP TABLE [dbo].[demoCustomer]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoAddress]')               
 AND type in (N'U')) DROP TABLE [dbo].[demoAddress]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderHeader]')                
AND type in (N'U')) DROP TABLE [dbo].[demoSalesOrderHeader]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderDetail]')               
 AND type in (N'U')) DROP TABLE [dbo].[demoSalesOrderDetail]; 
 GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoTransaction]')                
AND type in (N'U')) DROP TABLE [dbo].[demoTransaction]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomerSummary]')                
AND type in (N'U')) DROP TABLE [dbo].[demoCustomerSummary]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects            
 WHERE object_id = OBJECT_ID(N'[dbo].[demoDefault]')               
  AND type in (N'U')) DROP TABLE [dbo].[demoDefault]; 
GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoAutoPopulate]')                
AND type in (N'U')) DROP TABLE [dbo].[demoAutoPopulate]; 
 
 
USE [AdventureWorks2012];
 GO 
 
IF  EXISTS 
(SELECT * FROM sys.objects             
WHERE object_id = OBJECT_ID(N'[dbo].[demoPerformance]')                
AND type in (N'U')) 
DROP TABLE [dbo].[demoPerformance];