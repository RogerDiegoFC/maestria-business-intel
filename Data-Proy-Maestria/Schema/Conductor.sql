CREATE TABLE [Conductor] (
    [idConductor] INTEGER IDENTITY(1,1) NOT NULL,
    [dni] NVARCHAR(20) NOT NULL,
    [nombreCompleto] NVARCHAR(300) NOT NULL,
    [telefono] NVARCHAR(20),
    [direccion] NVARCHAR(500),
    PRIMARY KEY ([idConductor])
)
