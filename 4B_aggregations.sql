SELECT ROUND(MIN(UnitPrice),2) AS 'Cheapest Price Item' from products;

SELECT ROUND(AVG(UnitPrice),2) AS 'Average Price of Items' from products;

SELECT ROUND(MAX(UnitPrice),2) AS 'Most Expensive Item' from products;

SELECT ROUND(SUM(Salary),2) AS 'Payroll' from employees;

SELECT EmployeeID, FirstName AS 'First Name', LastName AS 'Last Name', Salary FROM employees
WHERE salary = (select MIN(salary) from employees)
UNION
SELECT EmployeeID, FirstName AS 'First Name', LastName AS 'Last Name', Salary FROM employees
WHERE salary = (select MAX(salary) from employees);

SELECT SupplierID, COUNT(*) AS 'Number of Items Supplied' FROM Products
GROUP BY SupplierID;

SELECT CategoryID, ROUND(AVG(UnitPrice),2) AS 'Average Price of each item' FROM products p
GROUP BY CategoryID;

SELECT p.SupplierID, CompanyName, COUNT(*) AS 'Number of items Supplied' FROM products p
JOIN suppliers s ON s.SupplierID = p.SupplierID
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

SELECT ProductID, ProductName, ROUND((UnitPrice * UnitsInStock),2) AS 'Inventory Value' FROM products
ORDER BY 'Invetory Value' DESC;