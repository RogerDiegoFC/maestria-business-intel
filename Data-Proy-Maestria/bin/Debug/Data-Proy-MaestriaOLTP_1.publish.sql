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
PRINT N'Creando Tabla [dbo].[Autobus]...';


GO
CREATE TABLE [dbo].[Autobus] (
    [idAutobus]       INT            IDENTITY (1, 1) NOT NULL,
    [matricula]       NVARCHAR (20)  NOT NULL,
    [modelo]          NVARCHAR (100) NULL,
    [fabricante]      NVARCHAR (100) NULL,
    [numeroPlazas]    INT            NULL,
    [caracteristicas] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([idAutobus] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Billete]...';


GO
CREATE TABLE [dbo].[Billete] (
    [idBillete]  INT             IDENTITY (1, 1) NOT NULL,
    [idViaje]    INT             NULL,
    [idPasajero] INT             NULL,
    [importe]    DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([idBillete] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Conductor]...';


GO
CREATE TABLE [dbo].[Conductor] (
    [idConductor]    INT            IDENTITY (1, 1) NOT NULL,
    [dni]            NVARCHAR (20)  NOT NULL,
    [nombreCompleto] NVARCHAR (300) NOT NULL,
    [telefono]       NVARCHAR (20)  NULL,
    [direccion]      NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([idConductor] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Lugar]...';


GO
CREATE TABLE [dbo].[Lugar] (
    [idLugar]             INT            IDENTITY (1, 1) NOT NULL,
    [idRuta]              INT            NULL,
    [nombreLugar]         NVARCHAR (100) NULL,
    [horaPrevistaLlegada] TIME (7)       NULL,
    [actividad]           NVARCHAR (MAX) NULL,
    [tiempoParadaHoras]   INT            NULL,
    PRIMARY KEY CLUSTERED ([idLugar] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Pasajero]...';


GO
CREATE TABLE [dbo].[Pasajero] (
    [idPasajero]     INT            IDENTITY (1, 1) NOT NULL,
    [dni]            NVARCHAR (20)  NOT NULL,
    [nombreCompleto] NVARCHAR (300) NOT NULL,
    [telefono]       NVARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([idPasajero] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Reparacion]...';


GO
CREATE TABLE [dbo].[Reparacion] (
    [idReparacion]         INT            IDENTITY (1, 1) NOT NULL,
    [idRevision]           INT            NULL,
    [codigoReparacion]     NVARCHAR (20)  NULL,
    [tiempoEmpleado]       INT            NULL,
    [comentarioReparacion] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([idReparacion] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Revision]...';


GO
CREATE TABLE [dbo].[Revision] (
    [idRevision]    INT            IDENTITY (1, 1) NOT NULL,
    [idAutobus]     INT            NULL,
    [fechaRevision] DATE           NOT NULL,
    [diagnostico]   NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([idRevision] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Servicio]...';


GO
CREATE TABLE [dbo].[Servicio] (
    [idServicio]          INT      IDENTITY (1, 1) NOT NULL,
    [idRuta]              INT      NULL,
    [idConductor]         INT      NULL,
    [idAutobus]           INT      NULL,
    [horaSalida]          TIME (7) NOT NULL,
    [horaLlegadaEstimada] TIME (7) NULL,
    [esServicioDiario]    BIT      NULL,
    [lunes]               BIT      NULL,
    [martes]              BIT      NULL,
    [miercoles]           BIT      NULL,
    [jueves]              BIT      NULL,
    [viernes]             BIT      NULL,
    [sabado]              BIT      NULL,
    [domin ]              BIT      NULL,
    [esParaDiaFestivo]    BIT      NULL,
    PRIMARY KEY CLUSTERED ([idServicio] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Viaje]...';


GO
CREATE TABLE [dbo].[Viaje] (
    [idViaje]           INT             IDENTITY (1, 1) NOT NULL,
    [idServicio]        INT             NULL,
    [fechaViaje]        DATE            NOT NULL,
    [horasTotalesViaje] DECIMAL (10, 2) NULL,
    [horaRealLlegada]   TIME (7)        NULL,
    [horaRealSalida]    TIME (7)        NULL,
    PRIMARY KEY CLUSTERED ([idViaje] ASC)
);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Billete] WITH NOCHECK
    ADD FOREIGN KEY ([idViaje]) REFERENCES [dbo].[Viaje] ([idViaje]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Billete] WITH NOCHECK
    ADD FOREIGN KEY ([idPasajero]) REFERENCES [dbo].[Pasajero] ([idPasajero]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Lugar] WITH NOCHECK
    ADD FOREIGN KEY ([idRuta]) REFERENCES [dbo].[Ruta] ([idRuta]);


GO
PRINT N'Creando Clave externa [dbo].[Revision_Reparacion]...';


GO
ALTER TABLE [dbo].[Reparacion] WITH NOCHECK
    ADD CONSTRAINT [Revision_Reparacion] FOREIGN KEY ([idRevision]) REFERENCES [dbo].[Revision] ([idRevision]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Revision] WITH NOCHECK
    ADD FOREIGN KEY ([idAutobus]) REFERENCES [dbo].[Autobus] ([idAutobus]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([idRuta]) REFERENCES [dbo].[Ruta] ([idRuta]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([idConductor]) REFERENCES [dbo].[Conductor] ([idConductor]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Servicio] WITH NOCHECK
    ADD FOREIGN KEY ([idAutobus]) REFERENCES [dbo].[Autobus] ([idAutobus]);


GO
PRINT N'Creando Clave externa <sin nombre>...';


GO
ALTER TABLE [dbo].[Viaje] WITH NOCHECK
    ADD FOREIGN KEY ([idServicio]) REFERENCES [dbo].[Servicio] ([idServicio]);


GO
PRINT N'Comprobando los datos existentes con las restricciones recién creadas';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Reparacion] WITH CHECK CHECK CONSTRAINT [Revision_Reparacion];


GO
CREATE TABLE [#__checkStatus] (
    id           INT            IDENTITY (1, 1) PRIMARY KEY CLUSTERED,
    [Schema]     NVARCHAR (256),
    [Table]      NVARCHAR (256),
    [Constraint] NVARCHAR (256)
);

SET NOCOUNT ON;

DECLARE tableconstraintnames CURSOR LOCAL FORWARD_ONLY
    FOR SELECT SCHEMA_NAME([schema_id]),
               OBJECT_NAME([parent_object_id]),
               [name],
               0
        FROM   [sys].[objects]
        WHERE  [parent_object_id] IN (OBJECT_ID(N'dbo.Billete'), OBJECT_ID(N'dbo.Lugar'), OBJECT_ID(N'dbo.Revision'), OBJECT_ID(N'dbo.Servicio'), OBJECT_ID(N'dbo.Viaje'))
               AND [type] IN (N'F', N'C')
                   AND [object_id] IN (SELECT [object_id]
                                       FROM   [sys].[check_constraints]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0
                                       UNION
                                       SELECT [object_id]
                                       FROM   [sys].[foreign_keys]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0);

DECLARE @schemaname AS NVARCHAR (256);

DECLARE @tablename AS NVARCHAR (256);

DECLARE @checkname AS NVARCHAR (256);

DECLARE @is_not_trusted AS INT;

DECLARE @statement AS NVARCHAR (1024);

BEGIN TRY
    OPEN tableconstraintnames;
    FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
    WHILE @@fetch_status = 0
        BEGIN
            PRINT N'Comprobando restricción:' + @checkname + N' [' + @schemaname + N'].[' + @tablename + N']';
            SET @statement = N'ALTER TABLE [' + @schemaname + N'].[' + @tablename + N'] WITH ' + CASE @is_not_trusted WHEN 0 THEN N'CHECK' ELSE N'NOCHECK' END + N' CHECK CONSTRAINT [' + @checkname + N']';
            BEGIN TRY
                EXECUTE [sp_executesql] @statement;
            END TRY
            BEGIN CATCH
                INSERT  [#__checkStatus] ([Schema], [Table], [Constraint])
                VALUES                  (@schemaname, @tablename, @checkname);
            END CATCH
            FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
        END
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') >= 0
    CLOSE tableconstraintnames;

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') = -1
    DEALLOCATE tableconstraintnames;

SELECT N'Error de comprobación de restricción:' + [Schema] + N'.' + [Table] + N',' + [Constraint]
FROM   [#__checkStatus];

IF @@ROWCOUNT > 0
    BEGIN
        DROP TABLE [#__checkStatus];
        RAISERROR (N'Error al comprobar las restricciones', 16, 127);
    END

SET NOCOUNT OFF;

DROP TABLE [#__checkStatus];


GO
PRINT N'Actualización completada.';


GO
