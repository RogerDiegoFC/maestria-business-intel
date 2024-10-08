CREATE TABLE [staging].[Autobus] (
    [idAutobusSk] INTEGER  NOT NULL,
    [idAutobusHistorico] INTEGER,
    [matricula] NVARCHAR(20) NOT NULL,
    [modelo] NVARCHAR(100),
    [fabricante] NVARCHAR(100),
    [numeroPlazas] INTEGER,
    [caracteristicas] NVARCHAR(max)    
)
