SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE quantity > 10;

SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE quantity > 10
ORDER BY quantity DESC
LIMIT 5;

SELECT product_name, SUM(quantity) AS total_sold
FROM jan_sales
GROUP BY product_name
ORDER BY total_sold DESC
LIMIT 2;

SELECT product_name, COUNT(*) AS times_sold
FROM jan_sales
GROUP BY product_name
ORDER BY times_sold DESC;

SELECT product_name,
       SUM(quantity) AS total_sold,
       COUNT(*) AS times_sold,
       AVG(quantity) AS avg_per_sale
FROM jan_sales
GROUP BY product_name
ORDER BY avg_per_sale DESC;

SELECT product_name,
       AVG(quantity) AS avg_per_sale
FROM jan_sales
GROUP BY product_name
ORDER BY avg_per_sale DESC;

SELECT product_name, MAX(quantity) AS best_sale
FROM jan_sales
GROUP BY product_name
ORDER BY best_sale DESC;

SELECT sale_date, product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 1;

SELECT sale_date, SUM(quantity) AS total_sales
FROM jan_sales
GROUP BY sale_date
ORDER BY total_sales DESC;

SELECT sale_date, product_name, SUM(quantity) AS total_sold
FROM jan_sales
WHERE product_name = 'Mango'
GROUP BY sale_date, product_name
ORDER BY sale_date, product_name;

SELECT product_name,
       SUM(quantity) AS product_sales,
       ROUND(SUM(quantity) * 100.0 / 
             (SELECT SUM(quantity) 
              FROM jan_sales 
              WHERE sale_date = '2024-01-10'), 2) AS percent_of_day
FROM jan_sales
WHERE sale_date = '2024-01-10'
GROUP BY product_name
ORDER BY percent_of_day DESC;

SELECT product_name, SUM(quantity) as total_sale
FROM jan_sales
WHERE product_name = 'Apple'
  AND sale_date BETWEEN '2024-01-10' AND '2024-01-20'
GROUP BY product_name;

SELECT product_name, SUM(quantity) AS total_sold
FROM jan_sales
WHERE product_name IN ('Apple', 'Mango')
GROUP BY product_name;

SELECT product_name AS Product,
       SUM(quantity) AS Total_Sold,
       COUNT(*) AS Entries,
       ROUND(AVG(quantity),2) AS Avg_Per_Sale
FROM jan_sales AS js
WHERE product_name IN ('Apple','Mango')
GROUP BY product_name
ORDER BY Total_Sold DESC;

SELECT DISTINCT product_name
FROM jan_sales;

SELECT product_name, quantity, sale_date
FROM jan_sales
ORDER BY sale_date
LIMIT 5 OFFSET 10;

SELECT *
FROM jan_sales
WHERE product_name LIKE 'M%';

SELECT sale_date, product_name,
       quantity,
       CASE 
         WHEN quantity >= 20 THEN 'High Sale'
         WHEN quantity BETWEEN 10 AND 19 THEN 'Medium Sale'
         ELSE 'Low Sale'
       END AS sale_category
FROM jan_sales
WHERE product_name = 'Apple'
ORDER BY sale_date;

SELECT product_name,
       SUM(CASE WHEN quantity >= 20 THEN 1 ELSE 0 END) AS high_sale_days
FROM jan_sales
GROUP BY product_name
ORDER BY high_sale_days DESC;

SELECT product_name, SUM(quantity) AS total_sold
FROM jan_sales
GROUP BY product_name
HAVING SUM(quantity) > 400;

SELECT product_name,
       SUM(quantity) AS total_sold,
       AVG(quantity) AS avg_per_sale,
       MAX(quantity) AS best_day_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sold DESC;

SELECT product_name, SUM(quantity) AS total_sold, MAX(quantity) AS best_day_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sold DESC, best_day_sale DESC;

SELECT product_name, sale_date
FROM jan_sales
WHERE product_name = 'Mango' AND sale_date BETWEEN '2024-01-10' AND '2024-01-30';

