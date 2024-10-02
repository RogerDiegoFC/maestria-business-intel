CREATE TABLE [Ruta] (
    [idRuta] INTEGER IDENTITY(1,1) NOT NULL,
    [nombreRuta] NVARCHAR(100) NOT NULL,    
    [duracionAproximadaHoras] INTEGER NOT NULL,
    [esMasAtractiva] BIT,
    [kilometrosRecorrido] DECIMAL(10,2),
     version rowversion,
    PRIMARY KEY ([idRuta])
)
