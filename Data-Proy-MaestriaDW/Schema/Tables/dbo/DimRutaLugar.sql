CREATE TABLE [DimRutaLugar] (
    [idRutaLugarSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idRutaHistorico] INTEGER,   
    [rutaNombre] NVARCHAR(100) NOT NULL,
    [rutaDuracionAproximadaHoras] INTEGER NOT NULL,
    [rutaEsMasAtractiva] BIT,
    [rutaKilometrosRecorrido] DECIMAL(10,2),   
    PRIMARY KEY ([idRutaLugarSk])
)
GO

