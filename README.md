# SQL Portfolio
This repository contains my SQL projects.

## Contents
- Exam-style practice queries
- Bonus puzzles
- sales dataset queries

## SQL queries for Diffrent insights

**Show all unique fruit names in the table.**
```sql
SELECT DISTINCT product_name
FROM jan_sales;
```

**Display the first 10 sales records**
```sql
       SELECT product_name, sale_date, quantity
FROM jan_sales
ORDER BY sale_date ASC
LIMIT 10;
```

**Find all sales of Banana that happened before 15th January 2024.**
```sql
SELECT product_name, sale_date, quantity
FROM jan_sales
WHERE product_name='Banana' AND sale_date<'2024-01-15';
```

**Show the top 3 largest transactions across all fruits.**
```sql
SELECT product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 3;
```

**List all sales where quantity is greater than 20.**
```sql
SELECT product_name, quantity
FROM jan_sales
WHERE quantity>20;
```

**Retrieve sales of Apple that occurred in January 2024.**
```sql
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Apple' AND sale_date BETWEEN '2024-01-01' and '2024-01-30';
```

**Show the latest sale record in the table.**
```sql
SELECT product_name, sale_date
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 5;
```

**Display sales of Mango where quantity is between 5 and 15.**
```sql
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Mango' AND quantity BETWEEN '5' and '15';
```

**List all sales sorted first by product_name alphabetically, then by sale_date descending.**
```sql
SELECT product_name, sale_date
FROM jan_sales
ORDER BY product_name ASC, sale_date DESC;
```

**Show the second‑latest sale record in the table.**
```sql
SELECT product_name, sale_date
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1 OFFSET 1;
```

**Write a query that shows the earliest sale record for each product.**
```sql
SELECT DISTINCT product_name, sale_date
FROM jan_sales
ORDER BY sale_date ASC;
SELECT DISTINCT ON (product_name) product_name, sale_date, quantity
FROM jan_sales
ORDER BY product_name, sale_date ASC;
```

## PROJECT 1

