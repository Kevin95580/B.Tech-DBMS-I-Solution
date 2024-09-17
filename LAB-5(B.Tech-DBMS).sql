--PART-A

CREATE TABLE Student
(
	StuID	    INT,
	FirstName	VARCHAR(25),
	LastName	VARCHAR(25),
	Website	    VARCHAR(50),
	City	    VARCHAR(25),
	Address		VARCHAR(75)
)

SELECT * FROM Student


INSERT INTO Student
VALUES
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303 ‘Vasant Kunj’, Rajkot'),
(1022,'Hardik', 'Shah',	'digminecraft.com',	'Ahmedabad', '“Ram Krupa”, Raiya Road'),
(1033,'Kajal', 'Trivedi', 'bigactivities.com',	'Baroda', 'Raj bhavan plot, near garden'),
(1044,'Bhoomi', 'Gajera', 'checkyourmath.com',	'Ahmedabad', '“Jig’s Home”, Narol'),
(1055,'Harmit', 'Mitel', '@me.darshan.com',	'Rajkot', 'B-55, Raj Residency'),
(1066,'Ashok', 'Jani',	NULL, 'Baroda', 'A502, Club House Building')


--'"Club''S House"'
--IF YOU WANT TO ESCAPE SEQUENCE LIKE ',",/,... THEN ADD ONE MORE SINGLE QUOTE(') BEFORE IT

--1.
	SELECT FirstName FROM Student
	WHERE FirstName LIKE 'K%'

--2.
	SELECT FirstName FROM Student
	WHERE FirstName LIKE '_____'

--3.
	SELECT FirstName, LastName FROM Student
	WHERE City LIKE '_____a'

--4.
	SELECT * FROM Student
	WHERE LastName LIKE '%tel'

--5.
	SELECT * FROM Student
	WHERE FirstName LIKE 'ha%' AND FirstName LIKE '%t'

	SELECT * FROM Student
	WHERE FirstName LIKE 'ha%t'

--6.
	SELECT * FROM Student
	WHERE FirstName LIKE 'k_y%'

--7.
	SELECT FirstName FROM Student
	WHERE Website IS NULL AND FirstName LIKE '_____'

--8.
	SELECT * FROM Student
	WHERE LastName LIKE '%jer%'

--9.
	SELECT * FROM Student
	WHERE City LIKE 'r%' OR City LIKE 'b%'

--10.
	SELECT FirstName FROM Student
	WHERE Website IS NOT NULL

--11.
	SELECT * FROM Student
	WHERE FirstName LIKE '[A-H]%'

--12.
	SELECT * FROM Student
	WHERE FirstName LIKE '_[a,e,i,o,u]%'

	SELECT * FROM Student
	WHERE FirstName LIKE '_[aeiou]%'

--13.
	SELECT * FROM Student
	WHERE Website IS NULL AND FirstName LIKE '_____'

--14.
	SELECT * FROM Student
	WHERE LastName LIKE 'Pat%'

--15.
	SELECT * FROM Student
	WHERE City NOT LIKE 'b%'

--PART-B

--1.
	SELECT * FROM Student
	WHERE FirstName LIKE '[A,H]%'

--2.
	SELECT * FROM Student
	WHERE FirstName LIKE 'H[A,E,I,O,U]%'

--3.
	SELECT * FROM Student
	WHERE LastName NOT LIKE '%A'

--4.
	SELECT * FROM Student
	WHERE FirstName NOT LIKE '[AEIOU]%'

--5.
	SELECT * FROM Student
	WHERE Website LIKE '%.net%'

--PART-C

--1.
	SELECT * FROM Student
	WHERE Address LIKE '%-%'

--2.
	SELECT * FROM Student
	WHERE Address LIKE '%''%' OR Address LIKE '%"%'

--3.
	SELECT * FROM Student
	WHERE FirstName LIKE 'j%' AND Website LIKE '%@%'

--4.
	SELECT * FROM Student
	WHERE FirstName LIKE '____' OR FirstName LIKE '_____'

