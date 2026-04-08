-- Total Sales
--Q1: What is the total revenue generated?
SELECT SUM(total_amount) AS total_sales FROM Orders;

-- Sales by City
--Q2: Which city generates the highest sales?
SELECT c.city, SUM(o.total_amount) AS total_sales
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_sales DESC;

-- Top Customers
--Q3: Who are the top customers by spending?
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Best-Selling Products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Monthly Sales
SELECT MONTH(order_date) AS month, SUM(total_amount) AS sales
FROM Orders
GROUP BY MONTH(order_date);

--Find repeat customers
SELECT customer_id, COUNT(order_id) AS order_count
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Average order value
SELECT AVG(total_amount) AS avg_order_value FROM Orders;

-- Highest order
SELECT * FROM Orders
ORDER BY total_amount DESC
LIMIT 1;


