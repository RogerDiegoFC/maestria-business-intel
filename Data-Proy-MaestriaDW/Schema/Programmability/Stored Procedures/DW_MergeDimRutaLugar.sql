CREATE PROCEDURE [dbo].[DW_MergeDimRutaLugar] 
AS
BEGIN
    UPDATE drl
    SET [idRutaHistorico]              = srl.[idRutaHistorico],
        [idLugarHistorico]             = srl.[idLugarHistorico],
        [rutaNombre]                   = srl.[rutaNombre],
        [rutaDuracionAproximadaHoras]  = srl.[rutaDuracionAproximadaHoras],
        [rutaEsMasAtractiva]           = srl.[rutaEsMasAtractiva],
        [rutaKilometrosRecorrido]      = srl.[rutaKilometrosRecorrido],
        [lugarNombre]                  = srl.[lugarNombre],
        [lugarHoraPrevistaLlegada]     = srl.[lugarHoraPrevistaLlegada],
        [lugarActividad]               = srl.[lugarActividad],
        [lugarTiempoParadaHoras]       = srl.[lugarTiempoParadaHoras]
    FROM [dbo].[DimRutaLugar] drl
    INNER JOIN [staging].[RutaLugar] srl ON drl.[idRutaLugarSk] = srl.[idRutaLugarSk];
END;
