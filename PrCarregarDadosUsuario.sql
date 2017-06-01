SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CarregarDadosUsuario]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CarregarDadosUsuario]
GO

CREATE PROCEDURE CarregarDadosUsuario
(
		@Nome nvarchar(100)
)
 WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON
if @Nome = '0'
SELECT * FROM Usuario	
ELSE
SELECT * FROM Usuario	where admin = 1 and Nome = @Nome

	SET NOCOUNT OFF
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO
