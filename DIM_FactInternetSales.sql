SELECT 
		 [ProductKey]
		,[OrderDateKey]
		,[DueDateKey]
		,[ShipDateKey]
		,[CustomerKey]
--		,[PromotionKey]
--		,[CurrencyKey]
--		,[SalesTerritoryKey]
		,[SalesOrderNumber]
--		,[SalesOrderLineNumber]
--		,[RevisionNumber]
--		,[OrderQuantity]
--		,[UnitPrice]
--		,[ExtendedAmount]
--		,[UnitPriceDiscountPct]
--		,[DiscountAmount]
--		,[ProductStandardCost]
--		,[TotalProductCost]
		,[SalesAmount]
--		,[TaxAmt]
--		,[Freight]
--		,[CarrierTrackingNumber]
--		,[CustomerPONumber]
--		,[OrderDate]
--		,[DueDate]
--		,[ShipDate]
		
FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]

--Pull last 2 years of sales--
--WHERE LEFT (OrderDateKey, 4) > 2018 

WHERE LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 2 
--would also work to ensure that code works in other years

ORDER BY OrderDateKey ASC