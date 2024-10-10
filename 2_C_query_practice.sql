SELECT ProductID, ProductName, UnitPrice from products
ORDER BY UnitPrice ASC;

SELECT ProductName, UnitsInStock From Products
WHERE UnitsInStock > 100
ORDER BY UnitsInStock DESC;

SELECT ProductName, UnitsInStock From Products
WHERE UnitsInStock > 100
ORDER BY UnitsInStock DESC, ProductName ASC;

SELECT COUNT(DISTINCT CustomerID) AS 'Total Customers' FROM orders;

SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS 'Total Customers' FROM orders
GROUP BY ShipCountry;

SELECT ProductName, UnitsInStock, UnitsOnOrder FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName ASC;

SELECT DISTINCT(Title) from employees;

SELECT FirstName AS 'First Name', LastName AS 'Last Name',Title, Salary FROM employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title ASC;