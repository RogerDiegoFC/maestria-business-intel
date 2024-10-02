CREATE TABLE [DimTiempo] (
    [idTiempoSk] INTEGER IDENTITY(0,1) NOT NULL,
    [fechaCompleta] DATETIME NOT NULL,
    [fechaSoloDia] DATE,
    [anio] INTEGER NOT NULL,
    [mes] INTEGER,
    [dia] INTEGER,
    [diaSemana] INTEGER,
    [esFestivo] BIT,
    PRIMARY KEY ([idTiempoSk])
)
