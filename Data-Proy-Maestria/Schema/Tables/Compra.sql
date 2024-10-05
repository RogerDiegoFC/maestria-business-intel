CREATE TABLE [Compra] (
    [idCompra] INTEGER IDENTITY(1,1) NOT NULL,
    [idViaje] INTEGER,
    [idBoleto] INTEGER,
    [costoTransporte] DECIMAL(10,2) NOT NULL,
    [costoActividadTuristica] DECIMAL(10,2),
    [incluyeTransporte] BIT,
    [incluyeActividadTuristica] BIT,
    [fechaCompra] datetime,
     [rowVersion] rowversion,
    PRIMARY KEY ([idCompra])
)
GO


ALTER TABLE [Compra] ADD CONSTRAINT [Viaje_Compra] 
    FOREIGN KEY ([idViaje]) REFERENCES [Viaje] ([idViaje])
GO

ALTER TABLE [Compra] ADD CONSTRAINT [Boleto_Compra] 
    FOREIGN KEY ([idBoleto]) REFERENCES [Boleto] ([idBoleto])
GO
