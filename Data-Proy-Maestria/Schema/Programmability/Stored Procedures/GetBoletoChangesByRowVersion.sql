CREATE PROCEDURE [dbo].[GetBoletoChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	SELECT [idBoleto]
      ,[idTurista]
      ,[fechaEmision]
      ,[codigoBoleto]
     FROM [dbo].[Boleto]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
go
