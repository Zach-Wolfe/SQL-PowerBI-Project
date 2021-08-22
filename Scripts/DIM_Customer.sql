SELECT 
	[CustomerKey],
	--[GeographyKey],
	--[CustomerAlternateKey],
	--[Title],
	[FirstName],
	--[MiddleName],
	[LastName],
	[FirstName] + ' ' + [LastName] AS [FullName],
	--[NameStyle],
	--[BirthDate],
	--[MaritalStatus],
	--[Suffix],
	CASE Gender 
		WHEN 'M' THEN 'Male' 
		WHEN 'F' THEN 'Female'
		END AS Gender,
	--[Gender],
	--[EmailAddress],
	--[YearlyIncome],
	--[TotalChildren],
	--[NumberChildrenAtHome],
	--[EnglishEducation],
	--[SpanishEducation],
	--[FrenchEducation],
	--[EnglishOccupation],
	--[SpanishOccupation],
	--[FrenchOccupation],
	--[HouseOwnerFlag],
	--[NumberCarsOwned],
	--[AddressLine1],
	--[AddressLine2],
	--[Phone],
	[DateFirstPurchase],
	--[CommuteDistance]

	--Import city and corresponding geography key from geography table--
	dbo.DimGeography.city AS [City],
	dbo.DimGeography.GeographyKey AS [GeographyKey]
FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer]

--Join for future reference--
LEFT JOIN dbo.DimGeography ON dbo.DimCustomer.GeographyKey = dbo.DimGeography.GeographyKey

--Sort list by ascending geography key--
ORDER BY
	[GeographyKey] ASC

