/*

Having Clause - it's used in conjunction with the 'GROUP BY'
                clause to filter groups of rows based on
				specified conditions. While the 'WHERE' is used
				to filter individual rows before they are grouped,
				the 'HAVING' claused is used to filter groups
				of rows after they have been grouped by the
				'GROUP BY' clause.

*/

SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

-- ------------------------------------------------------------------

SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)