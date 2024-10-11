SELECT ProductName, UnitPrice from products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

SELECT p.ProductName, c.CategoryName, p.UnitPrice from products p
JOIN categories c ON c.CategoryID = p.CategoryID
WHERE UnitPrice = (SELECT ROUND(MAX(UnitPrice),2) FROM products);

SELECT OrderID, ShipName, ShipAddress FROM Orders
WHERE ShipperID = (SELECT ShipperID FROM Shippers
WHERE ShipperName = 'Federal Shipping');

SELECT * FROM shippers;

SELECT OrderID FROM `Order Details`
WHERE ProductID = (SELECT ProductID FROM Products
WHERE ProductName = 'Sasquatch Ale');

SELECT FirstName, LastName, o.OrderID FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID = 10266;

SELECT FirstName, LastName from employees
WHERE EmployeeID = (SELECT employeeID FROM orders Where OrderID = 10266);

SELECT ContactName from customers
WHERE CustomerID = (SELECT CustomerID FROM orders Where OrderID = 10266);