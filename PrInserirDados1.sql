SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[InserirDados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[InserirDados]
GO

CREATE PROCEDURE InserirDados
(
		@Base int,
		@Cliente int,
		@Empresa varchar(4),
		@Mes varchar(12),
		@Ano int,
		@TipoDeFolha varchar(100),
		@CodigosDeFolha varchar(max),
		@Prioridade int,
		@Usuario varchar (100)

)
WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON
	
		Insert into Contatos(base,cliente,empresa,mes,ano,TipoDeFolha,CodigosDeFolha,Prioridade,DataCriacao,Usuario) values (@base,@cliente,@empresa,@mes,@ano,@TipoDeFolha,@CodigosDeFolha,@Prioridade,GETDATE(),@Usuario)
		return 1

	SET NOCOUNT OFF

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO

