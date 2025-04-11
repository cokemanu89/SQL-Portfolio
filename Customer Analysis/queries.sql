-- Day 1: SQL Basics Queries

-- 1. List all customers
SELECT * FROM customers;

-- 2. Customers in the West or East region
SELECT name, region
FROM customers
WHERE region = 'West' OR region = 'East';

-- 3. Orders placed in January 2024
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';

-- 4. Top 2 most expensive orders
SELECT *
FROM orders
ORDER BY total_amount DESC
LIMIT 2;

-- 5. All product names and categories
SELECT product_name, category
FROM products;

-- 6. Customers who placed more than one order
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
