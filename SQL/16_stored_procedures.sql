/*

Stored Procedures

*/

CREATE PROCEDURE TEST
AS 
Select *
FROM EmployeeDemographics

EXEC TEST

-- -------------------------------------------------
CREATE PROCEDURE Temp_Employee
AS 
CREATE TABLE #temp_employee (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM [SQL Tutorial]..EmployeeDemographics dem
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee

EXEC Temp_Employee

-- -------------------------------------------------
-- after modified it

EXEC Temp_Employee @JobTitle = 'Salesman'