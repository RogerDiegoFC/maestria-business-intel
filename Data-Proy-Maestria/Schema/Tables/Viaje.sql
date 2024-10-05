CREATE TABLE [Viaje] (
    [idViaje] INTEGER IDENTITY(1,1) NOT NULL,
    [idServicio] INTEGER,
    [fechaViaje] DATE NOT NULL,
    [horasTotalesViaje] DECIMAL(10,2),
    [horaRealLlegada] TIME,
    [horaRealSalida] TIME,
    [kilometrosRecorridoReal] DECIMAL(10,2),
    finalizado bit,
    [rowVersion] rowversion,
    PRIMARY KEY ([idViaje])
);
go 
ALTER TABLE [Viaje] ADD
    FOREIGN KEY ([idServicio]) REFERENCES [Servicio] ([idServicio]);
go
