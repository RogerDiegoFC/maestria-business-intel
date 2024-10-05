CREATE PROCEDURE [dbo].[GetAutobusChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT [idAutobus]
      ,[matricula]
      ,[modelo]
      ,[fabricante]
      ,[numeroPlazas]
      ,[caracteristicas]
  FROM [dbo].[Autobus] 
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
go
