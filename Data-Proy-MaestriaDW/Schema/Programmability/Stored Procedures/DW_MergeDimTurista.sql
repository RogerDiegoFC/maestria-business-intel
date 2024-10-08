CREATE PROCEDURE [dbo].[DW_MergeDimTurista] 
AS
BEGIN
    UPDATE dt
    SET [idTuristaHistorico] = st.[idTuristaHistorico],
        [dni]                = st.[dni],
        [nombreCompleto]     = st.[nombreCompleto],
        [telefono]           = st.[telefono]
    FROM [dbo].[DimTurista] dt
    INNER JOIN [staging].[Turista] st ON dt.[idTuristaSk] = st.[idTuristaSk];
END;
