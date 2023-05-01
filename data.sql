CREATE DATABASE IF NOT EXISTS Sales_Tracking DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE Sales_Tracking ;

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description VARCHAR(255)
);

CREATE TABLE Item (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(50),
    Size VARCHAR(20),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Agent (
    AgentID INT PRIMARY KEY,
    AgentName VARCHAR(50),
    Address VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    AgentID INT,
    FOREIGN KEY (AgentID) REFERENCES Agent(AgentID)
);

CREATE TABLE OrderDetail (
    ID INT PRIMARY KEY,
    OrderID INT,
    ItemID INT,
    Quantity INT,
    UnitAmount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

INSERT INTO Category (CategoryID, CategoryName, Description) VALUES
(1, 'Electronics', 'Electronic devices and gadgets'),
(2, 'Clothing', 'Apparel and fashion accessories'),
(3, 'Books', 'Books of various genres and formats'),
(4, 'Home Appliances', 'Household electronic appliances'),
(5, 'Toys', 'Toys and games for kids and adults'),
(6, 'Sports', 'Sports equipment and accessories'),
(7, 'Furniture', 'Furniture for home and office'),
(8, 'Cosmetics', 'Makeup and beauty products'),
(9, 'Office Supplies', 'Office essentials and stationery'),
(10, 'Automotive', 'Automotive parts and accessories'),
(11, 'Jewelry', 'Fashion and precious jewelry'),
(12, 'Shoes', 'Footwear for men, women, and kids'),
(13, 'Garden', 'Gardening tools and accessories'),
(14, 'Pet Supplies', 'Pet food and accessories'),
(15, 'Musical Instruments', 'Instruments and music accessories');

INSERT INTO Item (ItemID, ItemName, Size, CategoryID) VALUES
(1, 'Laptop', '15-inch', 1),
(2, 'T-shirt', 'M', 2),
(3, 'Thriller Novel', 'Paperback', 3),
(4, 'Microwave Oven', '20L', 4),
(5, 'Action Figure', '6-inch', 5),
(6, 'Basketball', 'Official Size', 6),
(7, 'Dining Table', '6-seater', 7),
(8, 'Lipstick', 'Standard', 8),
(9, 'Ballpoint Pen', 'Medium', 9),
(10, 'Car Air Freshener', 'Standard', 10),
(11, 'Gold Necklace', '18-inch', 11),
(12, 'Running Shoes', 'US 10', 12),
(13, 'Garden Trowel', 'Standard', 13),
(14, 'Dog Food', 'Large', 14),
(15, 'Acoustic Guitar', 'Full Size', 15);

INSERT INTO Agent (AgentID, AgentName, Address) VALUES
(1, 'John Doe', '123 Main St, Los Angeles, CA 90012'),
(2, 'Jane Smith', '456 Oak St, Chicago, IL 60601'),
(3, 'Michael Brown', '789 Elm St, Houston, TX 77002'),
(4, 'Emily Davis', '147 Maple St, Phoenix, AZ 85001'),
(5, 'Sarah Miller', '258 Pine St, Philadelphia, PA 19102'),
(6, 'David Johnson', '369 Willow St, San Antonio, TX 78204'),
(7, 'Daniel Lee', '480 Chestnut St, San Diego, CA 92101'),
(8, 'Samantha Taylor', '591 Cedar St, Dallas, TX 75201'),
(9, 'James Wilson', '602 Cherry St, San Jose, CA 95110'),
(10, 'Jennifer White', '713 Poplar St, Austin, TX 78701'),
(11, 'Matthew Harris', '824 Birch St, Jacksonville, FL 32202'),
(12, 'Jessica Clark', '935 Aspen St, San Francisco, CA 94102'),
(13, 'Christopher Lewis', '1046 Spruce St, Indianapolis, IN 46202'),
(14, 'Amanda Young', '1157 Walnut St, Columbus, OH 43215'),
(15, 'Melissa Hall', '1268 Alder St, Fort Worth, TX 76102');

INSERT INTO Orders (OrderID, OrderDate, AgentID) VALUES
(1, '2023-04-25', 1),
(2, '2023-04-26', 2),
(3, '2023-04-27', 3),
(4, '2023-04-27', 4),
(5, '2023-04-28', 5),
(6, '2023-04-28', 6),
(7, '2023-04-29', 7),
(8, '2023-04-29', 8),
(9, '2023-04-30', 9),
(10, '2023-04-30', 10),
(11, '2023-05-01', 11),
(12, '2023-05-01', 12),
(13, '2023-05-01', 13),
(14, '2023-05-01', 14),
(15, '2023-05-01', 15);

INSERT INTO OrderDetail (ID, OrderID, ItemID, Quantity, UnitAmount) VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 3, 2, 15.00),
(3, 2, 2, 3, 25.00),
(4, 2, 4, 1, 200.00),
(5, 3, 5, 4, 20.00),
(6, 3, 6, 1, 50.00),
(7, 4, 7, 1, 400.00),
(8, 4, 8, 5, 10.00),
(9, 5, 9, 10, 1.00),
(10, 5, 10, 2, 5.00),
(11, 6, 11, 1, 1000.00),
(12, 6, 12, 2, 60.00),
(13, 7, 13, 3, 10.00),
(14, 7, 14, 1, 40.00),
(15, 8, 15, 1, 300.00),
(16, 8, 1, 1, 1200.00),
(17, 9, 2, 3, 25.00),
(18, 9, 3, 2, 15.00),
(19, 10, 4, 1, 200.00),
(20, 10, 5, 4, 20.00),
(21, 11, 6, 1, 50.00),
(22, 11, 7, 1, 400.00),
(23, 12, 8, 5, 10.00),
(24, 12, 9, 10, 1.00),
(25, 13, 10, 2, 5.00),
(26, 13, 11, 1, 1000.00),
(27, 14, 12, 2, 60.00),
(28, 14, 13, 3, 10.00),
(29, 15, 14, 1, 40.00),
(30, 15, 15, 1, 300.00);