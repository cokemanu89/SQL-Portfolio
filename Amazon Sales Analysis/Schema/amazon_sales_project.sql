
-- Use your working database
USE sql_portfolio;

-- Drop tables if they already exist
DROP TABLE IF EXISTS order_items, orders, products, customers;

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    location VARCHAR(100)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create orders table
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    payment_method VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create order_items table
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id VARCHAR(20),
    product_id INT,
    quantity INT,
    total_sales DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (customer_id, customer_name, location)
VALUES (1, 'Emma Clark', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (2, 'Emily Johnson', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (3, 'John Doe', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (4, 'Olivia Wilson', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (5, 'John Doe', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (6, 'Emma Clark', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (7, 'Sophia Miller', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (8, 'Sophia Miller', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (9, 'David Lee', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (10, 'Michael Brown', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (11, 'Daniel Harris', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (12, 'Michael Brown', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (13, 'John Doe', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (14, 'John Doe', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (15, 'Michael Brown', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (16, 'Olivia Wilson', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (17, 'Olivia Wilson', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (18, 'Chris White', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (19, 'Chris White', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (20, 'Sophia Miller', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (21, 'Olivia Wilson', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (22, 'Daniel Harris', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (23, 'Jane Smith', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (24, 'Sophia Miller', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (25, 'Emily Johnson', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (26, 'John Doe', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (27, 'Michael Brown', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (28, 'Olivia Wilson', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (29, 'Jane Smith', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (30, 'Emma Clark', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (31, 'Michael Brown', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (32, 'Olivia Wilson', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (33, 'Olivia Wilson', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (34, 'Emily Johnson', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (35, 'Jane Smith', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (36, 'Jane Smith', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (37, 'Chris White', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (38, 'David Lee', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (39, 'Emma Clark', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (40, 'John Doe', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (41, 'Emily Johnson', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (42, 'Sophia Miller', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (43, 'Emma Clark', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (44, 'Jane Smith', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (45, 'Daniel Harris', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (46, 'Jane Smith', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (47, 'Emma Clark', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (48, 'Emily Johnson', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (49, 'Emma Clark', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (50, 'Michael Brown', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (51, 'Chris White', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (52, 'Emily Johnson', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (53, 'Daniel Harris', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (54, 'Emily Johnson', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (55, 'Daniel Harris', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (56, 'Emma Clark', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (57, 'Sophia Miller', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (58, 'Michael Brown', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (59, 'Jane Smith', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (60, 'Michael Brown', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (61, 'Chris White', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (62, 'Emily Johnson', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (63, 'David Lee', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (64, 'Daniel Harris', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (65, 'Jane Smith', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (66, 'Jane Smith', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (67, 'Daniel Harris', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (68, 'David Lee', 'Dallas');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (69, 'David Lee', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (70, 'Olivia Wilson', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (71, 'Chris White', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (72, 'John Doe', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (73, 'Chris White', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (74, 'Emma Clark', 'Seattle');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (75, 'Emily Johnson', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (76, 'Daniel Harris', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (77, 'David Lee', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (78, 'John Doe', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (79, 'Emma Clark', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (80, 'Olivia Wilson', 'Denver');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (81, 'Michael Brown', 'Boston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (82, 'David Lee', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (83, 'David Lee', 'Miami');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (84, 'Emily Johnson', 'Chicago');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (85, 'David Lee', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (86, 'John Doe', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (87, 'Sophia Miller', 'Houston');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (88, 'Chris White', 'Los Angeles');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (89, 'Michael Brown', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (90, 'Sophia Miller', 'New York');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (91, 'Jane Smith', 'San Francisco');

INSERT INTO customers (customer_id, customer_name, location)
VALUES (92, 'Chris White', 'Denver');

INSERT INTO products (product_id, product_name, category, price)
VALUES (1, 'Running Shoes', 'Footwear', 60);

INSERT INTO products (product_id, product_name, category, price)
VALUES (2, 'Headphones', 'Electronics', 100);

INSERT INTO products (product_id, product_name, category, price)
VALUES (3, 'Smartwatch', 'Electronics', 150);

INSERT INTO products (product_id, product_name, category, price)
VALUES (4, 'T-Shirt', 'Clothing', 20);

INSERT INTO products (product_id, product_name, category, price)
VALUES (5, 'Smartphone', 'Electronics', 500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (6, 'Book', 'Books', 15);

INSERT INTO products (product_id, product_name, category, price)
VALUES (7, 'Jeans', 'Clothing', 40);

INSERT INTO products (product_id, product_name, category, price)
VALUES (8, 'Laptop', 'Electronics', 800);

INSERT INTO products (product_id, product_name, category, price)
VALUES (9, 'Washing Machine', 'Home Appliances', 600);

INSERT INTO products (product_id, product_name, category, price)
VALUES (10, 'Refrigerator', 'Home Appliances', 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0001', STR_TO_DATE('14-03-25', '%d-%m-%y'), 1, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (1, 'ORD0001', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0002', STR_TO_DATE('20-03-25', '%d-%m-%y'), 2, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (2, 'ORD0002', 2, 4, 400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0003', STR_TO_DATE('15-02-25', '%d-%m-%y'), 3, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (3, 'ORD0003', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0004', STR_TO_DATE('19-02-25', '%d-%m-%y'), 4, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (4, 'ORD0004', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0005', STR_TO_DATE('10-03-25', '%d-%m-%y'), 1, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (5, 'ORD0005', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0006', STR_TO_DATE('14-03-25', '%d-%m-%y'), 5, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (6, 'ORD0006', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0007', STR_TO_DATE('18-03-25', '%d-%m-%y'), 6, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (7, 'ORD0007', 3, 4, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0008', STR_TO_DATE('02-03-25', '%d-%m-%y'), 7, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (8, 'ORD0008', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0009', STR_TO_DATE('08-03-25', '%d-%m-%y'), 8, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (9, 'ORD0009', 4, 3, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0010', STR_TO_DATE('12-03-25', '%d-%m-%y'), 2, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (10, 'ORD0010', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0011', STR_TO_DATE('17-02-25', '%d-%m-%y'), 9, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (11, 'ORD0011', 6, 2, 30);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0012', STR_TO_DATE('13-03-25', '%d-%m-%y'), 10, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (12, 'ORD0012', 7, 4, 160);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0013', STR_TO_DATE('01-03-25', '%d-%m-%y'), 11, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (13, 'ORD0013', 8, 2, 1600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0014', STR_TO_DATE('04-03-25', '%d-%m-%y'), 12, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (14, 'ORD0014', 9, 3, 1800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0015', STR_TO_DATE('20-02-25', '%d-%m-%y'), 13, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (15, 'ORD0015', 3, 4, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0016', STR_TO_DATE('26-02-25', '%d-%m-%y'), 14, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (16, 'ORD0016', 10, 1, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0017', STR_TO_DATE('01-04-25', '%d-%m-%y'), 1, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (17, 'ORD0017', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0018', STR_TO_DATE('10-02-25', '%d-%m-%y'), 15, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (18, 'ORD0018', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0019', STR_TO_DATE('22-03-25', '%d-%m-%y'), 16, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (19, 'ORD0019', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0020', STR_TO_DATE('07-03-25', '%d-%m-%y'), 17, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (20, 'ORD0020', 2, 4, 400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0021', STR_TO_DATE('05-02-25', '%d-%m-%y'), 18, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (21, 'ORD0021', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0022', STR_TO_DATE('07-03-25', '%d-%m-%y'), 16, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (22, 'ORD0022', 10, 4, 4800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0023', STR_TO_DATE('23-02-25', '%d-%m-%y'), 6, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (23, 'ORD0023', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0024', STR_TO_DATE('24-03-25', '%d-%m-%y'), 19, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (24, 'ORD0024', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0025', STR_TO_DATE('02-03-25', '%d-%m-%y'), 20, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (25, 'ORD0025', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0026', STR_TO_DATE('14-02-25', '%d-%m-%y'), 21, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (26, 'ORD0026', 9, 1, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0027', STR_TO_DATE('07-02-25', '%d-%m-%y'), 22, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (27, 'ORD0027', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0028', STR_TO_DATE('03-02-25', '%d-%m-%y'), 23, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (28, 'ORD0028', 2, 1, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0029', STR_TO_DATE('12-02-25', '%d-%m-%y'), 24, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (29, 'ORD0029', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0030', STR_TO_DATE('10-02-25', '%d-%m-%y'), 25, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (30, 'ORD0030', 9, 3, 1800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0031', STR_TO_DATE('24-03-25', '%d-%m-%y'), 26, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (31, 'ORD0031', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0032', STR_TO_DATE('10-03-25', '%d-%m-%y'), 27, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (32, 'ORD0032', 5, 4, 2000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0033', STR_TO_DATE('04-02-25', '%d-%m-%y'), 28, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (33, 'ORD0033', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0034', STR_TO_DATE('02-04-25', '%d-%m-%y'), 29, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (34, 'ORD0034', 4, 5, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0035', STR_TO_DATE('02-04-25', '%d-%m-%y'), 30, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (35, 'ORD0035', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0036', STR_TO_DATE('09-02-25', '%d-%m-%y'), 8, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (36, 'ORD0036', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0037', STR_TO_DATE('16-02-25', '%d-%m-%y'), 31, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (37, 'ORD0037', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0038', STR_TO_DATE('26-03-25', '%d-%m-%y'), 32, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (38, 'ORD0038', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0039', STR_TO_DATE('02-03-25', '%d-%m-%y'), 33, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (39, 'ORD0039', 8, 2, 1600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0040', STR_TO_DATE('26-03-25', '%d-%m-%y'), 34, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (40, 'ORD0040', 3, 1, 150);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0041', STR_TO_DATE('20-02-25', '%d-%m-%y'), 35, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (41, 'ORD0041', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0042', STR_TO_DATE('17-03-25', '%d-%m-%y'), 23, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (42, 'ORD0042', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0043', STR_TO_DATE('08-02-25', '%d-%m-%y'), 36, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (43, 'ORD0043', 4, 4, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0044', STR_TO_DATE('24-03-25', '%d-%m-%y'), 37, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (44, 'ORD0044', 3, 1, 150);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0045', STR_TO_DATE('15-03-25', '%d-%m-%y'), 22, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (45, 'ORD0045', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0046', STR_TO_DATE('06-03-25', '%d-%m-%y'), 38, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (46, 'ORD0046', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0047', STR_TO_DATE('26-03-25', '%d-%m-%y'), 18, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (47, 'ORD0047', 4, 2, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0048', STR_TO_DATE('11-02-25', '%d-%m-%y'), 36, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (48, 'ORD0048', 4, 5, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0049', STR_TO_DATE('18-02-25', '%d-%m-%y'), 39, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (49, 'ORD0049', 5, 4, 2000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0050', STR_TO_DATE('14-03-25', '%d-%m-%y'), 14, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (50, 'ORD0050', 7, 3, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0051', STR_TO_DATE('19-02-25', '%d-%m-%y'), 6, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (51, 'ORD0051', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0052', STR_TO_DATE('24-02-25', '%d-%m-%y'), 40, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (52, 'ORD0052', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0053', STR_TO_DATE('24-03-25', '%d-%m-%y'), 41, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (53, 'ORD0053', 1, 4, 240);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0054', STR_TO_DATE('15-03-25', '%d-%m-%y'), 9, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (54, 'ORD0054', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0055', STR_TO_DATE('15-03-25', '%d-%m-%y'), 42, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (55, 'ORD0055', 7, 2, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0056', STR_TO_DATE('19-03-25', '%d-%m-%y'), 43, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (56, 'ORD0056', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0057', STR_TO_DATE('15-03-25', '%d-%m-%y'), 44, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (57, 'ORD0057', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0058', STR_TO_DATE('13-03-25', '%d-%m-%y'), 23, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (58, 'ORD0058', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0059', STR_TO_DATE('01-04-25', '%d-%m-%y'), 45, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (59, 'ORD0059', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0060', STR_TO_DATE('12-03-25', '%d-%m-%y'), 46, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (60, 'ORD0060', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0061', STR_TO_DATE('11-03-25', '%d-%m-%y'), 29, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (61, 'ORD0061', 10, 1, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0062', STR_TO_DATE('10-02-25', '%d-%m-%y'), 33, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (62, 'ORD0062', 8, 5, 4000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0063', STR_TO_DATE('30-03-25', '%d-%m-%y'), 47, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (63, 'ORD0063', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0064', STR_TO_DATE('13-02-25', '%d-%m-%y'), 48, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (64, 'ORD0064', 10, 4, 4800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0065', STR_TO_DATE('16-03-25', '%d-%m-%y'), 49, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (65, 'ORD0065', 6, 3, 45);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0066', STR_TO_DATE('14-03-25', '%d-%m-%y'), 50, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (66, 'ORD0066', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0067', STR_TO_DATE('31-03-25', '%d-%m-%y'), 51, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (67, 'ORD0067', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0068', STR_TO_DATE('23-02-25', '%d-%m-%y'), 38, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (68, 'ORD0068', 2, 1, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0069', STR_TO_DATE('25-02-25', '%d-%m-%y'), 9, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (69, 'ORD0069', 10, 4, 4800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0070', STR_TO_DATE('10-03-25', '%d-%m-%y'), 52, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (70, 'ORD0070', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0071', STR_TO_DATE('16-03-25', '%d-%m-%y'), 3, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (71, 'ORD0071', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0072', STR_TO_DATE('07-03-25', '%d-%m-%y'), 53, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (72, 'ORD0072', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0073', STR_TO_DATE('20-02-25', '%d-%m-%y'), 54, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (73, 'ORD0073', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0074', STR_TO_DATE('25-03-25', '%d-%m-%y'), 46, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (74, 'ORD0074', 10, 4, 4800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0075', STR_TO_DATE('26-02-25', '%d-%m-%y'), 55, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (75, 'ORD0075', 2, 2, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0076', STR_TO_DATE('24-02-25', '%d-%m-%y'), 46, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (76, 'ORD0076', 9, 1, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0077', STR_TO_DATE('20-03-25', '%d-%m-%y'), 53, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (77, 'ORD0077', 2, 2, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0078', STR_TO_DATE('18-03-25', '%d-%m-%y'), 56, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (78, 'ORD0078', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0079', STR_TO_DATE('09-03-25', '%d-%m-%y'), 48, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (79, 'ORD0079', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0080', STR_TO_DATE('23-02-25', '%d-%m-%y'), 57, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (80, 'ORD0080', 1, 4, 240);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0081', STR_TO_DATE('26-02-25', '%d-%m-%y'), 58, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (81, 'ORD0081', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0082', STR_TO_DATE('24-02-25', '%d-%m-%y'), 59, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (82, 'ORD0082', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0083', STR_TO_DATE('28-02-25', '%d-%m-%y'), 6, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (83, 'ORD0083', 9, 4, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0084', STR_TO_DATE('14-02-25', '%d-%m-%y'), 21, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (84, 'ORD0084', 4, 5, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0085', STR_TO_DATE('06-02-25', '%d-%m-%y'), 60, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (85, 'ORD0085', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0086', STR_TO_DATE('25-02-25', '%d-%m-%y'), 46, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (86, 'ORD0086', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0087', STR_TO_DATE('13-03-25', '%d-%m-%y'), 47, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (87, 'ORD0087', 1, 5, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0088', STR_TO_DATE('06-02-25', '%d-%m-%y'), 61, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (88, 'ORD0088', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0089', STR_TO_DATE('26-03-25', '%d-%m-%y'), 56, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (89, 'ORD0089', 1, 5, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0090', STR_TO_DATE('24-03-25', '%d-%m-%y'), 62, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (90, 'ORD0090', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0091', STR_TO_DATE('03-02-25', '%d-%m-%y'), 53, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (91, 'ORD0091', 8, 4, 3200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0092', STR_TO_DATE('15-03-25', '%d-%m-%y'), 21, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (92, 'ORD0092', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0093', STR_TO_DATE('06-03-25', '%d-%m-%y'), 63, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (93, 'ORD0093', 10, 5, 6000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0094', STR_TO_DATE('25-03-25', '%d-%m-%y'), 64, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (94, 'ORD0094', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0095', STR_TO_DATE('17-02-25', '%d-%m-%y'), 51, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (95, 'ORD0095', 3, 4, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0096', STR_TO_DATE('30-03-25', '%d-%m-%y'), 29, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (96, 'ORD0096', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0097', STR_TO_DATE('25-03-25', '%d-%m-%y'), 32, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (97, 'ORD0097', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0098', STR_TO_DATE('14-02-25', '%d-%m-%y'), 18, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (98, 'ORD0098', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0099', STR_TO_DATE('18-02-25', '%d-%m-%y'), 27, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (99, 'ORD0099', 9, 5, 3000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0100', STR_TO_DATE('13-02-25', '%d-%m-%y'), 65, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (100, 'ORD0100', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0101', STR_TO_DATE('20-02-25', '%d-%m-%y'), 3, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (101, 'ORD0101', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0102', STR_TO_DATE('28-02-25', '%d-%m-%y'), 9, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (102, 'ORD0102', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0103', STR_TO_DATE('14-03-25', '%d-%m-%y'), 58, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (103, 'ORD0103', 4, 2, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0104', STR_TO_DATE('22-02-25', '%d-%m-%y'), 46, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (104, 'ORD0104', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0105', STR_TO_DATE('16-03-25', '%d-%m-%y'), 66, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (105, 'ORD0105', 7, 1, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0106', STR_TO_DATE('15-03-25', '%d-%m-%y'), 32, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (106, 'ORD0106', 4, 3, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0107', STR_TO_DATE('19-03-25', '%d-%m-%y'), 4, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (107, 'ORD0107', 7, 3, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0108', STR_TO_DATE('16-03-25', '%d-%m-%y'), 67, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (108, 'ORD0108', 2, 2, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0109', STR_TO_DATE('17-03-25', '%d-%m-%y'), 31, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (109, 'ORD0109', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0110', STR_TO_DATE('18-02-25', '%d-%m-%y'), 4, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (110, 'ORD0110', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0111', STR_TO_DATE('31-03-25', '%d-%m-%y'), 56, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (111, 'ORD0111', 8, 4, 3200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0112', STR_TO_DATE('06-03-25', '%d-%m-%y'), 68, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (112, 'ORD0112', 9, 2, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0113', STR_TO_DATE('19-03-25', '%d-%m-%y'), 69, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (113, 'ORD0113', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0114', STR_TO_DATE('23-02-25', '%d-%m-%y'), 6, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (114, 'ORD0114', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0115', STR_TO_DATE('21-03-25', '%d-%m-%y'), 70, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (115, 'ORD0115', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0116', STR_TO_DATE('19-03-25', '%d-%m-%y'), 56, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (116, 'ORD0116', 8, 4, 3200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0117', STR_TO_DATE('27-02-25', '%d-%m-%y'), 22, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (117, 'ORD0117', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0118', STR_TO_DATE('10-02-25', '%d-%m-%y'), 26, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (118, 'ORD0118', 2, 5, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0119', STR_TO_DATE('16-03-25', '%d-%m-%y'), 71, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (119, 'ORD0119', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0120', STR_TO_DATE('16-02-25', '%d-%m-%y'), 48, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (120, 'ORD0120', 8, 5, 4000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0121', STR_TO_DATE('18-02-25', '%d-%m-%y'), 5, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (121, 'ORD0121', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0122', STR_TO_DATE('28-03-25', '%d-%m-%y'), 72, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (122, 'ORD0122', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0123', STR_TO_DATE('23-02-25', '%d-%m-%y'), 73, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (123, 'ORD0123', 6, 3, 45);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0124', STR_TO_DATE('10-02-25', '%d-%m-%y'), 74, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (124, 'ORD0124', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0125', STR_TO_DATE('23-02-25', '%d-%m-%y'), 48, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (125, 'ORD0125', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0126', STR_TO_DATE('04-02-25', '%d-%m-%y'), 32, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (126, 'ORD0126', 10, 5, 6000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0127', STR_TO_DATE('18-02-25', '%d-%m-%y'), 43, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (127, 'ORD0127', 4, 3, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0128', STR_TO_DATE('23-03-25', '%d-%m-%y'), 25, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (128, 'ORD0128', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0129', STR_TO_DATE('26-02-25', '%d-%m-%y'), 75, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (129, 'ORD0129', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0130', STR_TO_DATE('10-02-25', '%d-%m-%y'), 9, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (130, 'ORD0130', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0131', STR_TO_DATE('26-02-25', '%d-%m-%y'), 76, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (131, 'ORD0131', 7, 2, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0132', STR_TO_DATE('07-03-25', '%d-%m-%y'), 32, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (132, 'ORD0132', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0133', STR_TO_DATE('23-02-25', '%d-%m-%y'), 75, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (133, 'ORD0133', 8, 1, 800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0134', STR_TO_DATE('07-02-25', '%d-%m-%y'), 77, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (134, 'ORD0134', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0135', STR_TO_DATE('10-02-25', '%d-%m-%y'), 70, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (135, 'ORD0135', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0136', STR_TO_DATE('11-02-25', '%d-%m-%y'), 11, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (136, 'ORD0136', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0137', STR_TO_DATE('20-03-25', '%d-%m-%y'), 57, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (137, 'ORD0137', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0138', STR_TO_DATE('11-02-25', '%d-%m-%y'), 78, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (138, 'ORD0138', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0139', STR_TO_DATE('18-03-25', '%d-%m-%y'), 50, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (139, 'ORD0139', 8, 2, 1600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0140', STR_TO_DATE('19-03-25', '%d-%m-%y'), 70, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (140, 'ORD0140', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0141', STR_TO_DATE('21-03-25', '%d-%m-%y'), 72, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (141, 'ORD0141', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0142', STR_TO_DATE('15-03-25', '%d-%m-%y'), 7, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (142, 'ORD0142', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0143', STR_TO_DATE('31-03-25', '%d-%m-%y'), 46, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (143, 'ORD0143', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0144', STR_TO_DATE('27-02-25', '%d-%m-%y'), 15, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (144, 'ORD0144', 7, 2, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0145', STR_TO_DATE('08-03-25', '%d-%m-%y'), 27, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (145, 'ORD0145', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0146', STR_TO_DATE('25-03-25', '%d-%m-%y'), 79, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (146, 'ORD0146', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0147', STR_TO_DATE('05-02-25', '%d-%m-%y'), 46, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (147, 'ORD0147', 1, 5, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0148', STR_TO_DATE('06-02-25', '%d-%m-%y'), 41, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (148, 'ORD0148', 2, 4, 400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0149', STR_TO_DATE('20-03-25', '%d-%m-%y'), 31, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (149, 'ORD0149', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0150', STR_TO_DATE('08-02-25', '%d-%m-%y'), 76, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (150, 'ORD0150', 6, 4, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0151', STR_TO_DATE('29-03-25', '%d-%m-%y'), 44, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (151, 'ORD0151', 9, 4, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0152', STR_TO_DATE('28-02-25', '%d-%m-%y'), 13, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (152, 'ORD0152', 3, 1, 150);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0153', STR_TO_DATE('23-02-25', '%d-%m-%y'), 57, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (153, 'ORD0153', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0154', STR_TO_DATE('01-03-25', '%d-%m-%y'), 3, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (154, 'ORD0154', 2, 2, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0155', STR_TO_DATE('05-02-25', '%d-%m-%y'), 20, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (155, 'ORD0155', 10, 4, 4800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0156', STR_TO_DATE('16-03-25', '%d-%m-%y'), 70, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (156, 'ORD0156', 3, 4, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0157', STR_TO_DATE('08-02-25', '%d-%m-%y'), 24, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (157, 'ORD0157', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0158', STR_TO_DATE('24-02-25', '%d-%m-%y'), 18, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (158, 'ORD0158', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0159', STR_TO_DATE('16-02-25', '%d-%m-%y'), 68, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (159, 'ORD0159', 4, 2, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0160', STR_TO_DATE('06-02-25', '%d-%m-%y'), 80, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (160, 'ORD0160', 9, 3, 1800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0161', STR_TO_DATE('22-02-25', '%d-%m-%y'), 41, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (161, 'ORD0161', 2, 1, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0162', STR_TO_DATE('09-02-25', '%d-%m-%y'), 32, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (162, 'ORD0162', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0163', STR_TO_DATE('20-02-25', '%d-%m-%y'), 37, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (163, 'ORD0163', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0164', STR_TO_DATE('25-02-25', '%d-%m-%y'), 81, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (164, 'ORD0164', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0165', STR_TO_DATE('14-03-25', '%d-%m-%y'), 82, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (165, 'ORD0165', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0166', STR_TO_DATE('30-03-25', '%d-%m-%y'), 37, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (166, 'ORD0166', 9, 4, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0167', STR_TO_DATE('20-03-25', '%d-%m-%y'), 17, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (167, 'ORD0167', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0168', STR_TO_DATE('24-03-25', '%d-%m-%y'), 12, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (168, 'ORD0168', 8, 5, 4000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0169', STR_TO_DATE('06-03-25', '%d-%m-%y'), 3, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (169, 'ORD0169', 10, 2, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0170', STR_TO_DATE('28-02-25', '%d-%m-%y'), 49, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (170, 'ORD0170', 8, 1, 800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0171', STR_TO_DATE('28-02-25', '%d-%m-%y'), 53, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (171, 'ORD0171', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0172', STR_TO_DATE('12-03-25', '%d-%m-%y'), 83, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (172, 'ORD0172', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0173', STR_TO_DATE('28-02-25', '%d-%m-%y'), 17, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (173, 'ORD0173', 10, 1, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0174', STR_TO_DATE('13-03-25', '%d-%m-%y'), 77, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (174, 'ORD0174', 3, 2, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0175', STR_TO_DATE('24-03-25', '%d-%m-%y'), 82, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (175, 'ORD0175', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0176', STR_TO_DATE('27-03-25', '%d-%m-%y'), 81, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (176, 'ORD0176', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0177', STR_TO_DATE('14-03-25', '%d-%m-%y'), 69, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (177, 'ORD0177', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0178', STR_TO_DATE('06-02-25', '%d-%m-%y'), 84, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (178, 'ORD0178', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0179', STR_TO_DATE('25-03-25', '%d-%m-%y'), 17, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (179, 'ORD0179', 7, 1, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0180', STR_TO_DATE('04-03-25', '%d-%m-%y'), 9, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (180, 'ORD0180', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0181', STR_TO_DATE('03-03-25', '%d-%m-%y'), 85, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (181, 'ORD0181', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0182', STR_TO_DATE('02-04-25', '%d-%m-%y'), 30, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (182, 'ORD0182', 4, 5, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0183', STR_TO_DATE('25-03-25', '%d-%m-%y'), 74, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (183, 'ORD0183', 9, 1, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0184', STR_TO_DATE('17-02-25', '%d-%m-%y'), 67, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (184, 'ORD0184', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0185', STR_TO_DATE('22-03-25', '%d-%m-%y'), 19, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (185, 'ORD0185', 4, 1, 20);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0186', STR_TO_DATE('02-03-25', '%d-%m-%y'), 31, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (186, 'ORD0186', 9, 4, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0187', STR_TO_DATE('13-03-25', '%d-%m-%y'), 86, 'PayPal', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (187, 'ORD0187', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0188', STR_TO_DATE('14-02-25', '%d-%m-%y'), 14, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (188, 'ORD0188', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0189', STR_TO_DATE('10-02-25', '%d-%m-%y'), 65, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (189, 'ORD0189', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0190', STR_TO_DATE('23-02-25', '%d-%m-%y'), 87, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (190, 'ORD0190', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0191', STR_TO_DATE('28-02-25', '%d-%m-%y'), 13, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (191, 'ORD0191', 7, 4, 160);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0192', STR_TO_DATE('31-03-25', '%d-%m-%y'), 42, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (192, 'ORD0192', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0193', STR_TO_DATE('30-03-25', '%d-%m-%y'), 77, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (193, 'ORD0193', 6, 5, 75);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0194', STR_TO_DATE('20-02-25', '%d-%m-%y'), 40, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (194, 'ORD0194', 7, 4, 160);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0195', STR_TO_DATE('10-03-25', '%d-%m-%y'), 80, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (195, 'ORD0195', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0196', STR_TO_DATE('04-03-25', '%d-%m-%y'), 64, 'Debit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (196, 'ORD0196', 2, 5, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0197', STR_TO_DATE('12-03-25', '%d-%m-%y'), 50, 'Gift Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (197, 'ORD0197', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0198', STR_TO_DATE('20-02-25', '%d-%m-%y'), 59, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (198, 'ORD0198', 8, 4, 3200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0199', STR_TO_DATE('22-02-25', '%d-%m-%y'), 19, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (199, 'ORD0199', 5, 3, 1500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0200', STR_TO_DATE('10-02-25', '%d-%m-%y'), 88, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (200, 'ORD0200', 6, 2, 30);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0201', STR_TO_DATE('03-02-25', '%d-%m-%y'), 89, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (201, 'ORD0201', 6, 4, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0202', STR_TO_DATE('21-02-25', '%d-%m-%y'), 67, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (202, 'ORD0202', 5, 2, 1000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0203', STR_TO_DATE('21-02-25', '%d-%m-%y'), 5, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (203, 'ORD0203', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0204', STR_TO_DATE('08-03-25', '%d-%m-%y'), 35, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (204, 'ORD0204', 1, 5, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0205', STR_TO_DATE('27-02-25', '%d-%m-%y'), 38, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (205, 'ORD0205', 2, 2, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0206', STR_TO_DATE('12-02-25', '%d-%m-%y'), 47, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (206, 'ORD0206', 9, 5, 3000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0207', STR_TO_DATE('21-03-25', '%d-%m-%y'), 72, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (207, 'ORD0207', 9, 1, 600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0208', STR_TO_DATE('02-02-25', '%d-%m-%y'), 72, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (208, 'ORD0208', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0209', STR_TO_DATE('29-03-25', '%d-%m-%y'), 45, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (209, 'ORD0209', 7, 5, 200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0210', STR_TO_DATE('23-03-25', '%d-%m-%y'), 29, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (210, 'ORD0210', 8, 3, 2400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0211', STR_TO_DATE('13-03-25', '%d-%m-%y'), 83, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (211, 'ORD0211', 5, 1, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0212', STR_TO_DATE('09-03-25', '%d-%m-%y'), 6, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (212, 'ORD0212', 4, 4, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0213', STR_TO_DATE('06-02-25', '%d-%m-%y'), 44, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (213, 'ORD0213', 8, 1, 800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0214', STR_TO_DATE('18-02-25', '%d-%m-%y'), 62, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (214, 'ORD0214', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0215', STR_TO_DATE('07-03-25', '%d-%m-%y'), 6, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (215, 'ORD0215', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0216', STR_TO_DATE('26-03-25', '%d-%m-%y'), 71, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (216, 'ORD0216', 7, 2, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0217', STR_TO_DATE('19-03-25', '%d-%m-%y'), 79, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (217, 'ORD0217', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0218', STR_TO_DATE('15-02-25', '%d-%m-%y'), 22, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (218, 'ORD0218', 2, 4, 400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0219', STR_TO_DATE('17-02-25', '%d-%m-%y'), 38, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (219, 'ORD0219', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0220', STR_TO_DATE('10-02-25', '%d-%m-%y'), 50, 'Debit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (220, 'ORD0220', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0221', STR_TO_DATE('28-02-25', '%d-%m-%y'), 84, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (221, 'ORD0221', 9, 2, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0222', STR_TO_DATE('16-02-25', '%d-%m-%y'), 61, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (222, 'ORD0222', 9, 2, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0223', STR_TO_DATE('24-03-25', '%d-%m-%y'), 63, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (223, 'ORD0223', 7, 2, 80);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0224', STR_TO_DATE('18-03-25', '%d-%m-%y'), 35, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (224, 'ORD0224', 10, 1, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0225', STR_TO_DATE('11-03-25', '%d-%m-%y'), 90, 'Gift Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (225, 'ORD0225', 7, 1, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0226', STR_TO_DATE('05-03-25', '%d-%m-%y'), 71, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (226, 'ORD0226', 1, 4, 240);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0227', STR_TO_DATE('02-04-25', '%d-%m-%y'), 47, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (227, 'ORD0227', 2, 5, 500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0228', STR_TO_DATE('12-02-25', '%d-%m-%y'), 69, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (228, 'ORD0228', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0229', STR_TO_DATE('21-03-25', '%d-%m-%y'), 49, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (229, 'ORD0229', 1, 3, 180);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0230', STR_TO_DATE('31-03-25', '%d-%m-%y'), 91, 'Amazon Pay', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (230, 'ORD0230', 2, 4, 400);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0231', STR_TO_DATE('16-02-25', '%d-%m-%y'), 66, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (231, 'ORD0231', 8, 5, 4000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0232', STR_TO_DATE('14-03-25', '%d-%m-%y'), 56, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (232, 'ORD0232', 10, 3, 3600);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0233', STR_TO_DATE('20-02-25', '%d-%m-%y'), 9, 'PayPal', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (233, 'ORD0233', 1, 1, 60);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0234', STR_TO_DATE('08-03-25', '%d-%m-%y'), 35, 'Amazon Pay', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (234, 'ORD0234', 6, 1, 15);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0235', STR_TO_DATE('23-03-25', '%d-%m-%y'), 45, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (235, 'ORD0235', 10, 1, 1200);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0236', STR_TO_DATE('05-03-25', '%d-%m-%y'), 14, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (236, 'ORD0236', 5, 5, 2500);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0237', STR_TO_DATE('11-02-25', '%d-%m-%y'), 60, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (237, 'ORD0237', 2, 3, 300);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0238', STR_TO_DATE('16-03-25', '%d-%m-%y'), 80, 'PayPal', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (238, 'ORD0238', 2, 1, 100);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0239', STR_TO_DATE('22-03-25', '%d-%m-%y'), 53, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (239, 'ORD0239', 3, 5, 750);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0240', STR_TO_DATE('09-02-25', '%d-%m-%y'), 3, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (240, 'ORD0240', 3, 1, 150);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0241', STR_TO_DATE('30-03-25', '%d-%m-%y'), 28, 'Credit Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (241, 'ORD0241', 5, 4, 2000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0242', STR_TO_DATE('08-03-25', '%d-%m-%y'), 73, 'Gift Card', 'Pending');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (242, 'ORD0242', 5, 4, 2000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0243', STR_TO_DATE('05-03-25', '%d-%m-%y'), 37, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (243, 'ORD0243', 1, 2, 120);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0244', STR_TO_DATE('06-02-25', '%d-%m-%y'), 6, 'Credit Card', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (244, 'ORD0244', 5, 4, 2000);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0245', STR_TO_DATE('04-02-25', '%d-%m-%y'), 15, 'Credit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (245, 'ORD0245', 8, 1, 800);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0246', STR_TO_DATE('17-03-25', '%d-%m-%y'), 67, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (246, 'ORD0246', 4, 2, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0247', STR_TO_DATE('30-03-25', '%d-%m-%y'), 42, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (247, 'ORD0247', 7, 1, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0248', STR_TO_DATE('05-03-25', '%d-%m-%y'), 92, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (248, 'ORD0248', 4, 2, 40);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0249', STR_TO_DATE('08-03-25', '%d-%m-%y'), 75, 'Debit Card', 'Cancelled');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (249, 'ORD0249', 3, 3, 450);

INSERT INTO orders (order_id, order_date, customer_id, payment_method, status)
VALUES ('ORD0250', STR_TO_DATE('19-02-25', '%d-%m-%y'), 34, 'Amazon Pay', 'Completed');

INSERT INTO order_items (item_id, order_id, product_id, quantity, total_sales)
VALUES (250, 'ORD0250', 5, 4, 2000);
