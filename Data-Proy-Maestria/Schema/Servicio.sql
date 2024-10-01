CREATE TABLE [Servicio] (
    [idServicio] INTEGER IDENTITY(1,1) NOT NULL,
    [idRuta] INTEGER,
    [idConductor] INTEGER,
    [idAutobus] INTEGER,
    [tarifaTransporte] DECIMAL(10,2),
    [tarifaActividadTuristica] DECIMAL(10,2),
    [horaSalida] TIME NOT NULL,
    [horaLlegadaEstimada] TIME,
    [esServicioDiario] BIT,
    [lunes] BIT,
    [martes] BIT,
    [miercoles] BIT,
    [jueves] BIT,
    [viernes] BIT,
    [sabado] BIT,
    [domingo] BIT,
    [esParaDiaFestivo] BIT,
    PRIMARY KEY ([idServicio])
);
go
ALTER TABLE [Servicio] ADD
    FOREIGN KEY ([idRuta]) REFERENCES [Ruta] ([idRuta]);
go

ALTER TABLE [Servicio] ADD
    FOREIGN KEY ([idConductor]) REFERENCES [Conductor] ([idConductor]);
go

ALTER TABLE [Servicio] ADD
    FOREIGN KEY ([idAutobus]) REFERENCES [Autobus] ([idAutobus])