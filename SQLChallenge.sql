--USE master;
--GO

--CREATE SCHEMA Customers

--CREATE TABLE Customers.Customers(
--ID INT NOT NULL,
--FirstName NVARCHAR(50) NOT NULL,
--LastName NVARCHAR(50) NOT NULL,
--CardNumber INT NOT NULL
--CONSTRAINT [PK_Customers] PRIMARY KEY(ID)
--);

CREATE TABLE Customers.Products(
ID INT NOT NULL,
Name NVARCHAR(50) NOT NULL,
Price DECIMAL NOT NULL,
CONSTRAINT [PK_Price] PRIMARY KEY(ID)
);

CREATE TABLE Customers.Orders(
ID INT NOT NULL,
ProductID INT NOT NULL,
CustomerID INT NOT NULL,
FOREIGN KEY (ProductID) REFERENCES Customers.Products (ID),
FOREIGN KEY (ProductID) REFERENCES Customers.Customers (ID),
);


ALTER TABLE Customers.Customers
ALTER COLUMN CardNumber NVARCHAR(20);

INSERT INTO Customers.Products(ID, [Name], Price) VALUES(1, 'iPhone', 200)
INSERT INTO Customers.Products(ID, [Name], Price) VALUES(2, 'iPod', 100)
INSERT INTO Customers.Products(ID, [Name], Price) VALUES(3, 'iMac', 1000)

INSERT INTO Customers.Customers VALUES(1, 'Tina', 'Smith', '123412312234')
INSERT INTO Customers.Customers VALUES(2, 'Alison', 'Chains', '66666666666')
INSERT INTO Customers.Customers VALUES(3, 'Amanda', 'Hugankiss', '98769879876')

INSERT INTO Customers.Orders VALUES (1,1,1)
INSERT INTO Customers.Orders VALUES (3,2,3)
INSERT INTO Customers.Orders VALUES (2,1,2)

SELECT * FROM Customers.Orders WHERE CustomerID = 1
SELECT * FROM C

SELECT  * FROM Customers.Customers
SELECT  * FROM Customers.Products
SELECT  * FROM Customers.Orders