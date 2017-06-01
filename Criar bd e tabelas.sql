create database Escola
go
use Escola
go 

USE [Escola]
GO

/****** Object:  Table [dbo].[Contatos]    Script Date: 18/04/2017 17:14:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contatos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Base] [int] NULL,
	[Cliente] [int] NULL,
	[Empresa] [varchar](4) NULL,
	[Mes] [varchar](12) NULL,
	[Ano] [int] NULL,
	[TipoDeFolha] [varchar](100) NULL,
	[CodigosDeFolha] [varchar](max) NULL,
	[Prioridade] [int] NULL,
	[Status] [varchar](12) NULL,
	[Mensagem] [varchar](100) NULL,
	[DataCriacao] [datetime] NULL,
	[DataConclusao] [datetime] NULL,
	[Usuario] [varchar](100) NULL

PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


--drop table Contatos
exec CarregarDados
delete Contatos where codigo = 2

