------ENTIRY TABLES-------
CREATE DATABASE VTYSLab2;
USE VTYSLab2;

CREATE TABLE tbl_Order(
OrderID int NOT NULL,
OrderCount int NULL,
OrderAddress nvarchar(255) NULL,
CustomerID int NOT NULL,
ProductID int NOT NULL
);
ALTER TABLE tbl_Order ADD PRIMARY KEY (OrderID);

CREATE TABLE tbl_Customer(
CustomerID int NOT NULL,
CustomerIdentityNumber nvarchar(11) NULL,
CustomerName nvarchar(20) NULL,
CustomerSurname nvarchar(20) NULL
);
ALTER TABLE tbl_Customer ADD PRIMARY KEY (CustomerID);

CREATE TABLE tbl_Product(
ProductID int NOT NULL, 
ProductName nvarchar(50) NULL,
ProductPrice decimal(10, 2) NULL,
ProductCount int NULL
);
ALTER TABLE tbl_Product ADD PRIMARY KEY (ProductID);

---------FOREIGN KEYS-----------
ALTER TABLE tbl_Order ADD FOREIGN KEY(CustomerID) REFERENCES tbl_Customer(CustomerID);
ALTER TABLE tbl_Order ADD FOREIGN KEY(ProductID) REFERENCES tbl_Product(ProductID);