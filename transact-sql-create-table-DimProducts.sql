USE [DWNorthWind]
GO

if ISNULL(OBJECT_ID('DimProducts', 'U'), 0) > 0
	drop table dbo.DimProducts;
	/****** Object:  Table [dbo].[DimProducts]    Script Date: 10/17/2020 2:58:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProducts](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Region] [nvarchar](15) NOT NULL,
	[Country] [nvarchar](15) NULL,
	[City] [nvarchar](15) NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[EstratificacionUnitPrice] [varchar](50) NOT NULL,
	[EstratificacionUnitsInStock] [varchar](50) NOT NULL,
	[EstratificacionOnOrder] [varchar](50) NOT NULL,
	[EstratificacionReorderLevel] [varchar](50) NOT NULL
) ON [PRIMARY]
GO


