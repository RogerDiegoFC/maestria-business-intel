CREATE TABLE [FactRevisionAutobus] (
    [idRevisionAutobusSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idAutobusSk] INTEGER,
    [idRevisionHistorico] INTEGER,
    [idReparacionHistorico] INTEGER,
    [idRevisionFechaRevisionSk] INTEGER,
    [revisionDiagnostico] NVARCHAR(max),
    [revisionCostoRevision] DECIMAL(10,2),
    [reparacionExisteReparacion] BIT,
    [reparacionCodigoReparacion] NVARCHAR(20),
    [reparacionTiempoEmpleado] INTEGER,
    [reparacionComentarioReparacion] NVARCHAR(max),
    [reparacionCostoReparacion] DECIMAL(10,2),
    PRIMARY KEY ([idRevisionAutobusSk])
)
GO


ALTER TABLE [FactRevisionAutobus] ADD CONSTRAINT [DimAutobus_FactRevisionAutobus] 
    FOREIGN KEY ([idAutobusSk]) REFERENCES [DimAutobus] ([idAutobusSk])
GO

ALTER TABLE [FactRevisionAutobus] ADD CONSTRAINT [DimTiempo_FactRevisionAutobus] 
    FOREIGN KEY ([idRevisionFechaRevisionSk]) REFERENCES [DimTiempo] ([idTiempoSk])
GO
