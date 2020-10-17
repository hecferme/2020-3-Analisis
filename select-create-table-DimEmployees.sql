--HAGAMOS MÁS JOVEN A LA GENTE Y REDUZCAMOS LA ANTIGÜEDAD DE LABORAR EN LA EMPRESA
--
--BEGIN TRAN
--	UPDATE Employees SET
--		BirthDate = DATEADD (year, 30, BirthDate),
--		HireDate = DATEADD (year, 20, HireDate);
--rollback;
--COMMIT;

use DWNorthWind
if isnull(OBJECT_ID('DimEmployees', 'U'), 0) > 0
	drop table dbo.DimEmployees;
use NorthWind
SELECT        
	e.EmployeeID, e.LastName, e.FirstName, e.Title, e.TitleOfCourtesy,
	CONCAT(e.TitleOfCourtesy, ' ', e.FirstName, ' ', e.LastName) as EmployeeFullName,
	e.BirthDate, 
	DATEDIFF(MONTH, e.BirthDate, GETDATE()) / 12 as Edad,
	e.HireDate,
	DATEDIFF(MONTH, e.HireDate, GETDATE()) / 12 as Antiguedad,
	e.City, ISNULL(e.Region, 'N/A') as Region, e.Country,
	case isnull(e.ReportsTo, -1)
		when -1 then 'N/A'
		else CONCAT(e2.TitleOfCourtesy, ' ', e2.FirstName, ' ', e2.LastName)
	end as ReportsToFullName,
	'' as [EstratificacionEdad],
	'' as [EstratificacionAntiguedad]
INTO DWNorthWind.dbo.DimEmployees
FROM Employees e
	left outer join Employees e2
		on e.ReportsTo = e2.EmployeeID;
