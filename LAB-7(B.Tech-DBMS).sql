CREATE TABLE EMP
(
	EID INT,
	EName VARCHAR(50),
	Department VARCHAR(50),
	Salary	INT,
	JoiningDate	DATETIME,
	City VARCHAR(50)
)

INSERT INTO EMP
VALUES 
(101, 'Rahul' ,'Admin', 56000, '1-Jan-90','Rajkot'),
(102, 'Hardik' ,'IT', 18000, '25-Sep-90','Ahmedabad'),
(103, 'Bhavin' ,'HR', 25000, '14-May-91','Baroda'),
(104, 'Bhoomi' ,'Admin', 39000, '8-Feb-91','Rajkot'),
(105, 'Rohit' ,'IT', 17000, '23-Jul-90','Jamnagar'),
(106, 'Priya' ,'IT', 9000, '18-Oct-90','Ahmedabad'),
(107, 'Bhoomi' ,'HR', 34000, '25-Dec-91','Rajkot')

--1.
	SELECT MAX(Salary) AS Maximum, MIN(Salary) AS Minimum FROM EMP

--2.
	SELECT AVG(Salary) AS Average, SUM(Salary) AS Total FROM EMP

--3.
	SELECT COUNT(*) FROM EMP

--4.
	SELECT MAX(Salary) FROM EMP
	WHERE City = 'Rajkot'

--5.
	SELECT MAX(Salary) FROM EMP
	WHERE Department = 'IT'

--6.
	SELECT COUNT(*) FROM EMP
	WHERE JoiningDate > '8-feb-91'

--7.
	SELECT AVG(Salary) FROM EMP
	WHERE Department = 'Admin'

--8.
	SELECT SUM(Salary) FROM EMP
	WHERE Department='HR'

--9.
	SELECT COUNT(DISTINCT(City)) FROM EMP

--10.
	SELECT COUNT(DISTINCT(Department)) FROM EMP

--11.
	SELECT MIN(Salary) FROM EMP
	WHERE City = 'Ahmedabad'

--12.
	SELECT MAX(Salary) FROM EMP
	GROUP BY City

--13.
	SELECT MIN(Salary) FROM EMP
	GROUP BY Department

--14.
	SELECT City,COUNT(*) FROM EMP
	GROUP BY City

--15.
	SELECT SUM(Salary) FROM EMP
	GROUP BY Department

--16.
	SELECT AVG(Salary) FROM EMP
	GROUP BY Department

--PART - B

--1.
	SELECT COUNT(*) FROM EMP
	WHERE City = 'Rajkot'

--2.
	SELECT MAX(Salary) - MIN(Salary) AS Difference FROM EMP

--3.
	SELECT COUNT(*) FROM EMP
	WHERE JoiningDate > '1-JAN-1991'

--PART - C

--1.
	SELECT COUNT(*) FROM EMP
	WHERE City = 'Rajkot' OR City = 'Baroda'

--2.
	SELECT COUNT(*) FROM EMP
	WHERE JoiningDate = '1-JAN-1991' AND Department = 'IT'

--3.
	SELECT SUM(Salary) FROM EMP
	GROUP BY JoiningDate


--4 
	SELECT MAX(Salary) FROM EMP
	GROUP BY Department , City



