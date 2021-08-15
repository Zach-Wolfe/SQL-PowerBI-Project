--Cleaning and formatting DIM_DateTable--
SELECT 
	[DateKey],
	[FullDateAlternateKey],
	[DayNumberOfWeek] as Date,
	[EnglishDayNameOfWeek] as Day,
	--,[SpanishDayNameOfWeek], 
	--,[FrenchDayNameOfWeek],
	--,[DayNumberOfMonth],
	--,[DayNumberOfYear],
	[WeekNumberOfYear] as WeekNo,
	[EnglishMonthName] as Month,
	--,[SpanishMonthName],
	--,[FrenchMonthName],
	[MonthNumberOfYear] as MonthNo,
	[CalendarQuarter] as Quarter,
	[CalendarYear] as Year
	--,[CalendarSemester],
	--,[FiscalQuarter],
	--,[FiscalYear],
	--,[FiscalSemester],
FROM 
	AdventureWorksDW2019.dbo.DimDate

--Pull sales from last 2 years--
WHERE
	CalendarYear > 2018