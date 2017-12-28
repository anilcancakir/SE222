/*
 * Query 1
 * Write a SQL statement to display information in Employees.
 */
--SELECT * FROM Employees;

/*
 * Query 2
 * Write a SQL statement to display employee id, a single column called Name that combines the first name and last name of employees whose birthdate is smaller than 1955-01-01.
 */
--SELECT EmployeeID, FirstName + ' ' + LastName AS Name FROM Employees WHERE BirthDate < '1955-01-01';

/*
 * Query 3
 * Write a SQL statement to display product name, category name which category id equals 2. (Inner Join)
 */
--SELECT Products.ProductName, Categories.CategoryName FROM Products
--INNER JOIN Categories ON
--Products.CategoryID = Categories.CategoryID
--WHERE Products.CategoryID = 2;

/*
 * Query 4
 * Write a SQL statement to display product name, category name, unit price for all data. (Join).
 */
--SELECT Products.ProductName, Categories.CategoryName, Products.UnitPrice FROM Products
--INNER JOIN Categories ON
--Products.CategoryID = Categories.CategoryID;

/*
 * Query 5
 * Write a SQL statement to display category name, average of unit price in Order Detail called Average_UnitPrice grouped by category name and ordered by Average_UnitPrice.
 */
--SELECT Categories.CategoryName, AVG([Order Details].UnitPrice) AS Average_UnitPrice FROM Products
--INNER JOIN Categories ON
--Products.CategoryID = Categories.CategoryID
--INNER JOIN [Order Details] ON
--Products.ProductID = [Order Details].ProductID
--GROUP BY Categories.CategoryName
--ORDER BY Average_UnitPrice;

/*
 * Query 6
 * Write a SQL statement to display company name started with c.
 */
--SELECT CompanyName FROM Customers WHERE CompanyName LIKE 'c%';

/*
 * Query 7
 * Write a SQL statement to display company name for all products having a 'c' in the third position from the left in company name.
 */
--SELECT CompanyName FROM Customers WHERE CompanyName LIKE '___c%';

/*
 * Query 8
 * Write a SQL statement to show number of stocks of products which their category name have 'con' word in any position.
 */
--SELECT CategoryName, Products.UnitsInStock FROM Categories
--INNER JOIN Products ON
--Categories.CategoryID = Products.CategoryID
--WHERE CategoryName LIKE '%con%'

/*
 * Query 9
 * Write a SQL statement to display a single column called Name that combines the first name and last name of employees who live in London.
 */
--SELECT FirstName + ' ' + LastName AS Name FROM Employees WHERE City = 'London';

/*
 * Query 10
 * Write a SQL statement to show all information of products, their category names where discontinued of products equals to 0 ordered by product name.
 */
SELECT Products.*, Categories.CategoryName FROM Products
INNER JOIN Categories ON
Products.CategoryID = Categories.CategoryID
WHERE Products.Discontinued = 0
ORDER BY Products.ProductName;