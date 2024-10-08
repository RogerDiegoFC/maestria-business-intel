﻿CREATE TABLE [staging].[ServicioViaje] (
    [idServicioViajeSk] INTEGER  NOT NULL,
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
    [idCompraFechaCompra] INTEGER
)
GO

