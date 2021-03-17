USE AdventureWorks2019
GO
SELECT *
FROM HumanResources.Department
WHERE GroupName LIKE '%Research%'
ORDER BY DepartmentId DESC;
------------------
SELECT BusinessEntityId, JobTitle, BirthDate, Gender
FROM HumanResources.Employee
WHERE NationalIdNumber BETWEEN 500000000 AND 1000000000;
------------------
SELECT BusinessEntityId, JobTitle, BirthDate, Gender
FROM HumanResources.Employee
WHERE YEAR(BirthDate) IN ('1980', '1990');
------------------
SELECT BusinessEntityId, ShiftId
FROM HumanResources.EmployeeDepartmentHistory
GROUP BY BusinessEntityId, ShiftId;
------------------
SELECT BusinessEntityId, ShiftId
FROM HumanResources.EmployeeDepartmentHistory
GROUP BY BusinessEntityId, ShiftId
HAVING COUNT(*) >= 2;