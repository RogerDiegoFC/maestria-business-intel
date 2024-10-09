IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimTiempo])
 BEGIN
	BEGIN TRAN 
		DECLARE @startdate DATE = '2024-01-01',
				@enddate   DATE = '2024-12-31';
		DECLARE @datelist TABLE(FullDate DATE);

	IF @startdate IS NULL
		BEGIN
			SELECT TOP 1 
				   @startdate = [fechaCompleta]
			FROM dbo.DimTiempo 
			ORDER By [fechaId] ASC;
		END

	WHILE (@startdate <= @enddate)
	BEGIN 
		INSERT INTO @datelist(FullDate)
		SELECT @startdate

		SET @startdate = DATEADD(dd,1,@startdate);
	END

	 INSERT INTO dbo.DimTiempo([fechaId]
							,[fechaCompleta] 
							,[diaSemana] 
							,[dia] 
							,[mes] 
							,[anio] )
							--,WeekNumberOfYear 
							--,[MonthName] 
							--,MonthNumberOfYear 
							--,CalendarQuarter 
							--,CalendarYear 
							--,CalendarSemester)

	SELECT [fechaId]           = CONVERT(INT,CONVERT(VARCHAR,dl.FullDate,112))
		  ,[fechaCompleta]          = dl.FullDate
		  ,[diaSemana]    = DATEPART(dw,dl.FullDate)
		  --,DayNameOfWeek     = DATENAME(WEEKDAY,dl.FullDate) 
		  --,DayNumberOfMonth  = DATEPART(d,dl.FullDate)
		  ,[dia]   = DAY(dl.FullDate)
		  --,WeekNumberOfYear  = DATEPART(wk, dl.FUllDate)
		  --,[MonthName]       = DATENAME(MONTH,dl.FullDate) 
		  ,[mes]  = MONTH(dl.FullDate)
		  --,CalendarQuarter   = DATEPART(qq, dl.FullDate)
		  ,[anio]      = YEAR(dl.FullDate)		 
		FROM @datelist              dl 
		LEFT OUTER JOIN dbo.DimTiempo dd ON (dl.FullDate = dd.[fechaCompleta])
		WHERE dd.[fechaCompleta] IS NULL;
	COMMIT TRAN
END
GO