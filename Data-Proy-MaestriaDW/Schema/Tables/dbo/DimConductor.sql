CREATE TABLE [DimConductor] (
    [idConductorSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idConductorHistorico] INTEGER NOT NULL,
     [dni] NVARCHAR(20) NOT NULL,
    [nombreCompleto] NVARCHAR(300) NOT NULL,
    [telefono] NVARCHAR(20),
    [direccion] NVARCHAR(500),
    PRIMARY KEY ([idConductorSk])
)