SELECT product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 3;

SELECT product_name, quantity
FROM jan_sales
WHERE quantity BETWEEN 10 AND 20;

SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Banana'
ORDER BY quantity DESC
LIMIT 2;
--Show all unique fruit names in the table.
SELECT DISTINCT product_name
FROM jan_sales;
--Display the first 10 sales records
SELECT product_name, sale_date, quantity
FROM jan_sales
ORDER BY sale_date ASC
LIMIT 10;
--Find all sales of Banana that happened before 15th January 2024.
SELECT product_name, sale_date, quantity
FROM jan_sales
WHERE product_name='Banana' AND sale_date<'2024-01-15';
--Show the top 3 largest transactions across all fruits.
SELECT product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 3;
--List all sales where quantity is greater than 20.
SELECT product_name, quantity
FROM jan_sales
WHERE quantity>20;
--Retrieve sales of Apple that occurred in January 2024.
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Apple' AND sale_date BETWEEN '2024-01-01' and '2024-01-30';
--Show the latest sale record in the table.
SELECT product_name, sale_date
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 5;
--Display sales of Mango where quantity is between 5 and 15.
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Mango' AND quantity BETWEEN '5' and '15';
--List all sales sorted first by product_name alphabetically, then by sale_date descending.
SELECT product_name, sale_date
FROM jan_sales
ORDER BY product_name ASC, sale_date DESC;
--Show the second‑latest sale record in the table.
SELECT product_name, sale_date
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1 OFFSET 1;
--Write a query that shows the earliest sale record for each product.
SELECT DISTINCT product_name, sale_date
FROM jan_sales
ORDER BY sale_date ASC;
SELECT DISTINCT ON (product_name) product_name, sale_date, quantity
FROM jan_sales
ORDER BY product_name, sale_date ASC;
-- FRUIT STORE PROJECT 1
--Unique Products List
SELECT DISTINCT product_name
FROM jan_sales;
--Recent Sales Snapshot  
SELECT sale_date, product_name, quantity
FROM jan_sales
ORDER BY sale_date DESC
LIMIT 5;
--Banana Sales Check 
SELECT product_name, quantity, sale_date
FROM jan_sales
WHERE product_name='Banana';
--Top Transactions
SELECT product_name, quantity
FROM jan_sales
ORDER BY quantity DESC
LIMIT 3;
--Moderate Sales
SELECT * FROM jan_sales
WHERE quantity BETWEEN 10 AND 20;
--Apple January Report  
SELECT * FROM jan_sales
WHERE product_name='Apple';
--Latest Sale Record  
SELECT * FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1;
--Mango Range
SELECT * FROM jan_sales
WHERE product_name='Mango' AND quantity BETWEEN 5 AND 15
ORDER BY quantity;
--Sorted Report 
SELECT * FROM jan_sales
ORDER BY product_name ASC, sale_date DESC;
--Second‑Latest Sale
SELECT * FROM jan_sales
ORDER BY sale_date DESC
LIMIT 1 OFFSET 1;
--earliest sale record for each product
SELECT DISTINCT ON(product_name) product_name, quantity, sale_date
FROM jan_sales
ORDER BY product_name, sale_date ASC;
--Count total rows
SELECT COUNT(*) AS total_sale
FROM jan_sales;
--Total quantity sold per product
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
--Average quantity sold per product
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
--Maximum quantity sold in a single transaction
SELECT product_name, MAX(quantity) AS max_quantity
FROM jan_sales
GROUP BY product_name;
--Monthly sales totals
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS monthly_quantity
FROM jan_sales
GROUP BY month
ORDER BY month;
--Write a query to find the top 2 products with the highest total quantity sold.
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name
ORDER BY total_quantity DESC LIMIT 2;
--Find the average quantity sold per product
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
--Write a query to find the average quantity of Banana sales only, and compare it with the average quantity of Mango sales.
SELECT product_name, AVG(quantity) AS avg_quaantity
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
--Top Product Each Month
SELECT EXTRACT(MONTH FROM sale_date) AS month, product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name, MONTH
ORDER BY total_sale DESC;
--Write a query to find the average quantity per product, but only for sales after 1st February 2025
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE sale_date>'2024-01-10'
GROUP BY product_name;
-- total number of sales records
SELECT COUNT(*) AS total_sale
FROM jan_sales;
--total quantity sold per product.
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
--average quantity sold per product.
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
GROUP BY product_name;
--maximum quantity sold in a single transaction
SELECT product_name, MAX(quantity) AS max_quantity
FROM jan_sales
GROUP BY product_name;
--minimum quantity sold
SELECT product_name, MIN(quantity) AS min_quantity
FROM jan_sales
GROUP BY product_name;
--total quantity sold per month
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY month;
--top 3 products
SELECT product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sale DESC LIMIT 3;
--average quantity of Banana sales only.
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE product_name IN('Banana')
GROUP BY product_name;
--average quantity of Banana vs Mango sales.
SELECT product_name, AVG(quantity) AS avg_quantity
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
--number of sales transactions per product
SELECT product_name, COUNT(quantity) AS number_of_sales
FROM jan_sales
GROUP BY product_name
--average quantity per product,but only for sales after 21st Jan 2024
SELECT product_name, AVG(quantity) AS avg_qty, sale_date
FROM jan_sales
WHERE sale_date>'2024-01-21'
GROUP BY product_name, sale_date;
--earliest sale date per product
SELECT product_name, MIN(sale_date) AS earliest_sae
FROM jan_sales
GROUP BY product_name;
--latest sale date per product.
SELECT product_name, MAX(sale_date) AS latest_sale
FROM jan_sales
GROUP BY product_name;
--total quantity sold per product per month
SELECT product_name, SUM(quantity) AS total_quantity, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month;
--Write a query to show the top product in each month
SELECT product_name, SUM(quantity) AS total_quantity, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month
ORDER BY total_quantity DESC LIMIT 1;
--FRUIT STORE PROJECT 2
--Total Sales Records 
SELECT COUNT(*) AS Total_sale
FROM jan_sales;
--Total Quantity Sold per Product 
SELECT product_name, SUM(quantity) AS total_quantity
FROM jan_sales
GROUP BY product_name;
--Average Quantity per Product  
SELECT product_name, AVG(quantity) AS avg_qty
FROM jan_sales
GROUP BY product_name;
--Maximum & Minimum Sale per Product
SELECT product_name, MIN(quantity) AS min_sale, MAX(quantity) AS max_sale
FROM jan_sales
GROUP BY product_name;
--Monthly Sales Totals 
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY month;
--Top 3 Products by Total Sales
SELECT product_name, SUM(quantity) AS total_sale
FROM jan_sales
GROUP BY product_name
ORDER BY total_sale DESC LIMIT 3;
--Banana vs Mango Comparison
SELECT product_name, AVG(quantity) AS avg_qty
FROM jan_sales
WHERE product_name IN('Banana','Mango')
GROUP BY product_name;
--Month with Highest Sales
SELECT EXTRACT(MONTH FROM sale_date) AS month, SUM(quantity) AS highest_sale
FROM jan_sales
GROUP BY month
ORDER BY highest_sale DESC LIMIT 1;
--Number of Transactions per Product
SELECT product_name, COUNT(quantity) AS number_of_transaction
FROM jan_sales
GROUP BY product_name;
--Total Quantity per Product per Month 
SELECT product_name, SUM(quantity) AS total_qty, EXTRACT(MONTH FROM sale_date) AS month
FROM jan_sales
GROUP BY product_name, month;
--Find the top product in each month
SELECT DISTINCT ON(month)
EXTRACT(MONTH FROM sale_date) AS month,
product_name,
SUM(quantity) AS total_sale
FROM jan_sales 
GROUP BY month, product_name;


SELECT * FROM products;


SELECT * FROM customers;


SELECT * FROM jan_sales;