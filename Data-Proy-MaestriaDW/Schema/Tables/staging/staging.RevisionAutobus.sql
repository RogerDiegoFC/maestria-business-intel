CREATE TABLE [staging].[RevisionAutobus] (
    [idRevisionAutobusSk] INTEGER  NOT NULL,
    [idAutobusSk] INTEGER,
    [idRevisionHistorico] INTEGER,
    [idReparacionHistorico] INTEGER,
    [idRevisionFechaRevision] INTEGER,
    [revisionDiagnostico] NVARCHAR(max),
    [revisionCostoRevision] DECIMAL(10,2),
    [reparacionExisteReparacion] BIT,
    [reparacionCodigoReparacion] NVARCHAR(20),
    [reparacionTiempoEmpleado] INTEGER,
    [reparacionComentarioReparacion] NVARCHAR(max),
    [reparacionCostoReparacion] DECIMAL(10,2)
)
GO

