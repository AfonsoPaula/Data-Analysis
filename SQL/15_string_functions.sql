/*

String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;

CREATE TABLE EmployeeErrors (
	EmployeeID varchar(50),
	FirstName varchar(50),
	Lastname varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors

-- Using Trim, LTRIM, RTRIM ----------------------------------

	-- TRIM gets rid of blank spaces on both sides 
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

	-- LTRIM gets rid of blank spaces on left side
SELECT EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors

	-- RTRIM gets rid of blank spaces on right side
SELECT EmployeeID, RTRIM(EmployeeID) as IDRTRIM
FROM EmployeeErrors

-- Replace ---------------------------------------------------

SELECT Lastname, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors

-- Using Substring -------------------------------------------

SELECT FirstName, SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors

	-- called 'fuzzy match'
SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

	-- usally used for Gender, Age, Lastname, Data of Birth


-- Using UPPER and LOWER -------------------------------------

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors