CREATE TABLE [Reparacion] (
    [idReparacion] INTEGER IDENTITY(1,1) NOT NULL,
    [idRevision] INTEGER,
    [codigoReparacion] NVARCHAR(20),
    [tiempoEmpleado] INTEGER,
    [comentarioReparacion] NVARCHAR(max),
    [costoReparacion] DECIMAL(10,2),
     version rowversion,
    PRIMARY KEY ([idReparacion])
);
go
ALTER TABLE [Reparacion] ADD CONSTRAINT [Revision_Reparacion] 
    FOREIGN KEY ([idRevision]) REFERENCES [Revision] ([idRevision]);
go
 
