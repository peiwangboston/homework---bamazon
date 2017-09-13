CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE Products (
ItemID int NOT NULL,
ProductName varchar(50) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(10,2) NOT NULL,
StockQuantity int NOT NULL,
PRIMARY KEY(ItemID)
);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
12345,
'diamond Ring',
'jewelry',
52089.99,
4);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
67891,
'Short Sleeve Polo T-shirt',
'Mens Clothing',
29.99,
25);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
23456,
'Glass Catch-all Dish',
'Home',
15.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
78912,
'DVD Player',
'Electronics',
110.99,
8);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
34567,
'High Rise Skinny Jeans - Black',
'Womens Clothing',
59.99,
30);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
89123,
'Womens Bruce Springsteen Baseball T-shirt',
'Womens Clothing',
25.99,
8);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
45678,
'Mens Knit Beanie - Blue',
'Mens Clothing',
21.99,
15);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
91234,
'Striped Jersey Cotton Sheets - Queen',
'Home',
49.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
56789,
'Spiked Dog Leash',
'Pets',
25.99,
10);

INSERT INTO Products (ItemID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
11234,
'Shark Kitty Bed',
'Pets',
59.99,
5);

