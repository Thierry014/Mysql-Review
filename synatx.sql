-- Query 
-- 1. select 
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM table_name;
-- ! SELECT * FROM Customers;

-- 2. select distinct 
-- ! SELECT DISTINCT Country 
FROM Customers;

-- 3. where 
-- ! SELECT * FROM Customers
WHERE CustomerID=1;

-- 4. and or not 
-- ! SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

-- 5. order by 
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

-- !SELECT * FROM Customers
ORDER BY Country DESC;

-- 6. group by 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

-- !SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- CURD
-- 1. insert into 
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- 2. update
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- !UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- 3. delete 
DELETE FROM table_name WHERE condition;
-- !DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';


-- Agg function 
-- 1. min & max
SELECT MAX/MIN(column_name)
FROM table_name
WHERE condition;

-- 2. count, Avg, Sum
SELECT COUNT/Avg/Sum(column_name)
FROM table_name
WHERE condition;

-- 3. in 
-- 4. like
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

-- ! SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

--todo https://www.w3schools.com/sql/sql_like.asp 

-- 5. wildcard
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';


-- 6. having 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

-- !SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;


-- 7. exist 
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

-- Join
SELECT column_name(s)
FROM table1
INNER/LEFT/RIGHT/FULL JOIN table2
ON table1.column_name = table2.column_name;