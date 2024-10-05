CREATE PROCEDURE [dbo].[GetServicioCompraChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
     select 
       s.[idServicio]
      ,s.[idRuta]
      ,s.[idConductor]
      ,s.[idAutobus]
      ,s.[tarifaTransporte]
      ,s.[tarifaActividadTuristica]
      ,s.[horaSalida]
      ,s.[horaLlegadaEstimada]
      ,s.[esServicioDiario]
      ,s.[lunes]
      ,s.[martes]
      ,s.[miercoles]
      ,s.[jueves]
      ,s.[viernes]
      ,s.[sabado]
      ,s.[domingo]
      ,s.[esParaDiaFestivo]
	  ,v.[idViaje]
      ,v.[idServicio]
      ,v.[fechaViaje] --fecha 
	  ,idFechaViaje = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,v.[fechaViaje]))
						  + CASE 
								WHEN DATEPART(MONTH,v.[fechaViaje]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,v.[fechaViaje]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,v.[fechaViaje]))
							END
						  + CASE 
								WHEN DATEPART(DAY,v.[fechaViaje]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,v.[fechaViaje]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,v.[fechaViaje]))
							END))
      ,v.[horasTotalesViaje]
      ,v.[horaRealLlegada]
      ,v.[horaRealSalida]
      ,v.[kilometrosRecorridoReal]
      ,v.[finalizado]
      ,c.[idCompra]
      ,c.[idViaje]
      ,c.[idBoleto]
      ,c.[costoTransporte]
      ,c.[costoActividadTuristica]
      ,c.[incluyeTransporte]
      ,c.[incluyeActividadTuristica]
      ,c.[fechaCompra] --fecha 
	  ,idFechaCompra = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,c.[fechaCompra]))
						  + CASE 
								WHEN DATEPART(MONTH,c.[fechaCompra]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,c.[fechaCompra]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,c.[fechaCompra]))
							END
						  + CASE 
								WHEN DATEPART(DAY,c.[fechaCompra]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,c.[fechaCompra]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,c.[fechaCompra]))
							END))
	  ,b.idTurista
  FROM [dbo].[Servicio] s 
  inner join 
  Viaje v  on s.idServicio= v.idServicio
  inner join 
  Compra c on c.idViaje= v.idViaje
  inner join 
  Boleto b on c.idBoleto=b.idBoleto
  where 
  (s.[rowversion] > CONVERT(ROWVERSION,@startRow) AND s.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR 
  (v.[rowversion] > CONVERT(ROWVERSION,@startRow) AND v.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR 
  (c.[rowversion] > CONVERT(ROWVERSION,@startRow) AND c.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
go
