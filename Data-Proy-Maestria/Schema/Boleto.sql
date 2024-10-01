CREATE TABLE [Boleto] (
    [idBoleto] INTEGER IDENTITY(0,1) NOT NULL,
    [idTurista] INTEGER,
    [fechaEmision] datetime,
    [codigoBoleto] VARCHAR(40),
    PRIMARY KEY ([idBoleto])
)
GO


ALTER TABLE [Boleto] ADD
    FOREIGN KEY ([idTurista]) REFERENCES [Turista] ([idTurista])
GO