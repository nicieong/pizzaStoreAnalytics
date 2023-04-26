USE PIZZA_STORE;

-- PIVOT() function in MySQL. Group sales by product description
SELECT sales_record.product_desc,
SUM(CASE WHEN sales_record.order_year = "2021" THEN sales_record.pretax_total END) "2021",
SUM(CASE WHEN sales_record.order_year = "2022" THEN sales_record.pretax_total END) "2022",
SUM(sales_record.pretax_total) AS Total
FROM sales_record
GROUP BY sales_record.product_desc;


-- Find top 10 performer in year 2022
SELECT sales_record.product_desc, SUM(sales_record.pretax_total) AS Total
FROM sales_record
WHERE sales_record.order_year = "2022"
GROUP BY sales_record.product_desc
ORDER BY Total DESC
LIMIT 10;


-- Find out average sales in 2022 December by product description
SELECT sales_record.product_desc, ROUND(SUM(sales_record.pretax_total)/SUM(sales_record.qty),2) AS Average
FROM sales_record
WHERE sales_record.order_year = "2022" AND sales_record.order_month = "December"
GROUP BY sales_record.product_desc;



-- PIVOT() function in MySQL. Group sales by delivery type
SELECT sales_record.dtype,
SUM(CASE WHEN sales_record.order_year = "2021" THEN sales_record.pretax_total END) "2021",
SUM(CASE WHEN sales_record.order_year = "2022" THEN sales_record.pretax_total END) "2022",
SUM(sales_record.pretax_total) AS Total
FROM sales_record
GROUP BY sales_record.dtype;