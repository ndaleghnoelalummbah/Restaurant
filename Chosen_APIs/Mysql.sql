DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE restaurant;
USE restaurant;

CREATE TABLE Customer (
    CustID INT PRIMARY KEY AUTO_INCREMENT, 
    CustName VARCHAR(50) NOT NULL, 
    Email VARCHAR(30) NOT NULL,
    Tel VARCHAR(14) NOT NULL,  
    CustLocation VARCHAR(20) NOT NULL);


CREATE TABLE Logging (
    CustID INT NOT NULL,
    Passwd VARCHAR(10) NOT NULL,
    FOREIGN KEY (CustID) REFERENCES Customer(CustID) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT, 
    AdminName VARCHAR(50) NOT NULL);


CREATE TABLE Orders ( 
    OrderID INT PRIMARY KEY AUTO_INCREMENT,  
    OrderDate DATE NOT NULL, 
    DeliveryDate DATE NULL, 
    Quantity INT NOT NULL, 
    TotalPrice FLOAT NOT NULL, 
    Delivery_Time TIME NULL, 
    stat VARCHAR(5) DEFAULT 'FALSE', 
    CustID INT NOT NULL,
    AdminID INT DEFAULT 4,
    FOREIGN KEY (CustID) REFERENCES Customer(CustID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID) ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE Catering ( 
    OrderID INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE ON UPDATE CASCADE, 
    DeliveryLocation VARCHAR(20) NOT NULL);


CREATE TABLE Reservation ( 
    OrderID INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE ON UPDATE CASCADE, 
    Reservation_size INT NOT NULL);


CREATE TABLE MenuItems ( 
    ItemName VARCHAR(20) PRIMARY KEY, 
    ItemDesc TEXT DEFAULT 'VERY DELICIOUS DELICACY', 
    Price FLOAT NOT NULL, 
    ItemImage BLOB NULL);


CREATE TABLE Payment ( 
    OrderID INT NOT NULL,
    Amount FLOAT NOT NULL, 
    Payment_type VARCHAR(20) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE OrderMenuContent ( 
    OrderID INT,
    ItemName VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (ItemName) REFERENCES MenuItems(ItemName) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(OrderID, ItemName));


CREATE TABLE MenuList ( 
    Branch VARCHAR(50) NOT NULL, 
    MenuDate DATE NOT NULL DEFAULT CURRENT_DATE, 
    ItemName VARCHAR(20),
    FOREIGN KEY (ItemName) REFERENCES MenuItems(ItemName) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(Branch, MenuDate, ItemName));