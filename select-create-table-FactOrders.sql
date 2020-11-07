use DWNorthWind
if isnull(OBJECT_ID('FactOrders', 'U'), 0) > 0
	drop table dbo.FactOrders;
use NorthWind
SELECT        
	Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, 
	Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, 
	Orders.Freight, Orders.ShipName, Orders.ShipCity, 
	ISNULL(Orders.ShipRegion, 'N/A') AS ShipRegion, Orders.ShipCountry,
	Shippers.CompanyName as ShipperName
INTO
	DWNorthWind.dbo.FactOrders
FROM Orders 
	INNER JOIN Shippers 
		ON Orders.ShipVia = Shippers.ShipperID