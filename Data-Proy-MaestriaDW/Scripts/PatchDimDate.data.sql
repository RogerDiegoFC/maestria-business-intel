

IF NOT EXISTS(SELECT TOP(1) 1 
              FROM [dbo].DimTiempo
			  WHERE [fechaId] = 0)
BEGIN

   INSERT INTO dbo.DimTiempo([fechaId]
							,[fechaCompleta] 
							,[diaSemana] 
							,[dia] 
							,[mes] 
							,[anio] )
         VALUES
               (0
               ,GETDATE()
               ,0
               ,0
               ,0
               ,0
               );
END
GO