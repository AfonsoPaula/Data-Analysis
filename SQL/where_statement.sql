/*

Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In

*/

/* = */
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

/* <> */
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

/* > */
SELECT *
FROM EmployeeDemographics
WHERE Age > 30

/* >= */
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

/* < */
SELECT *
FROM EmployeeDemographics
WHERE Age < 32

/* <= */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32

/* AND */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

/* OR */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

/* LIKE - where lastname starts with 'S' */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

/* LIKE - where lastname has one 'S' at least */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

/* LIKE - where lastname has one 'S' at the beginning and one 'o' in the middle */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'

/* NOT NULL */
SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

/* IN (equal for multiple things) */
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' OR FirstName = 'Pam'

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Pam')