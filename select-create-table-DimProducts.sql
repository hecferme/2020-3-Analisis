use DWNorthWind
if ISNULL(OBJECT_ID('DimProducts', 'U'), 0) > 0
	drop table dbo.DimProducts;
use NorthWind
SELECT        
	Products.ProductID, Products.ProductName, Suppliers.CompanyName, 
	ISNULL(Suppliers.Region, N'N/A') AS Region, Suppliers.Country, 
	Suppliers.City, Categories.CategoryName, 
	Products.QuantityPerUnit, Products.UnitPrice,
	Products.UnitsInStock, Products.UnitsOnOrder, 
	Products.ReorderLevel, Products.Discontinued,
	'' EstratificacionUnitPrice,
	'' EstratificacionUnitsInStock,
	'' EstratificacionOnOrder,
	'' EstratificacionReorderLevel
INTO DWNorthWind.dbo.DimProducts
FROM Products 
	INNER JOIN Categories 
		ON Products.CategoryID = Categories.CategoryID 
	INNER JOIN Suppliers 
		ON Products.SupplierID = Suppliers.SupplierID