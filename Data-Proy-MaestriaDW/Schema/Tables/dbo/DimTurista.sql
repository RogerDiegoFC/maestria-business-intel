CREATE TABLE [DimTurista] (
    [idTuristaSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idTuristaHistorico] INTEGER,
    [dni] NVARCHAR(20) NOT NULL,
    [nombreCompleto] NVARCHAR(300) NOT NULL,
    [telefono] NVARCHAR(20),
    PRIMARY KEY ([idTuristaSk])
)

