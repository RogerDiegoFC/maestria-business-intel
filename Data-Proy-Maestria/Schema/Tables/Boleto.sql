CREATE TABLE [Boleto] (
    [idBoleto] INTEGER IDENTITY(1,1) NOT NULL,
    [idTurista] INTEGER,
    [fechaEmision] datetime,
    [codigoBoleto] VARCHAR(40),
     [rowVersion] rowversion,
    PRIMARY KEY ([idBoleto])
)
GO


ALTER TABLE [Boleto] ADD
    FOREIGN KEY ([idTurista]) REFERENCES [Turista] ([idTurista])
GO