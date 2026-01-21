
```sql
-- Query 1: Total orders by country
SELECT 
    ship_country,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY ship_country
ORDER BY total_orders DESC;
```
---

```sql
-- Query 2: Top 10 expensive products
SELECT 
    product_name,
    unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10;
```

---

```sql
-- Query 3: Products with low stock
SELECT 
    product_name,
    units_in_stock
FROM products
WHERE units_in_stock < 20
ORDER BY units_in_stock ASC;
```

---

```sql
-- Query 4: Total orders per customer
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;
```

---

```sql
-- Query 5: Monthly order trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;
```
---
