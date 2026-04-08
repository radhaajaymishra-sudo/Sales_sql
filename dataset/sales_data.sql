-- Sales Data Analysis Project
-- Created by: Radha Mishra
-- Description: This dataset contains customer, product, and order details for analysis



INSERT INTO Customers VALUES
(1, 'Rahul Sharma', 'Delhi'),
(2, 'Anita Verma', 'Mumbai'),
(3, 'Amit Singh', 'Bangalore');

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 60000),
(2, 'Phone', 'Electronics', 20000),
(3, 'Headphones', 'Accessories', 2000);

INSERT INTO Orders VALUES
(101, 1, '2024-01-10', 80000),
(102, 2, '2024-02-15', 20000),
(103, 3, '2024-03-20', 22000);

INSERT INTO Order_Details VALUES
(101, 1, 1),
(101, 3, 10),
(102, 2, 1),
(103, 3, 11);