**Unique Products List**
```sql
SELECT DISTINCT product_name
FROM jan_sales;
```
**Recent Sales Snapshot** 
```sql
SELECT sale_date, product_name, quantity
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 5;
```
**Banana Sales Check**
```sql
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Banana';
```
**Top Transactions**
```sql
SELECT product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 3;
```
**Moderate Sales**
```sql
SELECT * FROM jan_sales
WHERE quantity BETWEEN 10 AND 20;
```
**Apple January Report**
```sql
SELECT * FROM jan_sales
WHERE product_name='Apple';
```
**Latest Sale Record**
```sql
SELECT * FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1;
```
**Mango Range**
```sql
SELECT * FROM jan_sales
WHERE product_name='Mango' AND quantity BETWEEN 5 AND 15
ORDER BY quantity;
```
**Sorted Report**
```sql
SELECT * FROM jan_sales
ORDER BY product_name ASC, sale_date DESC;
```
**Second‑Latest Sale**
```sql
SELECT * FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1 OFFSET 1;
```
**earliest sale record for each product**
```sql
SELECT DISTINCT ON(product_name) product_name, quantity, sale_date
FROM jan_sales
ORDER BY product_name, sale_date ASC;
```
**Count total rows**
```sql
SELECT COUNT(*) AS total_sale
FROM jan_sales;
```
**Total quantity sold per product**
```sql
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
```
**Average quantity sold per product**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
```
**Maximum quantity sold in a single transaction**
```sql
SELECT product_name, MAX(quantity) AS max_quantity
FROM jan_sales
GROUP BY product_name;
```
**Monthly sales totals**
```sql
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS monthly_quantity
FROM jan_sales
GROUP BY month
ORDER BY month;
```
**Write a query to find the top 2 products with the highest total quantity sold.**
```sql
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name
ORDER BY total_quantity DESC LIMIT 2;
```
**Find the average quantity sold per product**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
```
**Write a query to find the average quantity of Banana sales only, and compare it with the average quantity of Mango sales.**
```sql
SELECT product_name, AVG(quantity) AS avg_quaantity
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
```
**Top Product Each Month**
```sql
SELECT EXTRACT(MONTH FROM sale_date) AS month, product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name, MONTH
ORDER BY total_sale DESC;
```
**Write a query to find the average quantity per product, but only for sales after 1st February 2025**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE sale_date>'2024-01-10'
GROUP BY product_name;
```
**total number of sales records**
```sql
SELECT COUNT(*) AS total_sale
FROM jan_sales;
```
**total quantity sold per product.**
```sql
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
```
**average quantity sold per product.**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
```
**maximum quantity sold in a single transaction**
```sql
SELECT product_name, MAX(quantity) AS max_quantity
FROM jan_sales
GROUP BY product_name;
```
**minimum quantity sold**
```sql
SELECT product_name, MIN(quantity) AS min_quantity
FROM jan_sales
GROUP BY product_name;
```
**total quantity sold per month**
```sql
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY month;
```
**top 3 products**
```sql
SELECT product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sale DESC LIMIT 3;
```
**average quantity of Banana sales only.**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE product_name IN('Banana')
GROUP BY product_name;
```
**average quantity of Banana vs Mango sales.**
```sql
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
```
**number of sales transactions per product**
```sql
SELECT product_name, COUNT(quantity) AS number_of_sales
FROM jan_sales
GROUP BY product_name
```
**average quantity per product,but only for sales after 21st Jan 2024**
```sql
SELECT product_name, AVG(quantity) AS avg_qty, sale_date
FROM jan_sales
WHERE sale_date>'2024-01-21'
GROUP BY product_name, sale_date;
```
**earliest sale date per product**
```sql
SELECT product_name, MIN(sale_date) AS earliest_sae
FROM jan_sales
GROUP BY product_name;
```
**latest sale date per product.**
```sql
SELECT product_name, MAX(sale_date) AS latest_sale
FROM jan_sales
GROUP BY product_name;
```
**total quantity sold per product per month**
```sql
SELECT product_name, SUM(quantity) AS total_quantity, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month;
```
**Write a query to show the top product in each month**
```sql
SELECT product_name, SUM(quantity) AS total_quantity, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month
ORDER BY total_quantity DESC LIMIT 1;
```
## PROJECT 2

**Total Sales Records**
```sql
SELECT COUNT(*) AS Total_sale
FROM jan_sales;
```
**Total Quantity Sold per Product**
```sql
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
```
**Average Quantity per Product** 
```sql
SELECT product_name, AVG(quantity) AS avg_qty
FROM jan_sales
GROUP BY product_name;
```
**Maximum & Minimum Sale per Product**
```sql
SELECT product_name, MIN(quantity) AS min_sale, MAX(quantity) AS max_sale
FROM jan_sales
GROUP BY product_name;
```
**Monthly Sales Totals**
```sql
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY month;
```
**Top 3 Products by Total Sales**
```sql
SELECT product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sale DESC LIMIT 3;
```
**Banana vs Mango Comparison**
```sql
SELECT product_name, AVG(quantity) AS avg_qty
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
```
**Month with Highest Sales**
```sql
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS highest_sale
FROM jan_sales
GROUP BY month
ORDER BY highest_sale DESC LIMIT 1;
```
**Number of Transactions per Product**
```sql
SELECT product_name, COUNT(quantity) AS number_of_transaction
FROM jan_sales
GROUP BY product_name;
```
**Total Quantity per Product per Month**
```sql
SELECT product_name, SUM(quantity) AS total_qty, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month;
```
**Find the top product in each month**
```sql
SELECT DISTINCT ON(month)
EXTRACT(MONTH FROM sale_date) AS month,
product_name,
SUM(quantity) AS total_sale
FROM jan_sales 
GROUP BY month, product_name;
```
## INNER JOIN

```sql
SELECT s.sale_date, s.quantity, p.product_name, p.price
FROM jan_sales s
INNER JOIN products p
ON s.product_id = p.product_id;
```
```sql
SELECT c.customer_name, s.sale_date, s.quantity, c.city
FROM jan_sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id;
```
```sql
SELECT p.product_name, SUM(s.quantity*p.price) AS revenue
FROM jan_sales s
INNER JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;
```
```sql
SELECT c.customer_name, SUM(s.quantity) AS total_purchase
FROM jan_sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT c.customer_name, MIN(s.sale_date) AS first_purchase
FROM jan_sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM jan_sales s
INNER JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;
```
```sql
SELECT c.customer_name, AVG(s.quantity) AS avg_qty
FROM jan_sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT p.product_name, MAX(s.quantity) AS max_quantity
FROM jan_sales s
INNER JOIN products p
ON p.product_id = s.product_id
GROUP BY p.product_name;
```
```sql
SELECT c.customer_name, MAX(s.sale_date) AS latest_purchase
FROM jan_sales s
INNER JOIN customers c
ON c.customer_id = s.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT p.product_name, MIN(s.quantity) AS min_qty
FROM jan_sales s
INNER JOIN products p
ON p.product_id = s.product_id
GROUP BY p.product_name;
```
```sql
SELECT p.product_name, SUM(s.quantity) AS total_sale
FROM jan_sales s
INNER JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;
```
```sql
SELECT c.customer_name, AVG(s.quantity) AS avg_qty_purchase
FROM jan_sales s
INNER JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT p.product_name, MAX(s.quantity) AS max_qty_sold
FROM jan_sales s
INNER JOIN products p
ON p.product_id=s.product_id
GROUP BY p.product_name;
```
```sql
SELECT c.customer_name, MAX(s.sale_date) AS latest_purchase
FROM jan_sales s
INNER JOIN customers c
ON c.customer_id = s.customer_id
GROUP BY c.customer_name;
```
```sql
SELECT p.product_name, MIN(s.quantity) AS min_qty_sold
FROM jan_sales s
INNER JOIN products p
ON p.product_id = s.product_id
GROUP BY p.product_name;
```
```sql
SELECT * FROM products;
```
```sql
SELECT * FROM customers;
```
```sql
SELECT * FROM jan_sales;
```
## LEFT JOIN

```sql
SELECT  c.customer_name, s.quantity, c.city, s.sale_date
FROM jan_sales s
LEFT JOIN customers c
ON s.customer_id = c.customer_id;
```
```sql
SELECT c.customer_name, c.city, s.sale_date, s.quantity
FROM jan_sales s
LEFT JOIN customers c
ON s.customer_id = c.customer_id;
```
```sql
SELECT p.product_name, s.quantity, p.price
FROM jan_sales s
LEFT JOIN products p
ON s.product_id = p.product_id;
```
```sql
SELECT c.customer_name, c.city, SUM(s.quantity) AS total_sale
FROM jan_sales s
LEFT JOIN customers c
ON s.customer_id = c.customer_id
GROUP BY c.customer_name, c.city;
```
```sql
INSERT INTO jan_sales (sale_date, product_id, customer_id, quantity)
VALUES ('2025-01-20', 2, NULL, 7);
```
```sql
INSERT INTO jan_sales (sale_date, product_id, customer_id, quantity)
VALUES ('2025-01-22', NULL, 1, 4);
```
```sql
UPDATE jan_sales
SET product_name = 'Mango'
WHERE product_name IS NULL;
```
```sql
SELECT s.sale_date, s.product_name, s.quantity, c.customer_name, c.city
FROM jan_sales s
LEFT JOIN customers c ON s.customer_id = c.customer_id;
```
```sql
SELECT s.sale_date, s.quantity, p.product_name, p.price
FROM jan_sales s
LEFT JOIN products p ON s.product_id = p.product_id;
```
```sql
SELECT c.customer_name, s.sale_date, s.product_name, s.quantity
FROM customers c
LEFT JOIN jan_sales s ON c.customer_id = s.customer_id;
```
```sql
SELECT p.product_name, s.sale_date, s.quantity
FROM products p
LEFT JOIN jan_sales s ON p.product_id = s.product_id;
```
```sql
SELECT c.customer_name
FROM customers c
LEFT JOIN jan_sales s ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;
```
```sql
SELECT c.customer_id, c.customer_name, s.sale_date, s.quantity
FROM jan_sales s
LEFT JOIN customers c
ON c.customer_id = s.customer_id;
```
```sql
SELECT c.customer_id, c.customer_name, c.city, s.quantity
FROM jan_sales s
LEFT JOIN customers c
ON c.customer_id=s.customer_id;
```
```sql
SELECT p.product_id, p.product_name, p.category, p.price, s.quantity
FROM jan_sales s
LEFT JOIN products p
ON p.product_id=s.product_id;
```
```sql
SELECT c.customer_name, s.quantity, s.sale_date
FROM jan_sales s
LEFT JOIN customers c
ON c.customer_id=s.customer_id;
```
```sql
SELECT c.customer_name, s.quantity, s.sale_date
FROM customers c
LEFT JOIN jan_sales s
ON c.customer_id = s.customer_id;
```
```sql
SELECT p.product_name, s.quantity
FROM jan_sales s
LEFT JOIN products p
ON p.product_id=s.product_id;
```
```sql
SELECT p.product_name, s.quantity, s.sale_date
FROM products p
LEFT JOIN jan_sales s
ON p.product_id = s.product_id;
```
```sql
SELECT c.customer_name
FROM customers c
LEFT JOIN jan_sales s ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;
```
## RIGHT JOIN

```sql
SELECT c.customer_name, s.sale_date, s.quantity
FROM jan_sales s
RIGHT JOIN customers c
ON s.customer_id = c.customer_id;
```
```sql
SELECT p.product_name, s.sale_date, s.quantity
FROM jan_sales s
RIGHT JOIN products p
ON s.product_id = p.product_id;
```
## FULL OUTER JOIN

```sql
SELECT c.customer_name, c.city, s.sale_date, s.quantity
FROM customers c
FULL OUTER JOIN jan_sales s
ON c.customer_id = s.customer_id;
```
```sql
SELECT p.product_name, p.category, p.price, s.sale_date, s.quantity
FROM products p
FULL OUTER JOIN jan_sales s
ON p.product_id = s.product_id;
```
```sql
SELECT c.customer_name, s.sale_date, s.quantity
FROM customers c
FULL OUTER JOIN jan_sales s
ON c.customer_id = s.customer_id
WHERE c.customer_name IS NULL OR s.sale_date IS NULL;
```
```sql
SELECT p.product_name, s.sale_date, s.quantity
FROM products p
FULL OUTER JOIN jan_sales s
ON p.product_id = s.product_id
WHERE p.product_name IS NULL OR s.sale_date IS NULL;
```
```sql
SELECT s.sale_date, s.quantity,
       COALESCE(c.customer_name, 'Unknown Customer') AS customer_name,
       COALESCE(p.product_name, 'Unknown Product') AS product_name,
       COALESCE(p.price, 0) AS price
FROM jan_sales s
FULL OUTER JOIN customers c ON s.customer_id = c.customer_id
FULL OUTER JOIN products p ON s.product_id = p.product_id;
```
