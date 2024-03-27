/*

Subqueries (in the Select, From, and Where Statemet

*/

Select *
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select Avg(salary) From EmployeeSalary) AS AllAvgSalary
From EmployeeSalary

-- How to do it with Patition By

Select EmployeeID, Salary, Avg(salary) OVER () AS AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work

Select EmployeeID, Salary, Avg(salary) AS AllAvgSalary
From EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1, 2

-- Subquery in From

Select a.EmployeeID, AllAvgSalary
FROM (Select EmployeeID, Salary, Avg(salary) OVER () AS AllAvgSalary
      From EmployeeSalary) a

-- Subquery in Where

Select EmployeeID, Jobtitle, Salary
From EmployeeSalary
Where EmployeeID in (
	Select EmployeeID
	From EmployeeDemographics
	Where Age > 30)