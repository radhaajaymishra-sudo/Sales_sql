-- Sales Data Analysis Project
-- Created by: Radha Mishra
-- Description: This dataset contains customer, product, and order details for analysis

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

--Insering data set in table

INSERT INTO Customers VALUES
(1, 'Rahul Sharma', 'Delhi'),
(2, 'Anita Verma', 'Mumbai'),
(3, 'Amit Singh', 'Bangalore'),
(4, 'Neha Gupta', 'Delhi'),
(5, 'Rohit Jain', 'Pune');
  

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 60000),
(2, 'Phone', 'Electronics', 20000),
(3, 'Headphones', 'Accessories', 2000);

INSERT INTO Orders VALUES
(101, 1, '2024-01-10', 80000),
(102, 2, '2024-02-15', 20000),
(103, 3, '2024-03-20', 22000),
(104, 4, '2024-04-10', 15000),
(105, 5, '2024-05-12', 30000) ;

INSERT INTO Order_Details VALUES
(101, 1, 1),
(101, 3, 10),
(102, 2, 1),
(103, 3, 11);


