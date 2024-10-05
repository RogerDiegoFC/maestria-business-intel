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
	  ,l.[idLugar]
      ,l.[nombreLugar]
      ,l.[horaPrevistaLlegada]
      ,l.[actividad]
      ,l.[tiempoParadaHoras]
  FROM [dbo].[Ruta] r 
  inner join dbo.Lugar l 
  on r.idRuta= l.idLugar
  WHERE (r.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND r.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (l.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		   AND l.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
go
