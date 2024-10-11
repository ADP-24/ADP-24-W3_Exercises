SELECT ProductID, ProductName, UnitPrice, CategoryName from products p
JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryID ASC, p.ProductName ASC;

SELECT ProductID, ProductName, UnitPrice, CompanyName from products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY ProductName;

SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName FROM products p
JOIN suppliers s on p.SupplierID = s.SupplierID
JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName ASC;

SELECT o.OrderID, ShipName, ShipAddress, CompanyName, ShipCountry From orders o
JOIN suppliers s on o.ShipVia = s.SupplierID
WHERE o.ShipCountry = 'Germany'
ORDER BY CompanyName ASC, OrderID ASC;

SELECT o.OrderID, OrderDate, ShipName, ShipAddress, p.ProductName FROM orders o
JOIN `order details` od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID 
WHERE p.ProductName = 'Sasquatch Ale';