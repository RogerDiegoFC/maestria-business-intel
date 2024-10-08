CREATE TABLE [staging].[RutaLugar] (
    [idRutaLugarSk] INTEGER  NOT NULL,
    [idRutaHistorico] INTEGER,
    [idLugarHistorico] INTEGER,
    [rutaNombre] NVARCHAR(100) NOT NULL,
    [rutaDuracionAproximadaHoras] INTEGER NOT NULL,
    [rutaEsMasAtractiva] BIT,
    [rutaKilometrosRecorrido] DECIMAL(10,2),
    [lugarNombre] NVARCHAR(100),
    [lugarHoraPrevistaLlegada] TIME,
    [lugarActividad] NVARCHAR(max),
    [lugarTiempoParadaHoras] INTEGER
)
GO

