USE sql_portfolio;
DROP TABLE IF EXISTS order_items, orders, products, customers;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);
-- Drop tables if they already exist
DROP TABLE IF EXISTS order_items, orders, products, customers;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Data Inserts
INSERT INTO customers VALUES
(1, 'Alice Smith', 'North'),
(2, 'Bob Jones', 'East'),
(3, 'Carlos Diaz', 'South'),
(4, 'Dana Lee', 'West');

INSERT INTO products VALUES
(1, 'Wireless Mouse', 'Electronics'),
(2, 'Bluetooth Speaker', 'Electronics'),
(3, 'Water Bottle', 'Home'),
(4, 'Yoga Mat', 'Fitness');

INSERT INTO orders VALUES
(101, 1, '2024-01-10', 75.00),
(102, 2, '2024-01-15', 120.00),
(103, 1, '2024-01-20', 40.00),
(104, 3, '2024-02-01', 200.00);

INSERT INTO order_items VALUES
(1001, 101, 1, 1, 25.00),
(1002, 101, 3, 2, 25.00),
(1003, 102, 2, 2, 60.00),
(1004, 103, 4, 1, 40.00),
(1005, 104, 2, 1, 60.00),
(1006, 104, 3, 2, 70.00);
SELECT * FROM customers;
SELECT * FROM orders;
