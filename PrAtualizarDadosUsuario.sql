SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AtualizarDadosUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[AtualizarDadosUsuario]
GO

CREATE PROCEDURE AtualizarDadosUsuario
(
		@Codigo int,
		@Admin int
)
WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON

		Update Usuario set admin=@admin  output inserted.codigo  where codigo=@codigo
	
	SET NOCOUNT OFF

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO


