CREATE PROCEDURE [dbo].[GetConductorChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT [idConductor]
      ,[dni]
      ,[nombreCompleto]
      ,[telefono]
      ,[direccion]
  FROM [dbo].[Conductor]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
go
