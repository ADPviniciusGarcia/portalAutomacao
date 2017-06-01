SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeletarDados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[DeletarDados]
GO

CREATE PROCEDURE DeletarDados
(
		@codigo int
		
)
WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON

		 DELETE FROM dbo.Contatos WHERE  codigo = @codigo
	
	SET NOCOUNT OFF

END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO

