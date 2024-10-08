CREATE TABLE [FactServicioViaje] (
    [idServicioViajeSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idAutobusSk] INTEGER,
    [idBoletoSk] INTEGER,
    [idConductorSk] INTEGER,
    [idTuristaSk] INTEGER,
    [idRutaLugarSk] INTEGER,
    [idServicioHistorico] INTEGER,
    [idViajeHistorico] INTEGER,
    [idCompraHistorico] INTEGER,
    [servicioTarifaTransporte] DECIMAL(10,2),
    [servicioTarifaActividadTuristica] DECIMAL(10,2),
    [servicioHoraSalida] TIME NOT NULL,
    [servicioHoraLlegadaEstimada] TIME,
    [servicioEsServicioDiario] BIT,
    [servicioLunes] BIT,
    [servicioMartes] BIT,
    [servicioMiercoles] BIT,
    [servicioJueves] BIT,
    [servicioViernes] BIT,
    [servicioSabado] BIT,
    [servicioDomingo] BIT,
    [servicioEsParaDiaFestivo] BIT,
    [viajeHorasTotalesViaje] DECIMAL(10,2),
    [viajeHoraRealLlegada] TIME,
    [viajeHoraRealSalida] TIME,
    [viajeKilometrosRecorridoReal] DECIMAL(10,2),
    [idViajeFechaViaje] INTEGER,
    [viajeFinalizado] BIT,
    [compraCostoTransporte] DECIMAL(10,2) NOT NULL,
    [compraCostoActividadTuristica] DECIMAL(10,2),
    [compraIncluyeTransporte] BIT,
    [compraIncluyeActividadTuristica] BIT,
    [idCompraFechaCompra] INTEGER,
    PRIMARY KEY ([idServicioViajeSk])
)
GO


ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimRutaLugar_FactServicioViaje] 
    FOREIGN KEY ([idRutaLugarSk]) REFERENCES [DimRutaLugar] ([idRutaLugarSk])
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimConductor_FactServicioViaje] 
    FOREIGN KEY ([idConductorSk]) REFERENCES [DimConductor] ([idConductorSk])
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimAutobus_FactServicioViaje] 
    FOREIGN KEY ([idAutobusSk]) REFERENCES [DimAutobus] ([idAutobusSk])
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimTurista_FactServicioViaje] 
    FOREIGN KEY ([idTuristaSk]) REFERENCES [DimTurista] ([idTuristaSk])
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimBoleto_FactServicioViaje] 
    FOREIGN KEY ([idBoletoSk]) REFERENCES [DimBoleto] ([idBoletoSk])
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [%parentxx%_FactServicioViaje] 
    FOREIGN KEY ([idViajeFechaViaje]) REFERENCES [DimTiempo] (fechaId)
GO

ALTER TABLE [FactServicioViaje] ADD CONSTRAINT [DimTiempo_FactServicioViaje] 
    FOREIGN KEY ([idCompraFechaCompra]) REFERENCES [DimTiempo] (fechaId)
GO
