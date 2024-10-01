/*
Script de implementación para ProyMaestria

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "ProyMaestria"
:setvar DefaultFilePrefix "ProyMaestria"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
DELETE FROM Billete     ;
DELETE FROM Pasajero    ;
DELETE FROM Viaje       ;
DELETE FROM Servicio    ;
DELETE FROM Reparacion  ;
DELETE FROM Revision    ;
DELETE FROM Autobus     ;
DELETE FROM Conductor   ;
DELETE FROM Lugar       ;
DELETE FROM Ruta        ;


DBCC CHECKIDENT ('Billete', RESEED); 
DBCC CHECKIDENT ('Pasajero', RESEED); 
DBCC CHECKIDENT ('Viaje', RESEED); 
DBCC CHECKIDENT ('Servicio', RESEED); 
DBCC CHECKIDENT ('Reparacion', RESEED); 
DBCC CHECKIDENT ('Revision', RESEED); 
DBCC CHECKIDENT ('Autobus', RESEED); 
DBCC CHECKIDENT ('Conductor', RESEED); 
DBCC CHECKIDENT ('Lugar', RESEED); 
DBCC CHECKIDENT ('Ruta', RESEED);  
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('30054948', 'Carmen Vargas', '79624017');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('63675445', 'Roberto Rodríguez', '78007862');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('69071619', 'Rosa Pérez', '63424610');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('16722432', 'Jorge Fernández', '73925126');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('88524935', 'Juan Pérez', '67582124');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('86612420', 'Carlos Gómez', '70777972');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('16814008', 'Luis Morales', '62353288');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('44725273', 'Elena Castro', '79273312');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('44285723', 'Roberto Rodríguez', '61828777');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('33877321', 'Rosario Pérez', '77686881');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('28981889', 'Elena Castro', '76584456');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('71198406', 'María Pérez', '65570633');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('84566823', 'Luis Morales', '67102284');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('26019433', 'Luis Quispe', '61014290');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('94091996', 'Roberto Morales', '69699576');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('70978758', 'Carmen Vargas', '75302652');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('34886295', 'Elena Castro', '67263924');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('75934569', 'Laura Sánchez', '60690157');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('35850497', 'Jorge Fernández', '75054048');
INSERT INTO [dbo].[Pasajero] (dni, nombreCompleto, telefono) VALUES ('52758833', 'Elena Castro', '71442415');
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta La Paz - Oruro', 150.50, 5, 1, 210.45);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Santa Cruz - Cochabamba', 175.30, 6, 1, 300.75);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Sucre - Potosí', 90.20, 3, 1, 154.32);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta La Paz - Santa Cruz', 250.75, 10, 1, 489.50);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Tarija - Sucre', 160.80, 8, 1, 320.75);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Cochabamba - Oruro', 120.60, 4, 1, 195.67);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Potosí - Uyuni', 80.50, 3, 1, 110.12);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Trinidad - Santa Cruz', 210.90, 9, 1, 420.78);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Cobija - Riberalta', 185.40, 7, 1, 350.22);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta La Paz - Sucre', 190.25, 11, 1, 460.15);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Cochabamba - Tarija', 220.85, 12, 1, 478.23);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Santa Cruz - Potosí', 195.50, 9, 1, 365.34);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Oruro - Potosí', 110.75, 5, 1, 180.25);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Cochabamba - Sucre', 145.35, 6, 1, 310.45);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Tarija - Potosí', 170.40, 8, 1, 325.67);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Riberalta - Trinidad', 190.90, 7, 1, 280.34);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Uyuni - Potosí', 105.80, 4, 1, 130.50);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta La Paz - Cochabamba', 175.95, 7, 1, 370.22);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Santa Cruz - Oruro', 180.40, 8, 1, 400.90);
INSERT INTO [dbo].[Ruta] (nombreRuta, importe, duracionAproximadaHoras, esMasAtractiva, kilometrosRecorrido) VALUES ('Ruta Potosí - Sucre', 85.60, 3, 1, 145.30);

INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('33332222', 'Juan Perez', '4433333333', 'Zona norte villa dolores');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('44445555', 'Pedro García', '4444555566', 'Avenida América #1234');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('55556666', 'Ana Torres', '5555666777', 'Calle Sucre #456');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('66667777', 'Luis Fernández', '6666777788', 'Zona Central, La Paz');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('77778888', 'María Sánchez', '7777888899', 'Calle Bolívar #789');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('88889999', 'Carlos Díaz', '8888999900', 'Zona Sur, Cochabamba');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('99990000', 'Rosa Ramírez', '9999000011', 'Avenida Arce #321');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('11112222', 'Claudia López', '1111222233', 'Villa Fátima, El Alto');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('22223333', 'José Castro', '2222333344', 'Zona Pampa, Sucre');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('33334444', 'Elena Morales', '3333444455', 'Calle 16 de Julio #654');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('44446666', 'Roberto Gutiérrez', '4444666677', 'Avenida 6 de Agosto #789');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('55557777', 'Sandra Vargas', '5555777788', 'Calle Illimani #222');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('66668888', 'Fernando Pérez', '6666888899', 'Zona Miraflores, Oruro');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('77779999', 'Lucía Rojas', '7777999900', 'Calle Libertad #111');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('88880000', 'Alberto Flores', '8888000011', 'Zona Central, Tarija');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('99991111', 'Patricia González', '9999111122', 'Avenida Landaeta #567');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('11110000', 'Esteban Aguilar', '1111000011', 'Villa Tunari, Chapare');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('22224444', 'Sofía Quiroga', '2222444455', 'Calle Potosí #333');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('33336666', 'Diego Mendoza', '3333666677', 'Zona Norte, Pando');
INSERT INTO [dbo].[Conductor] ([dni], [nombreCompleto], [telefono], [direccion]) VALUES ('44447777', 'Inés Álvarez', '4444777788', 'Calle Colón #444');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('ABC123', 'Sprinter', 'Mercedes-Benz', 20, 'Aire acondicionado, Asientos reclinables');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('DEF456', 'Hiace', 'Toyota', 15, 'Asientos de cuero, Climatizador');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('GHI789', 'Transit', 'Ford', 18, 'Ventanas panorámicas, Wi-Fi');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('JKL012', 'Coaster', 'Toyota', 24, 'Asientos reclinables, Pantallas de entretenimiento');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('MNO345', 'Daily', 'Iveco', 30, 'Conectores USB, Luz individual');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('PQR678', 'Sirius', 'Volkswagen', 35, 'Aire acondicionado, Wi-Fi');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('STU901', 'Econoline', 'Ford', 12, 'Espacio para equipaje, Ventanas polarizadas');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('VWX234', 'Sprinter', 'Mercedes-Benz', 28, 'Climatizador, Pantallas de entretenimiento');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('YZA567', 'Hiace', 'Toyota', 22, 'Asientos reclinables, Luz individual');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('BCD890', 'Transit', 'Ford', 16, 'Wi-Fi, Asientos de cuero');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('EFG123', 'Coaster', 'Toyota', 20, 'Aire acondicionado, Pantallas de entretenimiento');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('HIJ456', 'Daily', 'Iveco', 24, 'Conectores USB, Asientos reclinables');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('KLM789', 'Sirius', 'Volkswagen', 18, 'Luz individual, Ventanas panorámicas');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('NOP012', 'Sprinter', 'Mercedes-Benz', 26, 'Aire acondicionado, Wi-Fi');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('QRS345', 'Hiace', 'Toyota', 14, 'Asientos de cuero, Espacio para equipaje');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('TUV678', 'Transit', 'Ford', 20, 'Climatizador, Luz individual');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('WXY901', 'Coaster', 'Toyota', 25, 'Pantallas de entretenimiento, Conectores USB');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('ZAB234', 'Daily', 'Iveco', 32, 'Wi-Fi, Aire acondicionado');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('CDE567', 'Sirius', 'Volkswagen', 22, 'Asientos reclinables, Luz individual');
INSERT INTO [Autobus] ([matricula], [modelo], [fabricante], [numeroPlazas], [caracteristicas]) VALUES ('FGH890', 'Sprinter', 'Mercedes-Benz', 27, 'Aire acondicionado, Ventanas panorámicas');

INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (1, '2024-01-05', 'Cambio de aceite, revisión de frenos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (2, '2024-02-10', 'Revisión del motor, ajuste de embrague');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (3, '2024-03-12', 'Cambio de neumáticos, alineación y balanceo');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (4, '2024-04-15', 'Revisión de frenos, ajuste de suspensión');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (5, '2024-05-20', 'Cambio de aceite, revisión de luces');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (6, '2024-06-25', 'Revisión del sistema eléctrico, ajuste de frenos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (7, '2024-07-30', 'Revisión de motor, cambio de filtros de aire');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (8, '2024-08-12', 'Cambio de aceite, ajuste de neumáticos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (9, '2024-09-05', 'Revisión de suspensión, ajuste de frenos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (10, '2024-10-18', 'Cambio de frenos, revisión del sistema de aire');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (11, '2024-01-08', 'Revisión del motor, ajuste de dirección');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (12, '2024-02-22', 'Cambio de aceite, revisión de neumáticos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (13, '2024-03-19', 'Ajuste de frenos, cambio de pastillas');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (14, '2024-04-27', 'Revisión de luces, ajuste de suspensión');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (15, '2024-05-30', 'Cambio de aceite, revisión de frenos');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (16, '2024-06-11', 'Revisión del motor, cambio de filtros');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (17, '2024-07-25', 'Cambio de neumáticos, alineación y balanceo');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (18, '2024-08-20', 'Revisión de frenos, ajuste de suspensión');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (19, '2024-09-10', 'Cambio de aceite, revisión de luces');
INSERT INTO [Revision] ([idAutobus], [fechaRevision], [diagnostico]) VALUES (20, '2024-10-15', 'Revisión del sistema eléctrico, ajuste de frenos');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (1, 'REP001', 4, 'Cambio de pastillas de freno');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (2, 'REP002', 6, 'Ajuste de embrague y revisión del motor');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (3, 'REP003', 3, 'Cambio de neumáticos y balanceo');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (4, 'REP004', 5, 'Ajuste de suspensión y revisión de frenos');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (5, 'REP005', 7, 'Revisión del sistema eléctrico');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (6, 'REP006', 8, 'Cambio de aceite y ajuste de motor');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (7, 'REP007', 4, 'Cambio de frenos y revisión del sistema de aire');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (8, 'REP008', 6, 'Ajuste de dirección y cambio de filtros');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (9, 'REP009', 3, 'Cambio de aceite y ajuste de neumáticos');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (10, 'REP010', 5, 'Revisión de frenos y ajuste de suspensión');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (11, 'REP011', 6, 'Cambio de frenos y revisión de luces');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (12, 'REP012', 4, 'Ajuste de suspensión y cambio de aceite');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (13, 'REP013', 7, 'Revisión del motor y cambio de pastillas de freno');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (14, 'REP014', 5, 'Ajuste de embrague y cambio de aceite');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (15, 'REP015', 4, 'Revisión del sistema eléctrico y ajuste de frenos');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (16, 'REP016', 6, 'Cambio de aceite y ajuste de motor');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (17, 'REP017', 8, 'Ajuste de suspensión y cambio de neumáticos');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (18, 'REP018', 5, 'Revisión de frenos y cambio de pastillas');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (19, 'REP019', 7, 'Ajuste de embrague y revisión del motor');
INSERT INTO [Reparacion] ([idRevision], [codigoReparacion], [tiempoEmpleado], [comentarioReparacion]) VALUES (20, 'REP020', 4, 'Cambio de filtros y ajuste de dirección');
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (1, 'Salar de Uyuni', '10:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (1, 'Isla Incahuasi', '14:00:00', 'Visita', 3);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (2, 'La Paz', '09:00:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (2, 'Mercado de las Brujas', '11:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (3, 'Copacabana', '10:30:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (3, 'Isla del Sol', '13:00:00', 'Visita', 3);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (4, 'Potosí', '08:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (5, 'Sucre', '09:30:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (6, 'Tiwanaku', '10:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (7, 'Laguna Verde', '11:00:00', 'Visita', 3);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (8, 'Coroico', '09:00:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (9, 'Yungas', '12:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (10, 'Oruro', '09:30:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (11, 'Santa Cruz', '10:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (12, 'Parque Nacional Amboró', '11:00:00', 'Visita', 3);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (13, 'Rurrenabaque', '12:30:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (14, 'Madidi', '14:00:00', 'Visita', 3);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (15, 'Titicaca', '09:00:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (16, 'Cochabamba', '10:30:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (17, 'Valle de la Luna', '11:30:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (18, 'Tarija', '09:00:00', 'Comer', 1);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (19, 'Chacaltaya', '10:00:00', 'Visita', 2);
INSERT INTO [Lugar] ([idRuta], [nombreLugar], [horaPrevistaLlegada], [actividad], [tiempoParadaHoras]) VALUES (20, 'Parque Nacional Sajama', '12:00:00', 'Visita', 3);

INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (1, 1, 1, '08:00:00', '10:00:00', 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (2, 2, 2, '09:00:00', '11:00:00', 1, 1, 0, 1, 1, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (3, 3, 3, '10:00:00', '12:00:00', 1, 0, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (4, 4, 4, '11:00:00', '13:00:00', 1, 1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (5, 5, 5, '12:00:00', '14:00:00', 1, 0, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (6, 6, 6, '13:00:00', '15:00:00', 1, 0, 0, 1, 1, 0, 1, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (7, 7, 7, '14:00:00', '16:00:00', 1, 1, 0, 0, 1, 1, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (8, 8, 8, '15:00:00', '17:00:00', 1, 0, 1, 1, 0, 0, 1, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (9, 9, 9, '16:00:00', '18:00:00', 1, 1, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (10, 10, 10, '17:00:00', '19:00:00', 1, 0, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (11, 11, 11, '08:30:00', '10:30:00', 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (12, 12, 12, '09:30:00', '11:30:00', 1, 1, 0, 1, 0, 1, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (13, 13, 13, '10:30:00', '12:30:00', 1, 0, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (14, 14, 14, '11:30:00', '13:30:00', 1, 0, 0, 1, 1, 0, 1, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (15, 15, 15, '12:30:00', '14:30:00', 1, 1, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (16, 16, 16, '13:30:00', '15:30:00', 1, 1, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (17, 17, 17, '14:30:00', '16:30:00', 1, 0, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (18, 18, 18, '15:30:00', '17:30:00', 1, 0, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (19, 19, 19, '16:30:00', '18:30:00', 1, 1, 0, 0, 1, 1, 0, 0, 0);
INSERT INTO [Servicio] ([idRuta], [idConductor], [idAutobus], [horaSalida], [horaLlegadaEstimada], [esServicioDiario], [lunes], [martes], [miercoles], [jueves], [viernes], [sabado], [domin], [esParaDiaFestivo]) VALUES (20, 20, 20, '17:30:00', '19:30:00', 1, 1, 0, 1, 0, 0, 1, 0, 0);
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (1, '2024-01-05', 8.50, '10:30:00', '02:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (2, '2024-02-10', 6.00, '14:00:00', '08:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (3, '2024-03-15', 5.75, '12:30:00', '06:45:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (4, '2024-04-20', 7.25, '16:00:00', '08:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (5, '2024-05-25', 9.00, '18:15:00', '09:15:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (6, '2024-06-30', 4.50, '12:00:00', '07:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (7, '2024-07-15', 11.00, '22:00:00', '11:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (8, '2024-08-10', 10.25, '21:30:00', '11:15:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (9, '2024-09-05', 3.50, '10:00:00', '06:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (10, '2024-09-15', 2.75, '09:00:00', '06:15:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (11, '2024-09-20', 8.00, '18:00:00', '10:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (12, '2024-09-25', 4.00, '12:30:00', '08:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (13, '2024-09-30', 7.50, '20:00:00', '12:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (14, '2024-10-05', 5.00, '14:00:00', '09:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (15, '2024-10-10', 9.50, '22:00:00', '12:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (16, '2024-10-15', 1.50, '08:00:00', '06:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (17, '2024-10-20', 3.00, '11:00:00', '08:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (18, '2024-10-25', 6.50, '16:30:00', '10:00:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (19, '2024-10-30', 2.00, '09:30:00', '07:30:00');
INSERT INTO [Viaje] ([idServicio], [fechaViaje], [horasTotalesViaje], [horaRealLlegada], [horaRealSalida]) VALUES (20, '2024-11-05', 4.25, '12:00:00', '07:30:00');
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (1, 1, 50.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (1, 2, 50.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (2, 3, 45.50);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (2, 4, 45.50);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (3, 5, 40.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (3, 6, 40.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (4, 7, 55.75);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (4, 8, 55.75);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (5, 9, 70.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (5, 10, 70.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (6, 11, 30.50);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (7, 12, 60.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (7, 13, 60.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (8, 14, 55.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (9, 15, 25.75);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (9, 16, 25.75);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (10, 17, 45.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (10, 18, 45.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (11, 19, 35.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (12, 20, 40.50);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (12, 1, 40.50);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (13, 2, 50.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (14, 3, 55.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (15, 4, 60.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (16, 5, 30.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (17, 6, 35.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (18, 7, 25.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (19, 8, 45.00);
INSERT INTO [Billete] ([idViaje], [idPasajero], [importe]) VALUES (20, 9, 50.50);
GO

GO
PRINT N'Actualización completada.';


GO
