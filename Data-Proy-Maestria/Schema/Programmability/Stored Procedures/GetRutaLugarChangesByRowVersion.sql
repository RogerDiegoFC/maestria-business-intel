CREATE PROCEDURE [dbo].[GetRutaLugarChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT 
	   r.[idRuta]
      ,r.[nombreRuta]
      ,r.[duracionAproximadaHoras]
      ,r.[esMasAtractiva]
      ,r.[kilometrosRecorrido]	 
  FROM [dbo].[Ruta] r  
  WHERE (r.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND r.[rowversion] <= CONVERT(ROWVERSION,@endRow))	
END
go
