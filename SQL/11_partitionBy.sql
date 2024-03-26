/*

Partition By - it's used in conjuntion with window functions to
               divide the result set into partitions to which the
			   window function is applied separately.

*/


SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

-- ---------------------------------------------------------

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Tutorial].dbo.EmployeeDemographics dem
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID

SELECT Gender, COUNT(Gender) 
FROM [SQL Tutorial].dbo.EmployeeDemographics dem
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender