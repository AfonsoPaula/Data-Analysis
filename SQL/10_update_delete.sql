/*

Updating/Deleting Data

*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

/* ----------------- UPDATE ----------------- */

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

/* ----------------- DELETE ----------------- */

DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005

