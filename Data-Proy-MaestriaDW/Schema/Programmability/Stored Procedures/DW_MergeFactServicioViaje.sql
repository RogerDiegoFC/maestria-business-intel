CREATE PROCEDURE [dbo].[DW_MergeFactServicioViaje] 
AS
BEGIN
    UPDATE fsv
    SET [idAutobusSk]                        = ssv.[idAutobusSk],
        [idBoletoSk]                         = ssv.[idBoletoSk],
        [idConductorSk]                      = ssv.[idConductorSk],
        [idTuristaSk]                        = ssv.[idTuristaSk],
        [idRutaLugarSk]                      = ssv.[idRutaLugarSk],
        [idServicioHistorico]                = ssv.[idServicioHistorico],
        [idViajeHistorico]                   = ssv.[idViajeHistorico],
        [idCompraHistorico]                  = ssv.[idCompraHistorico],
        [servicioTarifaTransporte]           = ssv.[servicioTarifaTransporte],
        [servicioTarifaActividadTuristica]   = ssv.[servicioTarifaActividadTuristica],
        [servicioHoraSalida]                 = ssv.[servicioHoraSalida],
        [servicioHoraLlegadaEstimada]        = ssv.[servicioHoraLlegadaEstimada],
        [servicioEsServicioDiario]           = ssv.[servicioEsServicioDiario],
        [servicioLunes]                      = ssv.[servicioLunes],
        [servicioMartes]                     = ssv.[servicioMartes],
        [servicioMiercoles]                  = ssv.[servicioMiercoles],
        [servicioJueves]                     = ssv.[servicioJueves],
        [servicioViernes]                    = ssv.[servicioViernes],
        [servicioSabado]                     = ssv.[servicioSabado],
        [servicioDomingo]                    = ssv.[servicioDomingo],
        [servicioEsParaDiaFestivo]          = ssv.[servicioEsParaDiaFestivo],
        [viajeHorasTotalesViaje]             = ssv.[viajeHorasTotalesViaje],
        [viajeHoraRealLlegada]              = ssv.[viajeHoraRealLlegada],
        [viajeHoraRealSalida]               = ssv.[viajeHoraRealSalida],
        [viajeKilometrosRecorridoReal]      = ssv.[viajeKilometrosRecorridoReal],
        [idViajeFechaViaje]                 = ssv.[idViajeFechaViaje],
        [viajeFinalizado]                   = ssv.[viajeFinalizado],
        [compraCostoTransporte]             = ssv.[compraCostoTransporte],
        [compraCostoActividadTuristica]     = ssv.[compraCostoActividadTuristica],
        [compraIncluyeTransporte]           = ssv.[compraIncluyeTransporte],
        [compraIncluyeActividadTuristica]   = ssv.[compraIncluyeActividadTuristica],
        [idCompraFechaCompra]               = ssv.[idCompraFechaCompra]
    FROM [dbo].[FactServicioViaje] fsv
    INNER JOIN [staging].[ServicioViaje] ssv ON fsv.[idServicioViajeSk] = ssv.[idServicioViajeSk];
END;
