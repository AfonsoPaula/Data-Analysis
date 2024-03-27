/*

CTEs (Common Table Expressions):
	They are temporary named result sets that we can reference
	within a SELECT, INSERT, UPDATE, or DELETE statement in SQL.
	They allow us to create a subquery that can be referenced
	multiple times within a single query, which can improve
	readavility, simplify complex queries, and enhance maintainability.

*/


WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION by Gender) as AvgSalary
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee
