--MATH Functions

--PART-A 


--1.
	SELECT (5*30) AS Multiplication

--2.
	SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3.
	SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4.
	SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5.
	SELECT 5%2,5%3

--6.
	SELECT POWER(3,2),POWER(4,3)

--7.
	SELECT SQRT(25),SQRT(30),SQRT(50)

--8.
	SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9.
	SELECT PI()

--10.
	SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(167.732,-2)

--11.
	SELECT EXP(2),EXP(3)

--12.
	SELECT LOG(2),LOG(10)
	
--13.
	SELECT LOG10(5),LOG(100)

--14.
	SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15.
	SELECT SIGN(-25),SIGN(0),SIGN(25)

--16.
	SELECT RAND()

--PART-B

CREATE TABLE Emp_Master
(
	EmpNo INT,
	EmpName	VARCHAR(50),
	JoiningDate	DATETIME,
	Salary DECIMAL(8,2),
	Commison INT,
	City VARCHAR(25),
	DeptCode VARCHAR(25)
)

INSERT INTO Emp_Master
VALUES
(101, 'Keyur', '5-JAN-02', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '15-FEB-04', 14000.00, 2500, 'Ahmedabad','3@'),
(103, 'Kajal', '14-MAR-06', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '23-JUN-05', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(102, 'Harmit', '15-FEB-04', 14000.00, 2000,'Rajkot', '312A')

--1.
	SELECT (Salary+Commison) AS Result FROM Emp_Master

--2.
	SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

--3.
	SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4.
	SELECT (55%2),(55%3)

--5.
	SELECT POWER(23,2),POWER(14,3)

--PART-C

--1.
	SELECT SQRT(36),SQRT(49),SQRT(81)

--2.
	SELECT SQUARE(3),SQUARE(9),SQUARE(12)

--3.
	SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2)

--4.
	SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

--5.
	SELECT SIGN(-55),SIGN(0),SIGN(95)

---------------------------------------------------------------------------------------------------------------------------------------------------
--STRING FUNCTION

--1.
	SELECT LEN(NULL),LEN('   hello     '),LEN('')

--2.
	SELECT LOWER('Kevin'),UPPER('Kevin')

--3.
	SELECT LEFT('Kevin',3)

--4.
	SELECT SUBSTRING('Darshan University',3,10)

--5.
	SELECT REPLACE('abc123efg',123,'XYZ'),REPLACE('abcabcabc','c',5)

--6.
	SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--7.
	SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8.
	SELECT LTRIM('hello world		')

--9.
	SELECT RTRIM('	hello world		')

--10.
	SELECT LEFT('SQL Server',4),RIGHT('SQL Server',5)

--11.
	SELECT CONVERT(VARCHAR(25),1234.56),CAST(1234.56 AS VARCHAR(25))

--12.
	SELECT CONVERT(INT,10.58),CAST(10.58 AS INT)

--13.
	SELECT SPACE(10)+'Darshan'

--14.
	SELECT 'Darshan'+'University',CONCAT('Darshan','University')

--15.
	SELECT REVERSE('Darshan')

--16.
	SELECT REPLICATE('Darshan',3)

-------------------------------------------------------------------------------------------------------------------

--PART-B

--1.
	SELECT LEN(FirstName),LEN(LastName) FROM Student

--2.
	SELECT LOWER(FirstName),UPPER(FirstName) FROM Student
	SELECT LOWER(LastName),UPPER(LastName) FROM Student

--3.
	SELECT LEFT(FirstName,3) FROM Student

--4.
	SELECT SUBSTRING(Website,3,10) FROM Student

--5.
	SELECT LEFT(Website,4),RIGHT(Website,5) FROM Student

--PART-C

--1.
	SELECT SPACE(10)+FirstName FROM Student

--2.
	SELECT FirstName+LastName FROM Student	
	SELECT CONCAT(FirstName,LastName) FROM Student

--3.
	SELECT CAST(StuID AS VARCHAR(25))+FirstName+LastName+Website+City+Address FROM Student
	SELECT CONCAT(CAST(StuID AS VARCHAR(25)),FirstName,LastName,Website,City,Address) FROM Student
	
