use DWNorthWind
if isnull(OBJECT_ID('FactOrderDetails', 'U'), 0) > 0
	drop table dbo.FactOrderDetails;
use NorthWind
select 
	od.OrderID, od.ProductID, od.UnitPrice, 
	od.Quantity, od.Discount * 100 as DiscountPercentage,
	od.UnitPrice * od.Quantity as GrossAmount,
	od.UnitPrice * od.Quantity * od.Discount  as DiscountAmount,
	od.UnitPrice * od.Quantity -  
		(od.UnitPrice * od.Quantity * od.Discount) as NetAmount,
	'' as EstratoUnitPrice,
	'' as EstratoQuantity,
	'' as EstratoDiscountPercentage,
	'' as EstratoGrossAmount,
	'' as EstratoDiscountAmount,
	'' as EstratoNetAmount
INTO DWNorthWind.dbo.FactOrderDetails
from [Order Details] od;
