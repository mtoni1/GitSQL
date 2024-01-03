USE [SQL tutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 11/8/2023 10:15:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE TABLE EmployeeDemographics
--(EmployeeId int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--INSERT INTO EmployeeSalary VALUES
--(1001,'mortician',2224560)

--SELECT *
--FROM EmployeeSalary

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age < 25 AND Gender ='male'

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age < 25 OR Gender ='male'

--SELECT *
--FROM EmployeeDemographics 
--WHERE LastName LIKE 'M%u%'

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName IS NOT NULL

--SELECT *
--FROM EmployeeDemographics 
--WHERE FirstName IN ('Tim')

--SELECT Gender,COUNT(Gender) AS CountGender
--FROM EmployeeDemographics 
--WHERE Age < 25 

--SELECT *
--FROM EmployeeDemographics 
--WHERE Age <25
--ORDER BY Age Desc,Gender Desc

--SELECT *
--FROM [SQL tutorial].dbo.EmployeeDemographics
--Inner Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID


--SELECT *
--FROM [SQL tutorial].dbo.EmployeeDemographics
--Full Outer Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID

--SELECT *
--FROM [SQL tutorial].dbo.EmployeeDemographics
--Right Outer Join [SQL tutorial].dbo.EmployeeSalary//table B
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID

--SELECT *
--FROM [SQL tutorial].dbo.EmployeeDemographics
--Left Outer Join [SQL tutorial].dbo.EmployeeSalary//table A
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID

--SELECT EmployeeSalary.EmployeeID, JobtiTitle, Salary
--FROM [SQL tutorial].dbo.EmployeeData
--Inner Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeSalary.EmployeeID=EmployeeData.EmployeeID


--SELECT EmployeeSalary.EmployeeID, JobtiTitle, Salary
--FROM [SQL tutorial].dbo.EmployeeData
--Left Outer Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeSalary.EmployeeID=EmployeeData.EmployeeID

--SELECT EmployeeSalary.EmployeeID, JobtiTitle, Salary
--FROM [SQL tutorial].dbo.EmployeeData
--Right Outer Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeSalary.EmployeeID=EmployeeData.EmployeeID

--SELECT EmployeeSalary.EmployeeID,FirstName,LastName, JobtiTitle, Salary
--FROM [SQL tutorial].dbo.EmployeeDemographics
--Inner Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeSalary.EmployeeID=EmployeeDemographics.EmployeeId
--WHERE FirstName<> 'Micky'
--ORDER BY Salary desc

--SELECT JobtiTitle, AVG(Salary)
--FROM [SQL tutorial].dbo.EmployeeData
--Inner Join [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeSalary.EmployeeID=EmployeeData.EmployeeID
--WHERE JobtiTitle='accountant'
--GROUP BY JobtiTitle



--SELECT EmployeeID, Nationality,EmployeeID
--FROM [SQL tutorial].dbo.EmployeeData
--UNION
--SELECT EmployeeID, JobtiTitle,Salary
--FROM [SQL tutorial].dbo.EmployeeSalary

--CREATE TABLE ServiceDesk
--(EmployeeID int,
--FirstName varchar(50),
--Wages int
--)
 --INSERT INTO ServiceDesk VALUES
 --(2002, 'Jim',350)
 --INSERT INTO ServiceDesk VALUES
 --(2190,'Carrey',375)
 --INSERT INTO ServiceDesk VALUES
 --(3324,'Tom',335)
 --INSERT INTO ServiceDesk VALUES
 --(6718,'Jany',299)
 --INSERT INTO ServiceDesk VALUES
 --(1005,'Bob',440)

 --SELECT EmployeeID, FirstName,Wages
 --FROM [SQL tutorial].dbo.ServiceDesk
 --UNION
 --SELECT EmployeeID, JobtiTitle, Salary
 --FROM [SQL tutorial].dbo.EmployeeSalary
 --ORDER BY Wages desc



 --SELECT FirstName,LastName,Age,
 --CASE
 --   WHEN Age >27 THEN 'Old' 
 --   ELSE 'Young'
 --END
 --FROM [SQL tutorial].dbo.EmployeeDemographics
 --WHERE Age is NOT NULL
 --ORDER BY Age 

 -- SELECT FirstName,LastName,Age,
 --CASE
 --   WHEN Age >30 THEN 'Old' 
	--WHEN Age BETWEEN 27 AND 30 THEN 'Youth'
	--WHEN Age = 18 THEN 'Minor'
 --   ELSE 'Young'
 --END
 --FROM [SQL tutorial].dbo.EmployeeDemographics
 --WHERE Age is NOT NULL
 --ORDER BY Age 

-- SELECT FirstName, LastName,JobtiTitle,Salary,
-- case
--     WHEN JobtiTitle = 'auditor' THEN Salary+ (Salary*.10)
--	  WHEN JobtiTitle = 'seamstress' THEN Salary+ (Salary*.07)
--	   WHEN JobtiTitle = 'lumber' THEN Salary+ (Salary*.01)
--	    WHEN JobtiTitle = 'teacher' THEN Salary+ (Salary*.05)
--		ELSE Salary +(Salary*.005)
--END AS SalaryAfterRaise
-- FROM [SQL tutorial].dbo.EmployeeDemographics
-- JOIN [SQL tutorial].dbo.EmployeeSalary
-- ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID
 
 --SELECT JobtiTitle,avg(Salary)
--FROM [SQL tutorial].dbo.EmployeeDemographics
 --JOIN [SQL tutorial].dbo.EmployeeSalary
 --ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID
 --GROUP BY JobtiTitle
 --HAVING AVG(Salary)>500000
 ----HAVING COUNT(JobtiTitle)>1
 --ORDER BY AVG(Salary)
 
 --SELECT *
 --FROM [SQL tutorial].dbo.EmployeeDemographics
 --UPDATE [SQL tutorial].dbo.EmployeeDemographics
 --SET EmployeeId = 1022
 --WHERE FirstName='Mish' AND LastName ='Mtoni'

 --SELECT *
 --FROM [SQL tutorial].dbo.EmployeeDemographics
 --UPDATE [SQL tutorial].dbo.EmployeeDemographics
 --SET Age = 28, Gender='other'
 --WHERE FirstName='Mish' AND  LastName ='Mtoni'

 --DELETE FROM [SQL tutorial].dbo.EmployeeDemographics
 --WHERE EmployeeId= 1011

 --SELECT FirstName+' '+ LastName AS FullName
 --FROM [SQL tutorial].dbo.EmployeeDemographics

 -- SELECT Demo.EmployeeId,Sal.Salary
 --FROM [SQL tutorial].dbo.EmployeeDemographics AS Demo
 --JOIN [SQL tutorial].dbo.EmployeeSalary AS Sal
 --ON Demo.EmployeeId =Sal.EmployeeID
 
 
 -- SELECT Demo.EmployeeId,Demo.FirstName,Demo.Age,Sal.JobtiTitle,Serv.Wages
 --FROM [SQL tutorial].dbo.EmployeeDemographics AS Demo
 --LEFT JOIN [SQL tutorial].dbo.EmployeeSalary AS Sal
 --ON Demo.EmployeeId =Sal.EmployeeID
 --LEFT JOIN [SQL tutorial].dbo.ServiceDesk AS Serv
 -- ON Demo.EmployeeId = Serv.EmployeeID
 



--SELECT FirstName, LastName,Gender,Salary,
--COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
--FROM [SQL tutorial].dbo.EmployeeDemographics
--JOIN [SQL tutorial].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID

--SELECT Gender,COUNT(Gender) AS Gender
--FROM [SQL tutorial].dbo.EmployeeDemographics
--JOIN [SQL tutorial].dbo.EmployeeSalary 
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID
--GROUP BY Gender


--ADVANCED
--WITH CTE_Employee AS
--(SELECT FirstName,LastName,Gender,Salary,
--COUNT (Gender) OVER(PARTITION BY Gender) AS TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
--FROM
--[SQL tutorial].dbo.EmployeeDemographics
--JOIN [SQL tutorial].dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID
--WHERE Salary >'400000'
--)
--SELECT *
--FROM CTE_Employee

--CREATE TABLE #temp_Employee
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

--INSERT INTO #temp_Employee 
--SELECT *
--FROM [SQL tutorial].dbo.EmployeeSalary
--SELECT *
--FROM #temp_Employee

--CREATE TABLE EmployeeErrors
--(EmployeeID varchar(50),
--FirstName varchar(50),
--LastName varchar(50)
--)

--insert into EmployeeErrors values
--('1001','Jimbo','Mogambi'),
--('1111','Alma','shanice'),
--('1212','Samial','June')

--select *
--from EmployeeErrors

--select EmployeeID, TRIM(EmployeeID) as IDTRIM
--from EmployeeErrors

--select EmployeeID, LTRIM(EmployeeID) as IDTRIM
--from EmployeeErrors

--select EmployeeID, RTRIM(EmployeeID) as IDTRIM
--from EmployeeErrors

--select EmployeeID, REPLACE(LastName, 'June' , 'Mogaka') as LastNameFixed
--from EmployeeErrors

--select EmployeeID, SUBSTRING(FirstName,1,3)
--from EmployeeErrors

--select FirstName, UPPER(FirstName)
--from EmployeeErrors

--select LastName, LOWER(LastName)
--from EmployeeErrors


--CREATE PROCEDURE TEST
--AS
--select *
--from EmployeeDemographics


--EXEC TEST


--CREATE PROCEDURE Temp_Employee
--AS
--CREATE TABLE #temp_employee
--(EmployeeID int,
--JobTitle varchar(50),
--EmployeePerJob int,
--AvgAge int,
--AvgSalary int)

--select *
--from #temp_employee


--EXEC Temp_Employee

ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle nvarchar(100),
AS
CREATE TABLE #temp_employee
(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

insert into #temp_employee
select JobtiTitle, COUNT(JobtiTitle), Avg(Age), AVG(Salary)
From [SQL tutorial].dbo.EmployeeDemographics
JOIN [SQL tutorial].dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeId=EmployeeSalary.EmployeeID
Where JobtiTitle=@JobtiTitle
group by JobtiTitle

select *
from #temp_employee
