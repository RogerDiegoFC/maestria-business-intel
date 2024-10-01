CREATE TABLE [Pasajero] (
    [idPasajero] INTEGER IDENTITY(1,1) NOT NULL,
    [dni] NVARCHAR(20) NOT NULL,
    [nombreCompleto] NVARCHAR(300) NOT NULL,
    [telefono] NVARCHAR(20),
    PRIMARY KEY ([idPasajero])
)