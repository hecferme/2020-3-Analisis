USE [DWNorthWind]
GO

if isnull(OBJECT_ID('FactOrders', 'U'), 0) > 0
	drop table dbo.FactOrders;

/****** Object:  Table [dbo].[FactOrders]    Script Date: 10/17/2020 3:27:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrders](
	[OrderID] [int] NOT NULL,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NOT NULL,
	[ShipCountry] [nvarchar](15) NULL,
	[ShipperName] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO


