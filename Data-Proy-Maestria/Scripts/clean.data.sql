﻿DELETE FROM Compra     ;
DELETE FROM Boleto     ;
DELETE FROM Turista    ;
DELETE FROM Viaje       ;
DELETE FROM Servicio    ;
DELETE FROM Reparacion  ;
DELETE FROM Revision    ;
DELETE FROM Autobus     ;
DELETE FROM Conductor   ;
DELETE FROM Lugar       ;
DELETE FROM Ruta        ;

DBCC CHECKIDENT ('Compra', RESEED, 0); 
DBCC CHECKIDENT ('Boleto', RESEED, 0); 
DBCC CHECKIDENT ('Turista', RESEED, 0); 
DBCC CHECKIDENT ('Viaje', RESEED, 0); 
DBCC CHECKIDENT ('Servicio', RESEED, 0); 
DBCC CHECKIDENT ('Reparacion', RESEED, 0); 
DBCC CHECKIDENT ('Revision', RESEED, 0); 
DBCC CHECKIDENT ('Autobus', RESEED, 0); 
DBCC CHECKIDENT ('Conductor', RESEED, 0); 
DBCC CHECKIDENT ('Lugar', RESEED, 0); 
DBCC CHECKIDENT ('Ruta', RESEED, 0); 