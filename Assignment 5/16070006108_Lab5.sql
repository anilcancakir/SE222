-- Question 1
INSERT INTO Orders ([CustomerID]
      ,[EmployeeID]
      ,[OrderDate]
      ,[RequiredDate]
      ,[ShippedDate]
      ,[ShipVia]
      ,[Freight]
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]) VALUES ('VICTE',3, '1996-07-08 00:00:00.000','1996-08-05 00:00:00.000','1996-07-15 00:00:00.000', 1,41.34,'Ave. 5 de Mayo Porlamar', '2, rue du Commerce','Lyon','NULL','69004','France');

-- Question 2
INSERT INTO Employees ([LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Country], [Extension], [Notes], [ReportsTo], [PhotoPath])
VALUES('Çakýr','Anýlcan','Software Engr.','Engr.','1995-03-25','2013-00-00', 'Yasar Universitesi', 'Bornova', 'Izmir', 333, 'sa', 4, NULL);

-- Question 3
INSERT INTO Shippers ([CompanyName],[Phone]) VALUES('Mühendis','(531)942-6876');

-- Question 4
IF OBJECT_ID('Categories_backup', 'U') IS NOT NULL DROP TABLE [Categories_backup];
CREATE TABLE [Categories_backup](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Categories_backup] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SELECT * INTO Categories_backup FROM Categories;

-- Question 5
UPDATE [Employees] SET Title = 'Sales Manager', City = 'Yorkshire'
WHERE EmployeeID = (SELECT TOP 1 EmployeeID FROM Employees ORDER BY EmployeeID DESC);

-- Question 6
UPDATE [Orders] SET ShipName = 'Ave. 5 de Mayo Porlamar'
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE CompanyName = 'GROSELLA-Restaurante');

-- Question 7
UPDATE [Shippers] SET CompanyName = 'Yasar A.S'
WHERE CompanyName LIKE '%pp%' OR Phone = '(313) 555-5735';

-- Question 8
UPDATE [Shippers] SET CompanyName = 'Yasar A.S', Phone = '(503)555-2222'
WHERE CompanyName = 'Migros';

-- Question 9
DELETE FROM [Orders]
WHERE OrderID = 11078;

-- Question 10
DELETE FROM [Categories_backup];

-- Question 11
DELETE FROM [Order Details]
WHERE Quantity = 40 AND UnitPrice < 20;

-- Question 12
DELETE FROM [Territories]
WHERE TerritoryDescription = 'New York';