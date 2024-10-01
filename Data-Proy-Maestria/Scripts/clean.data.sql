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


DBCC CHECKIDENT ('Billete', RESEED, 0); 
DBCC CHECKIDENT ('Pasajero', RESEED, 0); 
DBCC CHECKIDENT ('Viaje', RESEED, 0); 
DBCC CHECKIDENT ('Servicio', RESEED, 0); 
DBCC CHECKIDENT ('Reparacion', RESEED, 0); 
DBCC CHECKIDENT ('Revision', RESEED, 0); 
DBCC CHECKIDENT ('Autobus', RESEED, 0); 
DBCC CHECKIDENT ('Conductor', RESEED, 0); 
DBCC CHECKIDENT ('Lugar', RESEED, 0); 
DBCC CHECKIDENT ('Ruta', RESEED, 0); 