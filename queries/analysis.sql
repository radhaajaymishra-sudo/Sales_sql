-- Total Sales
SELECT SUM(total_amount) AS total_sales FROM Orders;

-- Sales by City
SELECT c.city, SUM(o.total_amount) AS total_sales
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city;

-- Top Customers
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
