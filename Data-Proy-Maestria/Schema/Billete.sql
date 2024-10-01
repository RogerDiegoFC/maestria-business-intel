CREATE TABLE [Billete] (
    [idBillete] INTEGER IDENTITY(1,1) NOT NULL,
    [idViaje] INTEGER,
    [idPasajero] INTEGER,
    [importe] DECIMAL(10,2) NOT NULL,
    PRIMARY KEY ([idBillete])
);
go
ALTER TABLE [Billete] ADD
    FOREIGN KEY ([idViaje]) REFERENCES [Viaje] ([idViaje]);
go

ALTER TABLE [Billete] ADD
    FOREIGN KEY ([idPasajero]) REFERENCES [Pasajero] ([idPasajero])
;
go
