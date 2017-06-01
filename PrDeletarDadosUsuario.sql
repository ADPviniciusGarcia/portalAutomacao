SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeletarDadosUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DeletarDadosUsuario]
GO

CREATE PROCEDURE DeletarDadosUsuario
(
		@codigo int
		
)
WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON

		 DELETE FROM dbo.Usuario WHERE  codigo = @codigo
	
	SET NOCOUNT OFF

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO

