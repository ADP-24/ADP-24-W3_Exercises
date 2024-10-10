SELECT ProductID, ProductName, UnitPrice from products
where UnitPrice < 7.50;

SELECT ProductName, UnitsInStock, UnitsOnOrder from products
Where UnitsInStock = 0 AND UnitsOnOrder > 1;

SELECT ProductName, CategoryID FROM Products
WHERE CategoryID = 8;

SELECT LastName, FirstName, Title FROM employees
WHERE title = 'manager';

SELECT * FROM products;

SELECT * FROM suppliers
WHERE CompanyName = 'Tokyo Traders'; -- 4

SELECT SupplierID, ProductName FROM Products
WHERE SupplierID = 4; -- Mishi Kobe Niku, Ikura, Longlife Tofu