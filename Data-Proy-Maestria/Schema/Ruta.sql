CREATE TABLE [Ruta] (
    [idRuta] INTEGER IDENTITY(1,1) NOT NULL,
    [nombreRuta] NVARCHAR(100) NOT NULL,
    [importe] DECIMAL(10,2) NOT NULL,
    [duracionAproximadaHoras] INTEGER NOT NULL,
    [esMasAtractiva] BIT,
    [kilometrosRecorrido] DECIMAL(10,2),
    PRIMARY KEY ([idRuta])
)
