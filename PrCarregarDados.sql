SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CarregarDados]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CarregarDados]
GO

CREATE PROCEDURE CarregarDados
(
		@usuario nvarchar(100),
		@admin int

)
 WITH ENCRYPTION AS
BEGIN
	SET NOCOUNT ON
if @admin = 1
SELECT * FROM Contatos	ORDER BY  status asc,prioridade ASC
ELSE
SELECT * FROM Contatos	where usuario = @usuario ORDER BY  status asc,prioridade ASC
	
							
		
	SET NOCOUNT OFF
END
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF
GO
