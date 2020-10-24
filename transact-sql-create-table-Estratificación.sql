USE [DWNorthWind]
 GO



/****** Object: Table [dbo].[Estratos] Script Date: 10/24/2020 2:38:15 PM ******/
 SET ANSI_NULLS ON
 GO



SET QUOTED_IDENTIFIER ON
 GO



CREATE TABLE [dbo].[Estratos](
 [id] [int] NOT NULL,
 [Tipo] [varchar](50) NULL,
 [Desde] [varchar](50) NULL,
 [Hasta] [varchar](50) NULL,
 [Desc] [varchar](50) NULL,
 CONSTRAINT [PK_Estratos] PRIMARY KEY CLUSTERED
 (
 [id] ASC
 )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
 ) ON [PRIMARY]
 GO