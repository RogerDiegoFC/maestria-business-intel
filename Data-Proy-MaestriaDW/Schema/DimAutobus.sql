CREATE TABLE [DimAutobus] (
    [idAutobusSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idAutobusHistorico] INTEGER,
    [matricula] NVARCHAR(20) NOT NULL,
    [modelo] NVARCHAR(100),
    [fabricante] NVARCHAR(100),
    [numeroPlazas] INTEGER,
    [caracteristicas] NVARCHAR(max),
    PRIMARY KEY ([idAutobusSk])
)
