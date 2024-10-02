CREATE TABLE [DimBoleto] (
    [idBoletoSk] INTEGER IDENTITY(0,1) NOT NULL,
    [idBoletoHistorico] INTEGER,
    [fechaEmision] DATETIME,
    [codigoBoleto] VARCHAR(40),
    PRIMARY KEY ([idBoletoSk])
)
