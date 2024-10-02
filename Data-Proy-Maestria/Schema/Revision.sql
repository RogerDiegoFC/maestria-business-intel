CREATE TABLE [Revision] (
    [idRevision] INTEGER IDENTITY(1,1) NOT NULL,
    [idAutobus] INTEGER,
    [fechaRevision] DATE NOT NULL,
    [diagnostico] NVARCHAR(max),
    [costoRevision] DECIMAL(10,2),
     version rowversion,
    PRIMARY KEY ([idRevision])
);
go
ALTER TABLE [Revision] ADD
    FOREIGN KEY ([idAutobus]) REFERENCES [Autobus] ([idAutobus]);
go
