CREATE PROCEDURE [dbo].[DW_MergeFactRevisionAutobus] 
AS
BEGIN
    UPDATE fra
    SET [idAutobusSk]                = sra.[idAutobusSk],
        [idRevisionHistorico]        = sra.[idRevisionHistorico],
        [idReparacionHistorico]      = sra.[idReparacionHistorico],
        [idRevisionFechaRevision]    = sra.[idRevisionFechaRevision],
        [revisionDiagnostico]        = sra.[revisionDiagnostico],
        [revisionCostoRevision]      = sra.[revisionCostoRevision],
        [reparacionExisteReparacion] = sra.[reparacionExisteReparacion],
        [reparacionCodigoReparacion] = sra.[reparacionCodigoReparacion],
        [reparacionTiempoEmpleado]   = sra.[reparacionTiempoEmpleado],
        [reparacionComentarioReparacion] = sra.[reparacionComentarioReparacion],
        [reparacionCostoReparacion]  = sra.[reparacionCostoReparacion]
    FROM [dbo].[FactRevisionAutobus] fra
    INNER JOIN [staging].[RevisionAutobus] sra ON fra.[idRevisionAutobusSk] = sra.[idRevisionAutobusSk];
END;

