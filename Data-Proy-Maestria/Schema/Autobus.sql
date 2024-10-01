CREATE TABLE [Autobus] (
    [idAutobus] INTEGER IDENTITY(1,1) NOT NULL,
    [matricula] NVARCHAR(20) NOT NULL,
    [modelo] NVARCHAR(100),
    [fabricante] NVARCHAR(100),
    [numeroPlazas] INTEGER,
    [caracteristicas] NVARCHAR(max),
    PRIMARY KEY ([idAutobus])
)
