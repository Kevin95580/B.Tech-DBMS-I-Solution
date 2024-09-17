CREATE TABLE  SALES_DATA
(
	Region VARCHAR(50),
	Product VARCHAR(25),
	Sales_Amount INT,
	 Year	INT
)

INSERT INTO SALES_DATA
VALUES
('North America', 'Watch', 1500,2023),
('Europe', 'Mobile', 1200, 2023),
('Asia', 'Watch', 1800, 2023),
('North America', 'TV' ,900 ,2024),
('Europe', 'Watch', 2000 ,2024),
('Asia', 'Mobile', 1000, 2024),
('North America', 'Mobile', 1600, 2023),
('Europe', 'TV', 1500, 2023),
('Asia', 'TV', 1100, 2024),
('North America', 'Watch', 1700, 2024)


--PART-A

--1.
	SELECT 
		SUM(SALES_DATA.Sales_Amount) AS Total_Amount
	FROM SALES_DATA
	GROUP BY Region


--2.
	SELECT 
		AVG(SALES_DATA.Sales_Amount) AS Average_Amount 
	FROM SALES_DATA
	GROUP BY Product

--3.
SELECT 
MAX(Sales_Amount) AS Maximum_Amount 
FROM SALES_DATA
GROUP BY Year

--4.
SELECT 
	MIN(SALES_DATA.Sales_Amount) AS Minimum_Amount
FROM SALES_DATA
GROUP BY Region,Year

--5.
SELECT 
	COUNT(Product) AS Product_Count 
FROM SALES_DATA
GROUP BY Region


--6.
SELECT 
	SUM(Sales_Amount) AS Sales_Amount 
FROM SALES_DATA
GROUP BY Year,Product

--7.
SELECT 
	Region,
	SUM(Sales_Amount) AS Total_Sales 
FROM SALES_DATA
GROUP BY Region
HAVING SUM(Sales_Amount) > 5000

--8.
SELECT 
	Product,
	AVG(Sales_Amount) AS Average_Amount
FROM SALES_DATA
GROUP BY Product
HAVING AVG(Sales_Amount) < 10000

--9.
SELECT 
	Year,
	MAX(Sales_Amount) AS Maximum_Salary
FROM SALES_DATA
GROUP BY Year
HAVING MAX(Sales_Amount) > 500

--10.
SELECT 
	Region,
	COUNT(DISTINCT Product) AS Sold_Product
FROM SALES_DATA
GROUP BY Region
HAVING COUNT(DISTINCT Product)>=3

--11.
SELECT 
	Year,
	MIN(Sales_Amount) AS Minimum_Sales
FROM SALES_DATA
GROUP BY Year
HAVING MIN(Sales_Amount)<1000

--12.
SELECT 
	SUM(Sales_Amount) AS Total_Amount 
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
ORDER BY SUM(Sales_Amount)


--PART-B

--1.
SELECT 
	COUNT(*) AS Order_Count 
FROM SALES_DATA
GROUP BY Year, Region
ORDER BY Year,Region


--2.
SELECT 
	Region,MAX(Sales_Amount) AS Maximum_Sales_Amount
FROM SALES_DATA
GROUP BY Year,Region
HAVING MAX(Sales_Amount)>1000
ORDER BY Region

--3.
SELECT 
	Year,
	SUM(Sales_Amount) AS Total_Sales
FROM SALES_DATA
GROUP BY Year
HAVING SUM(Sales_Amount) < 1000
ORDER BY Year


--4.
SELECT 
	TOP 3 Region 
FROM SALES_DATA
WHERE Year = 2024
ORDER BY Year

--PART - C 

--1.
SELECT 
	Product,
	AVG(Sales_Amount) AS Average_Sales
FROM SALES_DATA
WHERE Sales_Amount > 1000 AND Sales_Amount < 2000
GROUP BY Product
ORDER BY Product

--2.
SELECT 
	Year,
	COUNT(*) AS Order_Count
FROM SALES_DATA
GROUP BY Region,Year
HAVING COUNT(*)>5
	
--3.
SELECT 
	Region,
	AVG(Sales_Amount) AS Average_Sales 
FROM SALES_DATA
WHERE Year = 2023
GROUP BY Region
HAVING AVG(Sales_Amount) > 1500
ORDER BY AVG(Sales_Amount)

--4.
SELECT 
	Region,
	COUNT(*) AS Product_Count
FROM SALES_DATA
GROUP BY Region,Product
HAVING COUNT(*) > 1

--5.
SELECT 
	MAX(Sales_Amount) AS Highest_Amount 
FROM SALES_DATA
GROUP BY Region