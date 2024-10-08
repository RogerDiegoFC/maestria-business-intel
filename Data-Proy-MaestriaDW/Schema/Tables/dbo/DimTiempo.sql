CREATE TABLE [DimTiempo] (
    [fechaId] INTEGER  NOT NULL,
    [fechaCompleta] DATE NOT NULL,    
    [anio] INTEGER NOT NULL,
    [mes] INTEGER,
    [dia] INTEGER,
    [diaSemana] INTEGER,   
    PRIMARY KEY ([fechaId])
)
