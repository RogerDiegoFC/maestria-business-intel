CREATE PROCEDURE [dbo].[DW_MergeDimBoleto] 
AS
BEGIN
    UPDATE db
    SET [idBoletoHistorico] = sb.[idBoletoHistorico],
        [fechaEmision]      = sb.[fechaEmision],
        [codigoBoleto]      = sb.[codigoBoleto]
    FROM [dbo].[DimBoleto] db
    INNER JOIN [staging].[Boleto] sb ON db.[idBoletoSk] = sb.[idBoletoSk];
END;
