USE [Northwind];

SELECT * FROM Employees;

SELECT EmployeeID, FirstName + ' ' + LastName AS Name, BirthDate FROM Employees WHERE BirthDate < '1955-01-01';

SELECT ProductName, CategoryName FROM Products INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID WHERE Products.CategoryID=2;

SELECT ProductName, CategoryName, [Order Details].UnitPrice FROM [Order Details], Products, Categories WHERE [Order Details].ProductID=Products.ProductID AND Products.CategoryID=Categories.CategoryID;

SELECT CategoryName, AVG([Order Details].UnitPrice) AS Average_UnitPrice FROM [Order Details], Products, Categories WHERE [Order Details].ProductID=Products.ProductID AND Products.CategoryID=Categories.CategoryID GROUP BY CategoryName ORDER BY Average_UnitPrice;

SELECT Customers.CompanyName FROM Customers WHERE CompanyName LIKE 'c%';

SELECT CompanyName FROM Suppliers WHERE CompanyName LIKE '__c%';

SELECT UnitsInStock FROM Products WHERE CategoryID IN (SELECT CategoryID FROM Categories WHERE Categories.CategoryName LIKE '%con%') ORDER BY UnitsInStock DESC;

SELECT FirstName + ' ' + LastName AS Name, City FROM Employees WHERE City='London';

SELECT DISTINCT b.*, a.CategoryName FROM Categories a INNER JOIN Products  b ON a.CategoryID=b.CategoryID WHERE b.Discontinued=0 ORDER BY b.ProductName;