CREATE PROCEDURE [dbo].[GetRevisionReparacionChangesByRowVersion]
    @startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
 SELECT 
       r.[idRevision]
      ,r.[idAutobus]
      ,r.[fechaRevision] --fecha
	  ,idFechaRevision = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,r.[fechaRevision]))
						  + CASE 
								WHEN DATEPART(MONTH,r.[fechaRevision]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,r.[fechaRevision]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,r.[fechaRevision]))
							END
						  + CASE 
								WHEN DATEPART(DAY,r.[fechaRevision]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,r.[fechaRevision]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,r.[fechaRevision]))
							END))
      ,r.[diagnostico]
      ,r.[costoRevision]
	  ,ISNULL(rep.[idReparacion],0) as [idReparacion]
      ,ISNULL(rep.[codigoReparacion],'') as [codigoReparacion]
      ,ISNULL(rep.[tiempoEmpleado],0) as [tiempoEmpleado]
      ,ISNULL(rep.[comentarioReparacion],'') as [comentarioReparacion]
      ,ISNULL(rep.[costoReparacion],0) as [costoReparacion]
	  ,CASE WHEN rep.[idReparacion] IS NULL  THEN 0 ELSE 1 END existeReparacion 
  FROM [dbo].[Revision] r 
  inner join 
  Reparacion rep on r.idRevision= rep.idRevision
  where 
  (r.[rowversion] > CONVERT(ROWVERSION,@startRow) AND r.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR 
  (rep.[rowversion] > CONVERT(ROWVERSION,@startRow) AND rep.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
go
