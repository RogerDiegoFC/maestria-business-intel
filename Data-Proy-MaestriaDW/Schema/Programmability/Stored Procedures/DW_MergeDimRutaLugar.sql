CREATE PROCEDURE [dbo].[DW_MergeDimRutaLugar] 
AS
BEGIN
    UPDATE drl
    SET [idRutaHistorico]              = srl.[idRutaHistorico],
        [rutaNombre]                   = srl.[rutaNombre],
        [rutaDuracionAproximadaHoras]  = srl.[rutaDuracionAproximadaHoras],
        [rutaEsMasAtractiva]           = srl.[rutaEsMasAtractiva],
        [rutaKilometrosRecorrido]      = srl.[rutaKilometrosRecorrido]        
    FROM [dbo].[DimRutaLugar] drl
    INNER JOIN [staging].[RutaLugar] srl ON drl.[idRutaLugarSk] = srl.[idRutaLugarSk];
END;
