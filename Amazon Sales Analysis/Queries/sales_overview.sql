-- 📊 Amazon Sales Performance Analysis: Sales Overview

-- 1. Total Revenue
SELECT SUM(total_sales) AS total_revenue
FROM order_items;

-- 2. Monthly Revenue Trends
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_sales) AS monthly_revenue
FROM orders
JOIN order_items USING(order_id)
GROUP BY month
ORDER BY month;

-- 3. Average Order Value (AOV)
SELECT
    AVG(total) AS average_order_value
FROM (
    SELECT order_id, SUM(total_sales) AS total
    FROM order_items
    GROUP BY order_id
) AS sub;

-- 4. Total Units Sold by Category
SELECT category, SUM(quantity) AS total_units
FROM order_items
JOIN products USING(product_id)
GROUP BY category
ORDER BY total_units DESC;

-- 5. Sales Breakdown by Payment Method
SELECT payment_method, SUM(total_sales) AS revenue
FROM orders
JOIN order_items USING(order_id)
GROUP BY payment_method
ORDER BY revenue DESC;
