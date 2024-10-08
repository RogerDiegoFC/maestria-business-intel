CREATE PROCEDURE [dbo].[DW_MergeDimTiempo] 
AS
BEGIN
    UPDATE dt
    SET [fechaCompleta]      = st.[fechaCompleta],
        [anio]               = st.[anio],
        [mes]                = st.[mes],
        [dia]                = st.[dia],
        [diaSemana]          = st.[diaSemana]       
    FROM [dbo].[DimTiempo] dt
    INNER JOIN [staging].[Tiempo] st ON dt.[fechaId] = st.[fechaId];
END;
