CREATE PROCEDURE [dbo].[GetTuristaChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT [idTurista]
      ,[dni]
      ,[nombreCompleto]
      ,[telefono]     
  FROM [dbo].[Turista]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
go
