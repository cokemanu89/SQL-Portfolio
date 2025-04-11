# 📊 Amazon Sales Performance Analysis – Insights

## 📁 Module: Sales Overview

---

### 🔹 Insight 1: Total Revenue
> **Query Used:**
```sql
SELECT SUM(total_sales) AS total_revenue
FROM order_items;
```
**Finding:** Total revenue across all transactions reflects the gross sales potential of the store.

---

### 🔹 Insight 2: Monthly Revenue Trends
> **Query Used:**
```sql
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_sales) AS monthly_revenue
FROM orders
JOIN order_items USING(order_id)
GROUP BY month
ORDER BY month;
```
**Finding:** Helps identify peak shopping months and seasonal trends for strategic marketing.

---

### 🔹 Insight 3: Average Order Value (AOV)
> **Query Used:**
```sql
SELECT
    AVG(total) AS average_order_value
FROM (
    SELECT order_id, SUM(total_sales) AS total
    FROM order_items
    GROUP BY order_id
) AS sub;
```
**Finding:** Gives a sense of typical customer spending per order.

---

### 🔹 Insight 4: Total Units Sold by Category
> **Query Used:**
```sql
SELECT category, SUM(quantity) AS total_units
FROM order_items
JOIN products USING(product_id)
GROUP BY category
ORDER BY total_units DESC;
```
**Finding:** Reveals high-volume product categories — useful for inventory and marketing planning.

---

### 🔹 Insight 5: Sales by Payment Method
> **Query Used:**
```sql
SELECT payment_method, SUM(total_sales) AS revenue
FROM orders
JOIN order_items USING(order_id)
GROUP BY payment_method
ORDER BY revenue DESC;
```
**Finding:** Shows customer preference and trust in different payment options. Can influence checkout design.

---

