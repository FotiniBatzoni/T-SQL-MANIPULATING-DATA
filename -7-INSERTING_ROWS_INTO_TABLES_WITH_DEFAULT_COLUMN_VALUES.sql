USE AdventureWorks2012;
GO

IF  EXISTS (SELECT * FROM sys.objects             
			WHERE object_id = OBJECT_ID(N'[dbo].[demoDefault]')                
			AND type in (N'U')) 
			DROP TABLE [dbo].[demoDefault] 
			GO 
 
CREATE TABLE [dbo].[demoDefault](     
				[KeyColumn] [int] NOT NULL PRIMARY KEY,          
				[HasADefault1] [DATETIME2](1) NOT NULL,          
				[HasADefault2] [NVARCHAR](50) NULL, ) 
				GO 

ALTER TABLE [dbo].[demoDefault] 
ADD  CONSTRAINT [DF_demoDefault_HasADefault]     
DEFAULT (GETDATE()) FOR [HasADefault1] 
GO 

ALTER TABLE [dbo].[demoDefault] 
ADD  CONSTRAINT [DF_demoDefault_HasADefault2]     
DEFAULT ('the default') 
FOR [HasADefault2] 
GO 
 

--1 

INSERT INTO dbo.demoDefault(HasADefault1,HasADefault2,KeyColumn)
 VALUES ('2009-04-24','Test 1',1),('2009-10-1',NULL,2); 
 
--2 
INSERT INTO dbo.demoDefault (HasADefault1,HasADefault2,KeyColumn) 
VALUES (DEFAULT,DEFAULT,3),(DEFAULT,DEFAULT,4); 
 
--3 
INSERT INTO dbo.demoDefault (KeyColumn) 
VALUES (5),(6); 
 
--4 
SELECT HasADefault1,HasADefault2,KeyColumn 
FROM dbo.demoDefault; 