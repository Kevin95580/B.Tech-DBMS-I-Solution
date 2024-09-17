-------------------------------------     Implement Advanced level Joins      ---------------------------
					
					
					-------------     PART A     ------------


--1.	 
	SELECT VILLAGE.Name FROM CITY LEFT JOIN Village
	ON CITY.CityID = VILLAGE.CityID
	WHERE CITY.Name = 'RAJKOT'

--2.	
	SELECT CITY.Name AS CITY , CITY.Pincode , Village.Name AS VILLAGE
	FROM CITY LEFT JOIN Village
	ON CITY.CityID = Village.CityID



--3.
	SELECT CITY.Name FROM CITY
	LEFT JOIN VILLAGE
	ON CITY.CityID = VILLAGE.CityID
	GROUP BY CITY.Name
	HAVING COUNT(VILLAGE.VID) > 1


--4.	
	SELECT CITY.Name FROM CITY LEFT JOIN VILLAGE
	ON CITY.CityID = VILLAGE.CityID
	WHERE VILLAGE.VID IS NULL

--5.	
	SELECT CITY.Name, COUNT(VILLAGE.Name) AS TOTAL_VILLAGE	
	FROM CITY LEFT JOIN VILLAGE
	ON CITY.CityID = VILLAGE.CityID
	GROUP BY CITY.Name



--6.	
	SELECT CITY.NAME, COUNT(CITY.CityID) AS TOTAL_VILLAGE
	FROM CITY LEFT JOIN VILLAGE
	ON CITY.CityID = VILLAGE.CityID
	GROUP BY  CITY.NAME, CITY.CityID
	HAVING COUNT(VILLAGE.VID) > 1

				
--------------------------------     PART B     ------------


--1.
CREATE TABLE Emp_details (
    Eid INT NOT NULL,
    Ename VARCHAR(100) NOT NULL,
    Did INT NOT NULL,
    Dname VARCHAR(50) NOT NULL,
    Cid INT NOT NULL,
    Cname VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience > 0),
    CONSTRAINT PK_Emp_details PRIMARY KEY (Eid),
    FOREIGN KEY (Did) REFERENCES Dept_details (Did),
    FOREIGN KEY (Cid) REFERENCES City_details (Cid)
)

--2.
	CREATE TABLE Dept_details 
	(
		Did INT NOT NULL,
		Dname VARCHAR(50) NOT NULL,
		CONSTRAINT PK_Dept_details PRIMARY KEY (Did)
	)


--2.
	CREATE TABLE City_details 
	(
		Cid INT NOT NULL,
		Cname VARCHAR(50) NOT NULL,
		CONSTRAINT PK_City_details PRIMARY KEY (Cid)
	)


			
			
------------------------     PART C     ------------




--1.

	
CREATE TABLE Emp_info 
(
    Eid INT NOT NULL,
    Ename VARCHAR(100) NOT NULL,
    Did INT NOT NULL,
    Cid INT NOT NULL,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience > 0),
    CONSTRAINT PK_Emp_info PRIMARY KEY (Eid),
    FOREIGN KEY (Did) REFERENCES Dept_info (Did),
    FOREIGN KEY (Cid) REFERENCES City_info (Cid)
)

CREATE TABLE Dept_info (
    Did INT NOT NULL,
    Dname VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Dept_info PRIMARY KEY (Did)
)

CREATE TABLE City_info (
    Cid INT NOT NULL,
    Cname VARCHAR(50) NOT NULL,
    Did INT NOT NULL,
    CONSTRAINT PK_City_info PRIMARY KEY (Cid),
    FOREIGN KEY (Did) REFERENCES District (Did)
)

CREATE TABLE District (
    Did INT NOT NULL,
    Dname VARCHAR(50) NOT NULL,
    Sid INT NOT NULL,
    CONSTRAINT PK_District PRIMARY KEY (Did),
    FOREIGN KEY (Sid) REFERENCES State (Sid)
)


CREATE TABLE State (
    Sid INT NOT NULL,
    Sname VARCHAR(50) NOT NULL,
    Cid INT NOT NULL,
    CONSTRAINT PK_State PRIMARY KEY (Sid),
    FOREIGN KEY (Cid) REFERENCES Country (Cid)
)

CREATE TABLE Country 
	(
		Cid INT NOT NULL,
		Cname VARCHAR(50) NOT NULL,
		CONSTRAINT PK_Country PRIMARY KEY (Cid)
	)

--2. Insert 5 records in each table.


INSERT INTO Emp_info (Eid, Ename, Did, Cid,  Salary, Experience) 
VALUES	(101, 'John Doe', 1, 1,  60000.00, 5),
		(102, 'Jane Smith', 2,  2, 75000.00, 8),
		(103, 'Carlos Garcia', 3,  3,  55000.00, 4),
		(104, 'Hans Müller', 4,  4,  80000.00, 6),
		(105, 'Marie Curie', 5,  5,  90000.00, 7)


INSERT INTO Dept_info (Did, Dname) 
VALUES	(1, 'HR'),
		(2, 'IT'),
		(3, 'Finance'),
		(4, 'Marketing'),
		(5, 'Sales')



INSERT INTO City_info (Cid, Cname, Did) 
VALUES	(1, 'Los Angeles', 1),
		(2, 'Toronto', 2),
		(3, 'Mexico City', 3),
		(4, 'Munich', 4),
		(5, 'Paris', 5)



INSERT INTO District (Did, Dname, Sid) 
VALUES	(1, 'Los Angeles County', 1),
		(2, 'Toronto District', 2),
		(3, 'Mexico City District', 3),
		(4, 'Munich District', 4),
		(5, 'Paris District', 5)



INSERT INTO State (Sid, Sname, Cid)
VALUES	(1, 'California', 1),
		(2, 'Ontario', 2),
		(3, 'Mexico City', 3),
		(4, 'Bavaria', 4),
		(5, 'Ile-de-France', 5)



INSERT INTO Country (Cid, Cname) 
VALUES	(1, 'USA'),
		(2, 'Canada'),
		(3, 'Mexico'),
		(4, 'Germany'),
		(5, 'France')




--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees
 SELECT 
    E.Ename AS Employee_Name,
    D.Dname AS Department_Name,
    E.Salary,
    E.Experience,
    C.Cname AS City,
    Dt.Dname AS District,
    S.Sname AS State,
    Co.Cname AS Country
FROM Emp_info AS E

INNER JOIN Dept_info AS D 
ON E.Did = D.Did

INNER JOIN City_info AS C 
ON E.Cid = C.Cid

INNER JOIN District AS Dt 
ON C.Did = Dt.Did

INNER JOIN State AS S 
ON Dt.Sid = S.Sid

INNER JOIN Country AS Co 
ON S.Cid = Co.Cid
