CREATE TABLE [Lugar] (
    [idLugar] INTEGER IDENTITY(1,1) NOT NULL,
    [idRuta] INTEGER,
    [nombreLugar] NVARCHAR(100),
    [horaPrevistaLlegada] TIME,
    [actividad] NVARCHAR(max),
    [tiempoParadaHoras] INTEGER,
     version rowversion,
    PRIMARY KEY ([idLugar])
);
go
ALTER TABLE [Lugar] ADD
    FOREIGN KEY ([idRuta]) REFERENCES [Ruta] ([idRuta]);
go