--1.
	SELECT PERSON.PersonName,DEPT.DepartmentName, DEPT.DepartmentCode FROM DEPT
	INNER JOIN PERSON
	ON PERSON.DepartmentID = DEPT.DepartmentID

--2.
	SELECT PERSON.PersonName FROM PERSON
	INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID

--3.
	SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName FROM PERSON
	INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
	WHERE City = 'Jamnagar'

--4.
	SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName FROM PERSON
	INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
	WHERE person.City != 'Rajkot'

--5.
	SELECT Person.PersonName, DEPT.DepartmentName,Person.JoiningDate
    FROM Person LEFT OUTER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	WHERE Person.JoiningDate>'1-Aug-2001' and DEPT.DepartmentName='Civil'

--6.
	SELECT
		Person.PersonName,
		Person.City,
		Person.Salary,	
		Person.JoiningDate,	
		DEPT.DepartmentName,
		DEPT.Location
		FROM Person INNER JOIN DEPT
		ON Person.DepartmentID=DEPT.DepartmentID
		WHERE DEPT.DepartmentName='Computer'

--7.
	SELECT Person.PersonName, DEPT.DepartmentName, Person.JoiningDate 
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	WHERE DATEDIFF(DAY,Person.JoiningDate,GETDATE())>365--8.	SELECT DEPT.DepartmentName,COUNT(DEPT.Departmentid) "Person count"
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	GROUP BY DEPT.DepartmentName--9.	SELECT
	DEPT.DepartmentName, 
	MAX(Person.Salary) "Max Salary",
	MIN(Person.Salary) "Min Salary"
	FROM Person 
	INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID 
	GROUP BY DEPT.DepartmentName

--10.
	SELECT Person.City,
	Max(Person.Salary) as MaxSalary,
	MIN(Person.Salary) as MinSalary,
	AVG(Person.Salary) as AvgSalary,
	SUM(Person.Salary) as TotalSalary
	FROM Person GROUP BY Person.City


--11.
	SELECT AVG(Person.Salary) as AvgSalary, Person.City
	FROM Person
	GROUP BY Person.City
	HAVING Person.City='Ahmedabad'

--12.
	SELECT Person.PersonName + ' lives in ' + Person.City + ' and works in '+ DEPT.DepartmentName + ' Department'
    FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
--PART-B

--1.
	SELECT Person.PersonName + ' earns ' + CAST(Salary as varchar) + ' from Department ' + DEPT.DepartmentName + ' monthly '
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID


--2.
	SELECT Person.City,
	DEPT.DepartmentName,
	Max(Person.Salary) as MaxSalary,
	MIN(Person.Salary) as MinSalary,
	AVG(Person.Salary) as AvgSalary,
	SUM(Person.Salary) as TotalSalary
	FROM Person LEFT OUTER JOIN Department
	ON Person.DepartmentID=DEPT.DepartmentID
	GROUP BY Person.City, DEPT.DepartmentName

--3.
	SELECT
Person.PersonName
FROM Person
WHERE Person.DepartmentID is NULL

--4.
	SELECT DEPT.DepartmentName,  SUM(Person.Salary) "Total Dept Salary" 
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID 
	GROUP BY DEPT.DepartmentName 
	HAVING SUM(Person.Salary)>100000

--PART-C

--1.
	SELECT DEPT.DepartmentName
	FROM Person FULL OUTER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	GROUP BY DEPT.DepartmentName 
	HAVING COUNT (Person.DepartmentID) =0

--2.
	SELECT DEPT.DepartmentName, COUNT(*) as PersonCount
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	GROUP BY DEPT.DepartmentName
	HAVING COUNT(Person.DepartmentID)>2

--3.
	UPDATE Person 
	SET Person.Salary=(Person.Salary+(Person.Salary*10)/100)
	FROM Person INNER JOIN DEPT
	ON Person.DepartmentID=DEPT.DepartmentID
	WHERE DEPT.DepartmentName='Computer'