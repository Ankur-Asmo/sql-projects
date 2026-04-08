-- Step 1: Create the table
CREATE TABLE jan_sales (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    sale_date DATE
);

SELECT * FROM jan_sales;

-- Step 2: Insert 30 days of data
INSERT INTO jan_sales (product_name, quantity, sale_date) VALUES
('Apple', 10, '2024-01-01'), ('Banana', 6, '2024-01-01'), ('Orange', 4, '2024-01-01'), ('Mango', 12, '2024-01-01'), ('Grapes', 8, '2024-01-01'),
('Apple', 15, '2024-01-02'), ('Banana', 3, '2024-01-02'), ('Orange', 9, '2024-01-02'), ('Mango', 7, '2024-01-02'), ('Grapes', 11, '2024-01-02'),
('Apple', 20, '2024-01-03'), ('Banana', 5, '2024-01-03'), ('Orange', 13, '2024-01-03'), ('Mango', 9, '2024-01-03'), ('Grapes', 6, '2024-01-03'),
('Apple', 18, '2024-01-04'), ('Banana', 7, '2024-01-04'), ('Orange', 10, '2024-01-04'), ('Mango', 14, '2024-01-04'), ('Grapes', 12, '2024-01-04'),
('Apple', 12, '2024-01-05'), ('Banana', 9, '2024-01-05'), ('Orange', 8, '2024-01-05'), ('Mango', 11, '2024-01-05'), ('Grapes', 10, '2024-01-05'),
('Apple', 16, '2024-01-06'), ('Banana', 4, '2024-01-06'), ('Orange', 7, '2024-01-06'), ('Mango', 13, '2024-01-06'), ('Grapes', 9, '2024-01-06'),
('Apple', 14, '2024-01-07'), ('Banana', 8, '2024-01-07'), ('Orange', 12, '2024-01-07'), ('Mango', 15, '2024-01-07'), ('Grapes', 7, '2024-01-07'),
('Apple', 19, '2024-01-08'), ('Banana', 6, '2024-01-08'), ('Orange', 11, '2024-01-08'), ('Mango', 10, '2024-01-08'), ('Grapes', 13, '2024-01-08'),
('Apple', 17, '2024-01-09'), ('Banana', 5, '2024-01-09'), ('Orange', 9, '2024-01-09'), ('Mango', 12, '2024-01-09'), ('Grapes', 8, '2024-01-09'),
('Apple', 21, '2024-01-10'), ('Banana', 7, '2024-01-10'), ('Orange', 14, '2024-01-10'), ('Mango', 16, '2024-01-10'), ('Grapes', 11, '2024-01-10'),
('Apple', 13, '2024-01-11'), ('Banana', 9, '2024-01-11'), ('Orange', 6, '2024-01-11'), ('Mango', 8, '2024-01-11'), ('Grapes', 10, '2024-01-11'),
('Apple', 18, '2024-01-12'), ('Banana', 4, '2024-01-12'), ('Orange', 10, '2024-01-12'), ('Mango', 14, '2024-01-12'), ('Grapes', 12, '2024-01-12'),
('Apple', 20, '2024-01-13'), ('Banana', 6, '2024-01-13'), ('Orange', 13, '2024-01-13'), ('Mango', 9, '2024-01-13'), ('Grapes', 7, '2024-01-13'),
('Apple', 15, '2024-01-14'), ('Banana', 8, '2024-01-14'), ('Orange', 11, '2024-01-14'), ('Mango', 12, '2024-01-14'), ('Grapes', 9, '2024-01-14'),
('Apple', 19, '2024-01-15'), ('Banana', 5, '2024-01-15'), ('Orange', 9, '2024-01-15'), ('Mango', 13, '2024-01-15'), ('Grapes', 10, '2024-01-15'),
('Apple', 16, '2024-01-16'), ('Banana', 7, '2024-01-16'), ('Orange', 12, '2024-01-16'), ('Mango', 15, '2024-01-16'), ('Grapes', 8, '2024-01-16'),
('Apple', 22, '2024-01-17'), ('Banana', 6, '2024-01-17'), ('Orange', 14, '2024-01-17'), ('Mango', 11, '2024-01-17'), ('Grapes', 13, '2024-01-17'),
('Apple', 18, '2024-01-18'), ('Banana', 9, '2024-01-18'), ('Orange', 10, '2024-01-18'), ('Mango', 12, '2024-01-18'), ('Grapes', 7, '2024-01-18'),
('Apple', 20, '2024-01-19'), ('Banana', 4, '2024-01-19'), ('Orange', 8, '2024-01-19'), ('Mango', 14, '2024-01-19'), ('Grapes', 9, '2024-01-19'),
('Apple', 17, '2024-01-20'), ('Banana', 7, '2024-01-20'), ('Orange', 11, '2024-01-20'), ('Mango', 10, '2024-01-20'), ('Grapes', 12, '2024-01-20'),
('Apple', 19, '2024-01-21'), ('Banana', 5, '2024-01-21'), ('Orange', 9, '2024-01-21'), ('Mango', 13, '2024-01-21'), ('Grapes', 8, '2024-01-21'),
('Apple', 21, '2024-01-22'), ('Banana', 6, '2024-01-22'), ('Orange', 14, '2024-01-22'), ('Mango', 15, '2024-01-22'), ('Grapes', 11, '2024-01-22'),
('Apple', 13, '2024-01-23'), ('Banana', 9, '2024-01-23'), ('Orange', 7, '2024-01-23'), ('Mango', 8, '2024-01-23'), ('Grapes', 10, '2024-01-23'),
('Apple', 18, '2024-01-24'), ('Banana', 4, '2024-01-24'), ('Orange', 12, '2024-01-24'), ('Mango', 14, '2024-01-24'), ('Grapes', 12, '2024-01-24'),
('Apple', 20, '2024-01-25'), ('Banana', 6, '2024-01-25'), ('Orange', 13, '2024-01-25'), ('Mango', 9, '2024-01-25'), ('Grapes', 7, '2024-01-25'),
('Apple', 15, '2024-01-26'), ('Banana', 8, '2024-01-26'), ('Orange', 11, '2024-01-26'), ('Mango', 12, '2024-01-26'), ('Grapes', 9, '2024-01-26'),
('Apple', 18, '2024-01-27'), ('Banana', 6, '2024-01-27'), ('Orange', 10, '2024-01-27'), ('Mango', 14, '2024-01-27'), ('Grapes', 7, '2024-01-27'),
('Apple', 20, '2024-01-28'), ('Banana', 5, '2024-01-28'), ('Orange', 13, '2024-01-28'), ('Mango', 9, '2024-01-28'), ('Grapes', 11, '2024-01-28'),
('Apple', 17, '2024-01-29'), ('Banana', 7, '2024-01-29'), ('Orange', 12, '2024-01-29'), ('Mango', 15, '2024-01-29'), ('Grapes', 8, '2024-01-29'),
('Apple', 19, '2024-01-30'), ('Banana', 6, '2024-01-30'), ('Orange', 9, '2024-01-30'), ('Mango', 13, '2024-01-30'), ('Grapes', 10, '2024-01-30');

SELECT * FROM jan_sales;

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
-- FRUIT STORE PROJECT
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