/*

Group By - it's showing us what the unique value is but it's also
           rolling them all up into one column so that we can use
		   it for other things

Order By - it's used to sort the result set returned by a 'SELECT'
           statement based on one or more columns.

*/

/*--------------------- Group By ---------------------*/

SELECT Gender, COUNT(Gender) AS count_gender
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, FirstName, COUNT(Gender) AS count_gender
FROM EmployeeDemographics
GROUP BY Gender, FirstName

SELECT Gender, COUNT(Gender) AS count_gender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

/*--------------------- Order By ---------------------*/

SELECT Gender, COUNT(Gender) AS count_gender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY count_gender ASC

SELECT Gender, COUNT(Gender) AS count_gender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY count_gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

/* like the same result as above */ 
SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC
