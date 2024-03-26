/*

ALIASING

*/

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics

-- ----------------------------------------------------------------

SELECT AVG(Age) AS AvgAge
FROM [SQL Tutorial].dbo.EmployeeDemographics

-- ----------------------------------------------------------------

SELECT Demo.EmployeeID
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

-- ----------------------------------------------------------------

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID