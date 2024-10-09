CREATE PROCEDURE [dbo].[DW_MergeDimConductor] 
AS
BEGIN
    UPDATE dc
    SET [idConductorHistorico] = sc.[idConductorHistorico],
         [dni] = sc.dni,
        [nombreCompleto]       = sc.[nombreCompleto],
        [telefono]             = sc.[telefono],
        [direccion]            = sc.[direccion]
    FROM [dbo].[DimConductor] dc
    INNER JOIN [staging].[Conductor] sc ON dc.[idConductorSk] = sc.[idConductorSk];
END;