--4.
	SELECT REVERSE(FirstName) FROM Student

--5.
	SELECT REPLICATE(FirstName,3) FROM Student
	
--6.
	SELECT FirstName FROM Student
	WHERE LEN(FirstName) = 5

--7.
	SELECT FirstName+' Lives in '+City  FROM Student

--8.
	SELECT FirstName+' is '+CAST(StuID AS VARCHAR(25)) FROM Student

--DATE Function


--PART-A

--1.
SELECT GETDATE() AS 'TODAY_DATE';

--2.
SELECT GETDATE() + 365;

--3.
SELECT CONVERT (VARCHAR,GETDATE());


--4.
SELECT CONVERT (VARCHAR,GETDATE(),106);

--5.
SELECT CONVERT (VARCHAR,GETDATE(),7);

--6.
SELECT DATEDIFF(MONTH,'31-DEC-08','31-MAR-09');--INTERVAL VARIABLE,HIGHER VALUE,LOW VALUE

--7.
SELECT DATEDIFF(YEAR,'25-JAN-12','14-SEP-10');

 --8.
SELECT DATEDIFF(HOUR,'25-JAN-12 7:00 PM','26-JAN-12 10:30 AM');

--9.
SELECT DAY('12-MAY-16') AS DAY,MONTH('12-MAY-16') AS MONTH,YEAR('12-MAY-16') AS YEAR;

--10.
SELECT DATEADD(YEAR,5,GETDATE());

--11.
SELECT DATEADD(MONTH,-2,GETDATE());

--12.
--Using datename() 
SELECT DATENAME(MONTH,GETDATE());
--Using datepart()
SELECT DATEPART(MONTH,GETDATE());

--13.
SELECT EOMONTH(GETDATE()); --EO = END OF MONTH


--14.
SELECT DATEDIFF(YEAR,'09-DEC-2004',GETDATE()) AS Yrs;
SELECT DATEDIFF(MONTH,'09-DEC-2004',GETDATE()) AS Months; 



--PART-B

CREATE TABLE EMP_DETAIL
(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATETIME,
	Salary DECIMAL(8,2),
	City VARCHAR(25)
)

INSERT INTO EMP_DETAIL
VALUES
(101,'Keyur','15-JAN-02', 12000.00,'Rajkot'),
(102,'Hardik','15-FEB-04', 14000.00,'Ahmedabad'),
(103, 'Kajal','14-MAR-06',15000.00,'Baroda'),
(104, 'Bhoomi','23-JUN-05',12500.00,'Ahmedabad'),
(105, 'Harmit','15-FEB-04',14000.00,'Rajkot'),
(106,'Jay','12-MAR-07',12000.00,'Surat')


--1.
	SELECT DATEADD(DAY,365,JoiningDate) FROM EMP_DETAIL

--2.
	SELECT CONVERT(VARCHAR(25), JoiningDate, 109) FROM EMP_DETAIL

--3.
	SELECT CONVERT(VARCHAR(25), JoiningDate, 106) FROM EMP_DETAIL

--4.
	SELECT CONVERT(VARCHAR(25), JoiningDate, 107) FROM EMP_DETAIL

--5.
	SELECT DATEDIFF(MONTH,JoiningDate,'31-MAR-09') FROM EMP_DETAIL

--6.
	SELECT DATEDIFF(YEAR,JoiningDate,'12-SEP-10') FROM EMP_DETAIL

--PART-C

--1.
	SELECT DATEPART(DAY,JoiningDate),DATEPART(MONTH,JoiningDate),DATEPART(YEAR,JoiningDate) FROM EMP_DETAIL

--2.
	SELECT DATEADD(YEAR,5,JoiningDate) FROM EMP_DETAIL

--3.
	SELECT DATEADD(MONTH,-2,JoiningDate) FROM EMP_DETAIL

--4.
	SELECT DATEPART(MONTH,JoiningDate),DATENAME(MONTH,JoiningDate) FROM EMP_DETAIL

--5.
	SELECT DATEDIFF(YEAR,'09-DEC-2004',GETDATE()) AS Yrs;
    SELECT DATEDIFF(MONTH,'09-DEC-2004',GETDATE()) AS Months;
	
	