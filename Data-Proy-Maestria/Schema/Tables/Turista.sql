CREATE TABLE [Turista] (
    [idTurista] INTEGER IDENTITY(1,1) NOT NULL,
    [dni] NVARCHAR(20) NOT NULL,
    [nombreCompleto] NVARCHAR(300) NOT NULL,
    [telefono] NVARCHAR(20),
     [rowVersion] rowversion,
    PRIMARY KEY ([idTurista])
)
GO
