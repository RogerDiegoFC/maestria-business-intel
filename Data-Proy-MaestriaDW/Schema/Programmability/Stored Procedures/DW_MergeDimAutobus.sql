CREATE PROCEDURE [dbo].[DW_MergeDimAutobus] 
AS
BEGIN
    UPDATE da
    SET [idAutobusHistorico] = sa.[idAutobusHistorico],
        [matricula]          = sa.[matricula],
        [modelo]             = sa.[modelo],
        [fabricante]         = sa.[fabricante],
        [numeroPlazas]       = sa.[numeroPlazas],
        [caracteristicas]    = sa.[caracteristicas]
    FROM [dbo].[DimAutobus] da
    INNER JOIN [staging].[Autobus] sa ON da.[idAutobusSk] = sa.[idAutobusSk];
END;

