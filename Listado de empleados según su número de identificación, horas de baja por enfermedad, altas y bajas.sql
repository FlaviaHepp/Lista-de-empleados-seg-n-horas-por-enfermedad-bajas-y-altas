USE AdventureWorks2019
GO

--Se desea obtener el listado de empleados seg�n su n�mero de identificaci�n, sus horas de baja por enfermedad, fecha de altas y bajas

SELECT hre.NationalIDNumber AS Numero_identificacion_empleado, hre.SickLeaveHours AS Hora_enfermedad, hre.HireDate AS Alta, hed.EndDate AS Baja
FROM HumanResources.Employee hre
INNER JOIN HumanResources.EmployeeDepartmentHistory hed
on hre.BusinessEntityID = hed.BusinessEntityID