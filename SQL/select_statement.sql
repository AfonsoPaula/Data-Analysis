/*
Select Statement:
*, Top, Distinct, Count, As, Max, Min, Avg
*/

/* 1. select all */
SELECT *
FROM SQLEmployeeDemographics

/* 2. select firstname column */
SELECT FirstName
FROM EmployeeDemographics

/* 3. select first 5 rows */
SELECT TOP 5 *
FROM EmployeeDemographics

/* 4. unique values of a specific column */
SELECT DISTINCT(Gender)
FROM EmployeeDemographics

/* 5. number of rows that meet certain criteria */
SELECT COUNT(LastName)
FROM EmployeeDemographics

/* 6. give a name to a column */
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

/* 7.  max value of a specific column */
SELECT MAX(Salary) AS Max_Salary
FROM EmployeeSalary

/* 8.  min value of a specific column*/
SELECT Min(Salary) AS Min_Salary
FROM EmployeeSalary

/* 9. average of a specific column */
SELECT AVG(Salary) AS Avg_Salary
FROM EmployeeSalary