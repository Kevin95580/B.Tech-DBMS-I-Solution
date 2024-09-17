--LAB-11
--SQL JOINS

INSERT INTO STU_INFO
VALUES
(101, 'Raju' ,'CE'),
(102, 'Amit' ,'CE'), 
(103, 'Sanjay' ,'ME'),
(104, 'Neha' ,'EC'),
(105, 'Meera' ,'EE'),
(106, 'Mahesh' ,'ME')



--1.
	SELECT STU_INFO.Rno,
		   STU_INFO.Name,
		   STU_INFO.Branch,
		   RESULT.SPI
	FROM STU_INFO cross join RESULT

--2.
	SELECT STU_INFO.Rno,
		   STU_INFO.Name,
		   STU_INFO.Branch,
		   RESULT.SPI
	FROM STU_INFO INNER JOIN RESULT
	ON STU_INFO.Rno = RESULT.Rno
--3.
	SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI
	FROM STU_INFO LEFT OUTER JOIN RESULT
	ON STU_INFO.Rno = RESULT.Rno
--4.
	SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI
	FROM STU_INFO RIGHT OUTER JOIN RESULT
	ON STU_INFO.Rno = RESULT.Rno
--5.
	SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI
	FROM STU_INFO FULL OUTER JOIN RESULT
	ON STU_INFO.Rno = RESULT.Rno
--6.
	SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI
	FROM STU_INFO LEFT OUTER JOIN RESULT
	ON STU_INFO.Rno = RESULT.Rno

--7.
    SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,Result.SPI
	from STU_INFO inner join RESULT
	on STU_INFO.Rno = RESULT.Rno
	where STU_INFO.Branch = 'CE'	

--8.
	SELECT STU_INFO.Rno,STU_INFO.Name,STU_INFO.Branch,RESULT.SPI
	from STU_INFO inner join RESULT
	on STU_INFO.Rno = RESULT.Rno
	where STU_INFO.Branch != 'EC'
	
--9. 
	SELECT STU_INFO.Branch,AVG(RESULT.SPI) as Branch_wise_avg_result
	from STU_INFO inner join RESULT
	on STU_INFO.Rno = RESULT.Rno
	GROUP BY Branch	

--10.
	SELECT AVG(RESULT.SPI) AS XYZ FROM RESULT INNER JOIN STU_INFO
	ON RESULT.Rno = STU_INFO.Rno
	WHERE STU_INFO.Branch IN ('CE','ME')

--11.
	SELECT STU_INFO.Branch,AVG(RESULT.SPI) as Branch_wise_avg_result
	from STU_INFO inner join RESULT
	on STU_INFO.Rno = RESULT.Rno
	GROUP BY Branch	
	ORDER BY AVG(RESULT.SPI)
--12.
	SELECT STU_INFO.Branch,MAX(RESULT.SPI) as Branch_wise_avg_result
	from STU_INFO inner join RESULT
	on STU_INFO.Rno = RESULT.Rno
	GROUP BY Branch	
	ORDER BY MAX(RESULT.SPI) DESC

--13.
	SELECT E.Name As EmployeeName, M.Name As ManagerName
	FROM EMPLOYEE_MASTER as E LEFT OUTER JOIN EMPLOYEE_MASTER as M
	ON E.ManagerNo = M.EmployeeNo
	
	SELECT E.Name as EmployeeName, M.Name as ManagerName
	FROM EMPLOYEE_MASTER AS E LEFT OUTER JOIN EMPLOYEE_MASTER AS M
	ON E.ManagerNo = M.EmployeeNo




 