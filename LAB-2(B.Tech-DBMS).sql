--SELECT OPERATION

--PART-A

--1.Retrieve all data from table DEPOSIT.
	SELECT * FROM DEPOSIT

--2.Retrieve all data from table BORROW. 
	SELECT * FROM BORROW

--3.
	SELECT * FROM CUSTOMERS

--4.
	SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--5.
	SELECT LOANNO,AMOUNT FROM BORROW

--6. 
	SELECT * FROM BORROW
	WHERE BNAME = 'ANDHERI'

--7.
	SELECT ACTNO, AMOUNT FROM DEPOSIT
	WHERE ACTNO != 106

--8.
	SELECT CNAME FROM BORROW
	WHERE AMOUNT > 5000

--9.
	SELECT CNAME FROM DEPOSIT 
	WHERE ADATE > '1-DEC-96'
	
--10.
	SELECT CNAME FROM DEPOSIT
	WHERE ACTNO < 105

--11.
	--USING 'OR'
	SELECT CNAME FROM CUSTOMERS
	WHERE CITY = 'NAGPUR' OR CITY = 'DELHI'

	--USING 'IN'
	SELECT CNAME FROM CUSTOMERS
	WHERE CITY IN ('NAGPUR', 'DELHI')

--12.
	SELECT CNAME, BNAME FROM DEPOSIT
	WHERE AMOUNT > 4000 AND ACTNO < 105

--13.
	--USING 'AND'
	SELECT * FROM BORROW
	WHERE AMOUNT >= 3000 AND AMOUNT <= 8000

	--USING 'BETWEEN'
	SELECT * FROM BORROW
	WHERE AMOUNT BETWEEN 3000 AND 8000

--14.
	SELECT * FROM DEPOSIT
	WHERE BNAME != 'ANDHERI'

--15.
	SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT
	WHERE BNAME IN ('AJNI','KAROLBAGH','M.G. ROAD') AND ACTNO < 104
	
--PART - B

--1. 
	SELECT TOP 5 * FROM DEPOSIT

--2. 
	SELECT TOP 3 * FROM DEPOSIT
	WHERE AMOUNT > 1000

--3. 
	SELECT TOP 5 LOANNO, CNAME FROM BORROW
	WHERE BNAME != 'ANDHERI'

--4.
	SELECT DISTINCT CITY FROM CUSTOMERS
	
--5. 
	SELECT DISTINCT BNAME FROM BRANCH

--PART - C

--1.
	SELECT TOP 50 PERCENT * FROM BORROW

--2.
	SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT
	
--3.
	SELECT TOP 25 PERCENT * FROM DEPOSIT
	WHERE AMOUNT > 5000

--4.
	SELECT TOP 10 PERCENT AMOUNT FROM BORROW
	ORDER BY AMOUNT DESC
	
--5.
	SELECT DISTINCT CNAME FROM CUSTOMERS

--6.
	SELECT *,((AMOUNT*0.1)+AMOUNT) AS IncreamentedAmount  FROM BORROW

--7.
	


	SELECT * FROM CUSTOMERS