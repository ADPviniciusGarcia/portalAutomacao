SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AtualizarDados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[AtualizarDados]
GO

CREATE PROCEDURE AtualizarDados
(
		@Codigo int,
		@Base int,
		@Cliente int,
		@Empresa varchar(4),
		@Mes varchar(12),
		@Ano int,
		@TipoDeFolha varchar(100),
		@CodigosDeFolha varchar(max),
		@Prioridade int
)
WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON

		Update Contatos set base=@base, cliente=@cliente, empresa=@empresa, mes=@mes, ano=@ano, TipoDeFolha=@TipoDeFolha, CodigosDeFolha=@CodigosDeFolha, Prioridade=@Prioridade  output inserted.codigo  where codigo=@codigo
	
	SET NOCOUNT OFF

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO


