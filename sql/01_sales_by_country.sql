/*
Project: Sales Data Analysis
Analysis 01: Sales by Country

Business Question:
Which countries generate the highest total sales?

Tables:
- sales.orders
- sales.customers

Join:
orders.customerid = customers.customerid
*/

SELECT
    c.country,
    SUM(o.sales) AS total_sales,
    COUNT(o.orderid) AS order_count
FROM sales.orders AS o
INNER JOIN sales.customers AS c
    ON o.customerid = c.customerid
GROUP BY c.country
ORDER BY total_sales DESC;