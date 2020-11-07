USE [DWNorthWind]
GO

/****** Object:  Table [dbo].[FactOrderDetails]    Script Date: 10/10/2020 3:24:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF isnull(OBJECT_ID('FactOrderDetails', 'U'), 0) > 0
	DROP TABLE dbo.FactOrderDetails;


CREATE TABLE [dbo].[FactOrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[DiscountPercentage] [real] NULL,
	[GrossAmount] [money] NULL,
	[DiscountAmount] [real] NULL,
	[NetAmount] [real] NULL,
	[EstratoUnitPrice] [varchar](1) NOT NULL,
	[EstratoQuantity] [varchar](1) NOT NULL,
	[EstratoDiscountPercentage] [varchar](1) NOT NULL,
	[EstratoGrossAmount] [varchar](1) NOT NULL,
	[EstratoDiscountAmount] [varchar](1) NOT NULL,
	[EstratoNetAmount] [varchar](1) NOT NULL
) ON [PRIMARY]
GO


