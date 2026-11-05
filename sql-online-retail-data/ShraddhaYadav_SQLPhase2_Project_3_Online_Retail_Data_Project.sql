-- Online Retail Customer Reach and Product Demand Analytics
-- Full SQL file. Open the provided SQLite database first for all data.

CREATE VIEW IF NOT EXISTS v_country_revenue AS
SELECT country, SUM(line_revenue) AS total_revenue, COUNT(*) AS transaction_lines, COUNT(DISTINCT customer_id) AS unique_customers
FROM online_retail_data
WHERE line_revenue > 0
GROUP BY country;

CREATE VIEW IF NOT EXISTS v_customer_value AS
SELECT customer_id, SUM(line_revenue) AS total_spend, COUNT(DISTINCT invoice_no) AS invoice_count, COUNT(DISTINCT country) AS country_count
FROM online_retail_data
WHERE customer_id IS NOT NULL AND line_revenue > 0
GROUP BY customer_id;

CREATE VIEW IF NOT EXISTS v_product_performance AS
SELECT stock_code, description, SUM(line_revenue) AS total_revenue, SUM(quantity) AS total_quantity, COUNT(DISTINCT country) AS country_count
FROM online_retail_data
WHERE line_revenue > 0
GROUP BY stock_code, description;

CREATE VIEW IF NOT EXISTS v_country_data_quality AS
SELECT country, COUNT(*) AS total_lines, SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customer_rows, 100.0*SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END)/COUNT(*) AS missing_customer_pct
FROM online_retail_data
GROUP BY country;

CREATE VIEW IF NOT EXISTS v_monthly_trends AS
SELECT invoice_month, SUM(line_revenue) AS monthly_revenue, COUNT(*) AS total_lines, SUM(is_cancelled) AS cancelled_lines
FROM online_retail_data
WHERE invoice_month IS NOT NULL
GROUP BY invoice_month;

-- Q01 | Perspective: Revenue and Market Coverage | Difficulty: Easy | Concept: SELECT
-- Business question: What are the first 10 transaction records?
SELECT invoice_no, stock_code, description, quantity, unit_price, country FROM online_retail_data LIMIT 10;


-- Q02 | Perspective: Revenue and Market Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which transactions are from the United Kingdom?
SELECT invoice_no, description, quantity, unit_price, country FROM online_retail_data WHERE country = 'United Kingdom' LIMIT 20;


-- Q03 | Perspective: Revenue and Market Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which lines have a positive revenue value?
SELECT invoice_no, description, line_revenue FROM online_retail_data WHERE line_revenue > 0 ORDER BY line_revenue DESC LIMIT 20;


-- Q04 | Perspective: Revenue and Market Coverage | Difficulty: Easy | Concept: SELECT
-- Business question: Which countries appear in the dataset?
SELECT DISTINCT country FROM online_retail_data WHERE country <> '' ORDER BY country LIMIT 50;


-- Q05 | Perspective: Revenue and Market Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which transactions have unit prices above 20?
SELECT invoice_no, description, unit_price, country FROM online_retail_data WHERE unit_price > 20 ORDER BY unit_price DESC LIMIT 20;


-- Q06 | Perspective: Revenue and Market Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries generate the highest total revenue?
SELECT country, ROUND(SUM(line_revenue),2) AS total_revenue, COUNT(*) AS transaction_lines FROM online_retail_data GROUP BY country ORDER BY total_revenue DESC LIMIT 15;


-- Q07 | Perspective: Revenue and Market Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: What is the average order line value by country?
SELECT country, ROUND(AVG(line_revenue),2) AS avg_line_revenue, COUNT(*) AS lines FROM online_retail_data WHERE line_revenue > 0 GROUP BY country HAVING COUNT(*) >= 5 ORDER BY avg_line_revenue DESC LIMIT 15;


-- Q08 | Perspective: Revenue and Market Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have the most unique customers?
SELECT country, COUNT(DISTINCT customer_id) AS unique_customers FROM online_retail_data WHERE customer_id IS NOT NULL GROUP BY country ORDER BY unique_customers DESC LIMIT 15;


-- Q09 | Perspective: Revenue and Market Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have the highest total quantity sold?
SELECT country, SUM(quantity) AS total_quantity FROM online_retail_data WHERE quantity > 0 GROUP BY country ORDER BY total_quantity DESC LIMIT 15;


-- Q10 | Perspective: Revenue and Market Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have unusually low customer coverage?
SELECT country, COUNT(DISTINCT customer_id) AS unique_customers, COUNT(*) AS lines FROM online_retail_data GROUP BY country HAVING unique_customers < 10 ORDER BY lines DESC LIMIT 20;


-- Q11 | Perspective: Revenue and Market Coverage | Difficulty: Difficult | Concept: CTE
-- Business question: Which top countries contribute most to overall revenue share?
WITH country_revenue AS (SELECT country, SUM(line_revenue) AS revenue FROM online_retail_data WHERE line_revenue > 0 GROUP BY country), total_revenue AS (SELECT SUM(revenue) AS total_rev FROM country_revenue) SELECT country, ROUND(revenue,2) AS revenue, ROUND(100.0*revenue/total_rev,2) AS pct_of_total FROM country_revenue, total_revenue ORDER BY revenue DESC LIMIT 15;


-- Q12 | Perspective: Revenue and Market Coverage | Difficulty: Difficult | Concept: Window Function
-- Business question: How do countries rank by revenue?
SELECT country, ROUND(SUM(line_revenue),2) AS total_revenue, RANK() OVER (ORDER BY SUM(line_revenue) DESC) AS revenue_rank FROM online_retail_data WHERE line_revenue > 0 GROUP BY country ORDER BY revenue_rank LIMIT 15;


-- Q13 | Perspective: Revenue and Market Coverage | Difficulty: Difficult | Concept: Window Function
-- Business question: What is each country revenue compared with the previous rank?
WITH ranked AS (SELECT country, SUM(line_revenue) AS revenue, RANK() OVER (ORDER BY SUM(line_revenue) DESC) AS rnk FROM online_retail_data WHERE line_revenue > 0 GROUP BY country) SELECT country, ROUND(revenue,2) AS revenue, rnk, ROUND(revenue - LAG(revenue) OVER (ORDER BY rnk),2) AS gap_from_previous FROM ranked ORDER BY rnk LIMIT 15;


-- Q14 | Perspective: Revenue and Market Coverage | Difficulty: Difficult | Concept: VIEW
-- Business question: Create a reusable country revenue view and show the top countries.
SELECT country, ROUND(total_revenue,2) AS total_revenue, transaction_lines FROM v_country_revenue ORDER BY total_revenue DESC LIMIT 15;


-- Q15 | Perspective: Revenue and Market Coverage | Difficulty: Difficult | Concept: CTE
-- Business question: Which countries are high revenue but have fewer customers?
WITH country_metrics AS (SELECT country, SUM(line_revenue) AS revenue, COUNT(DISTINCT customer_id) AS customers FROM online_retail_data WHERE line_revenue > 0 GROUP BY country), ranked AS (SELECT *, RANK() OVER (ORDER BY revenue DESC) AS revenue_rank FROM country_metrics) SELECT country, ROUND(revenue,2) AS revenue, customers, revenue_rank FROM ranked WHERE revenue_rank <= 20 AND customers < 50 ORDER BY revenue_rank;


-- Q16 | Perspective: Customer and Access Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows have a known customer ID?
SELECT invoice_no, customer_id, country, line_revenue FROM online_retail_data WHERE customer_id IS NOT NULL LIMIT 20;


-- Q17 | Perspective: Customer and Access Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows have missing customer ID?
SELECT invoice_no, country, description, line_revenue FROM online_retail_data WHERE customer_id IS NULL LIMIT 20;


-- Q18 | Perspective: Customer and Access Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which customers bought from countries outside the UK?
SELECT invoice_no, customer_id, country, description FROM online_retail_data WHERE country <> 'United Kingdom' AND customer_id IS NOT NULL LIMIT 20;


-- Q19 | Perspective: Customer and Access Analysis | Difficulty: Easy | Concept: SELECT
-- Business question: Which customer IDs appear in the data?
SELECT DISTINCT customer_id FROM online_retail_data WHERE customer_id IS NOT NULL ORDER BY customer_id LIMIT 50;


-- Q20 | Perspective: Customer and Access Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which customers have large individual line purchases?
SELECT invoice_no, customer_id, country, line_revenue FROM online_retail_data WHERE line_revenue > 100 ORDER BY line_revenue DESC LIMIT 20;


-- Q21 | Perspective: Customer and Access Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which customers have the highest total spend?
SELECT customer_id, ROUND(SUM(line_revenue),2) AS total_spend, COUNT(DISTINCT invoice_no) AS invoices FROM online_retail_data WHERE customer_id IS NOT NULL AND line_revenue > 0 GROUP BY customer_id ORDER BY total_spend DESC LIMIT 20;


-- Q22 | Perspective: Customer and Access Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which customers bought the most quantity?
SELECT customer_id, SUM(quantity) AS total_quantity, COUNT(*) AS lines FROM online_retail_data WHERE customer_id IS NOT NULL AND quantity > 0 GROUP BY customer_id ORDER BY total_quantity DESC LIMIT 20;


-- Q23 | Perspective: Customer and Access Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have the highest missing customer ID rate?
SELECT country, COUNT(*) AS total_lines, SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customer_rows, ROUND(100.0*SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END)/COUNT(*),2) AS missing_pct FROM online_retail_data GROUP BY country HAVING total_lines >= 20 ORDER BY missing_pct DESC LIMIT 20;


-- Q24 | Perspective: Customer and Access Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: What is average customer spend by country?
SELECT country, ROUND(SUM(line_revenue)/NULLIF(COUNT(DISTINCT customer_id),0),2) AS revenue_per_customer, COUNT(DISTINCT customer_id) AS customers FROM online_retail_data WHERE customer_id IS NOT NULL AND line_revenue > 0 GROUP BY country ORDER BY revenue_per_customer DESC LIMIT 20;


-- Q25 | Perspective: Customer and Access Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which customers have many invoices?
SELECT customer_id, COUNT(DISTINCT invoice_no) AS invoice_count, ROUND(SUM(line_revenue),2) AS total_spend FROM online_retail_data WHERE customer_id IS NOT NULL GROUP BY customer_id HAVING invoice_count >= 2 ORDER BY invoice_count DESC, total_spend DESC LIMIT 20;


-- Q26 | Perspective: Customer and Access Analysis | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank customers by total spend.
WITH customer_spend AS (SELECT customer_id, SUM(line_revenue) AS total_spend FROM online_retail_data WHERE customer_id IS NOT NULL AND line_revenue > 0 GROUP BY customer_id) SELECT customer_id, ROUND(total_spend,2) AS total_spend, RANK() OVER (ORDER BY total_spend DESC) AS spend_rank FROM customer_spend ORDER BY spend_rank LIMIT 20;


-- Q27 | Perspective: Customer and Access Analysis | Difficulty: Difficult | Concept: CTE
-- Business question: Which customers are above the average customer spend?
WITH customer_spend AS (SELECT customer_id, SUM(line_revenue) AS total_spend FROM online_retail_data WHERE customer_id IS NOT NULL AND line_revenue > 0 GROUP BY customer_id), avg_spend AS (SELECT AVG(total_spend) AS avg_total_spend FROM customer_spend) SELECT customer_id, ROUND(total_spend,2) AS total_spend, ROUND(avg_total_spend,2) AS average_spend FROM customer_spend, avg_spend WHERE total_spend > avg_total_spend ORDER BY total_spend DESC LIMIT 20;


-- Q28 | Perspective: Customer and Access Analysis | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank customers within each country by spend.
WITH spend AS (SELECT country, customer_id, SUM(line_revenue) AS total_spend FROM online_retail_data WHERE customer_id IS NOT NULL AND line_revenue > 0 GROUP BY country, customer_id) SELECT country, customer_id, ROUND(total_spend,2) AS total_spend, ROW_NUMBER() OVER (PARTITION BY country ORDER BY total_spend DESC) AS country_customer_rank FROM spend ORDER BY country, country_customer_rank LIMIT 50;


-- Q29 | Perspective: Customer and Access Analysis | Difficulty: Difficult | Concept: VIEW
-- Business question: Use the customer value view to identify top customers.
SELECT customer_id, ROUND(total_spend,2) AS total_spend, invoice_count, country_count FROM v_customer_value ORDER BY total_spend DESC LIMIT 20;


-- Q30 | Perspective: Customer and Access Analysis | Difficulty: Difficult | Concept: CTE
-- Business question: Which countries have low customer coverage but high spend?
WITH country_metrics AS (SELECT country, COUNT(DISTINCT customer_id) AS customers, SUM(line_revenue) AS revenue FROM online_retail_data WHERE line_revenue > 0 GROUP BY country) SELECT country, customers, ROUND(revenue,2) AS revenue FROM country_metrics WHERE customers < 20 AND revenue > (SELECT AVG(revenue) FROM country_metrics) ORDER BY revenue DESC;


-- Q31 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Easy | Concept: SELECT
-- Business question: What are sample products in the data?
SELECT stock_code, description, quantity, unit_price FROM online_retail_data LIMIT 20;


-- Q32 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have negative quantities?
SELECT invoice_no, stock_code, description, quantity FROM online_retail_data WHERE quantity < 0 LIMIT 20;


-- Q33 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have zero or missing unit price?
SELECT invoice_no, stock_code, description, unit_price FROM online_retail_data WHERE unit_price IS NULL OR unit_price <= 0 LIMIT 20;


-- Q34 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are high priced?
SELECT stock_code, description, unit_price FROM online_retail_data WHERE unit_price > 10 ORDER BY unit_price DESC LIMIT 20;


-- Q35 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Easy | Concept: SELECT
-- Business question: Which unique stock codes exist?
SELECT DISTINCT stock_code, description FROM online_retail_data WHERE stock_code <> '' ORDER BY stock_code LIMIT 50;


-- Q36 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products generate the highest revenue?
SELECT stock_code, description, ROUND(SUM(line_revenue),2) AS total_revenue, SUM(quantity) AS quantity_sold FROM online_retail_data WHERE line_revenue > 0 GROUP BY stock_code, description ORDER BY total_revenue DESC LIMIT 20;


-- Q37 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products sell the most units?
SELECT stock_code, description, SUM(quantity) AS total_quantity FROM online_retail_data WHERE quantity > 0 GROUP BY stock_code, description ORDER BY total_quantity DESC LIMIT 20;


-- Q38 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products have the highest average price?
SELECT stock_code, description, ROUND(AVG(unit_price),2) AS avg_price, COUNT(*) AS lines FROM online_retail_data WHERE unit_price > 0 GROUP BY stock_code, description HAVING COUNT(*) >= 2 ORDER BY avg_price DESC LIMIT 20;


-- Q39 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products appear in the most countries?
SELECT stock_code, description, COUNT(DISTINCT country) AS country_count FROM online_retail_data GROUP BY stock_code, description ORDER BY country_count DESC LIMIT 20;


-- Q40 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products have frequent negative quantity rows?
SELECT stock_code, description, COUNT(*) AS negative_rows FROM online_retail_data WHERE quantity < 0 GROUP BY stock_code, description ORDER BY negative_rows DESC LIMIT 20;


-- Q41 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by revenue within each country.
WITH product_country AS (SELECT country, stock_code, description, SUM(line_revenue) AS revenue FROM online_retail_data WHERE line_revenue > 0 GROUP BY country, stock_code, description) SELECT country, stock_code, description, ROUND(revenue,2) AS revenue, ROW_NUMBER() OVER (PARTITION BY country ORDER BY revenue DESC) AS product_rank_in_country FROM product_country ORDER BY country, product_rank_in_country LIMIT 50;


-- Q42 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Difficult | Concept: CTE
-- Business question: Which products are above average revenue?
WITH product_revenue AS (SELECT stock_code, description, SUM(line_revenue) AS revenue FROM online_retail_data WHERE line_revenue > 0 GROUP BY stock_code, description), avg_product AS (SELECT AVG(revenue) AS avg_revenue FROM product_revenue) SELECT stock_code, description, ROUND(revenue,2) AS revenue, ROUND(avg_revenue,2) AS avg_revenue FROM product_revenue, avg_product WHERE revenue > avg_revenue ORDER BY revenue DESC LIMIT 20;


-- Q43 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Difficult | Concept: Window Function
-- Business question: What is the cumulative revenue contribution by product?
WITH product_revenue AS (SELECT stock_code, description, SUM(line_revenue) AS revenue FROM online_retail_data WHERE line_revenue > 0 GROUP BY stock_code, description) SELECT stock_code, description, ROUND(revenue,2) AS revenue, ROUND(SUM(revenue) OVER (ORDER BY revenue DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),2) AS cumulative_revenue FROM product_revenue ORDER BY revenue DESC LIMIT 20;


-- Q44 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Difficult | Concept: VIEW
-- Business question: Use product performance view to find leading products.
SELECT stock_code, description, ROUND(total_revenue,2) AS total_revenue, total_quantity FROM v_product_performance ORDER BY total_revenue DESC LIMIT 20;


-- Q45 | Perspective: Product Demand and Catalogue Analysis | Difficulty: Difficult | Concept: CTE
-- Business question: Which high-volume products have lower average prices?
WITH product_metrics AS (SELECT stock_code, description, SUM(quantity) AS qty, AVG(unit_price) AS avg_price FROM online_retail_data WHERE quantity > 0 AND unit_price > 0 GROUP BY stock_code, description) SELECT stock_code, description, qty, ROUND(avg_price,2) AS avg_price FROM product_metrics WHERE qty > (SELECT AVG(qty) FROM product_metrics) AND avg_price < (SELECT AVG(avg_price) FROM product_metrics) ORDER BY qty DESC LIMIT 20;


-- Q46 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Easy | Concept: WHERE
-- Business question: Which invoices are cancellations?
SELECT invoice_no, stock_code, description, quantity, line_revenue FROM online_retail_data WHERE is_cancelled = 1 LIMIT 20;


-- Q47 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows have negative revenue?
SELECT invoice_no, stock_code, description, line_revenue FROM online_retail_data WHERE line_revenue < 0 ORDER BY line_revenue LIMIT 20;


-- Q48 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows are missing descriptions?
SELECT invoice_no, stock_code, description FROM online_retail_data WHERE description IS NULL OR description = '' LIMIT 20;


-- Q49 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows are missing country?
SELECT invoice_no, stock_code, country FROM online_retail_data WHERE country IS NULL OR country = '' LIMIT 20;


-- Q50 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Easy | Concept: WHERE
-- Business question: Which rows have invalid quantity or price?
SELECT invoice_no, stock_code, quantity, unit_price FROM online_retail_data WHERE quantity IS NULL OR unit_price IS NULL LIMIT 20;


-- Q51 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have the most cancellations?
SELECT country, COUNT(*) AS cancelled_lines FROM online_retail_data WHERE is_cancelled = 1 GROUP BY country ORDER BY cancelled_lines DESC LIMIT 20;


-- Q52 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Medium | Concept: GROUP BY
-- Business question: What percentage of rows are cancelled by country?
SELECT country, COUNT(*) AS total_lines, SUM(is_cancelled) AS cancelled_lines, ROUND(100.0*SUM(is_cancelled)/COUNT(*),2) AS cancellation_pct FROM online_retail_data GROUP BY country HAVING total_lines >= 20 ORDER BY cancellation_pct DESC LIMIT 20;


-- Q53 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which products have the largest negative revenue?
SELECT stock_code, description, ROUND(SUM(line_revenue),2) AS net_negative_revenue FROM online_retail_data WHERE line_revenue < 0 GROUP BY stock_code, description ORDER BY net_negative_revenue ASC LIMIT 20;


-- Q54 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which countries have missing customer IDs?
SELECT country, COUNT(*) AS rows_count, SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customer_rows FROM online_retail_data GROUP BY country ORDER BY missing_customer_rows DESC LIMIT 20;


-- Q55 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which product descriptions appear against multiple stock codes?
SELECT description, COUNT(DISTINCT stock_code) AS stock_code_count, COUNT(*) AS lines FROM online_retail_data WHERE description <> '' GROUP BY description HAVING stock_code_count > 1 ORDER BY stock_code_count DESC LIMIT 20;


-- Q56 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Difficult | Concept: CTE
-- Business question: Which countries have cancellation rates above average?
WITH country_cancel AS (SELECT country, COUNT(*) AS total_lines, SUM(is_cancelled) AS cancelled_lines, 1.0*SUM(is_cancelled)/COUNT(*) AS cancel_rate FROM online_retail_data GROUP BY country HAVING total_lines >= 20), avg_cancel AS (SELECT AVG(cancel_rate) AS avg_rate FROM country_cancel) SELECT country, total_lines, cancelled_lines, ROUND(100*cancel_rate,2) AS cancel_pct, ROUND(100*avg_rate,2) AS avg_cancel_pct FROM country_cancel, avg_cancel WHERE cancel_rate > avg_rate ORDER BY cancel_rate DESC;


-- Q57 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by number of cancellation rows.
WITH product_cancel AS (SELECT stock_code, description, COUNT(*) AS cancelled_rows FROM online_retail_data WHERE is_cancelled = 1 GROUP BY stock_code, description) SELECT stock_code, description, cancelled_rows, RANK() OVER (ORDER BY cancelled_rows DESC) AS cancellation_rank FROM product_cancel ORDER BY cancellation_rank LIMIT 20;


-- Q58 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Difficult | Concept: Window Function
-- Business question: Show cancellation trend by month and previous month gap.
WITH monthly AS (SELECT invoice_month, COUNT(*) AS total_lines, SUM(is_cancelled) AS cancelled_lines FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month) SELECT invoice_month, total_lines, cancelled_lines, cancelled_lines - LAG(cancelled_lines) OVER (ORDER BY invoice_month) AS change_from_previous_month FROM monthly ORDER BY invoice_month LIMIT 20;


-- Q59 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Difficult | Concept: VIEW
-- Business question: Use the data quality view to show country completeness.
SELECT country, total_lines, missing_customer_rows, ROUND(missing_customer_pct,2) AS missing_customer_pct FROM v_country_data_quality ORDER BY missing_customer_pct DESC LIMIT 20;


-- Q60 | Perspective: Returns, Cancellations and Data Quality | Difficulty: Difficult | Concept: CTE
-- Business question: Which countries combine high revenue and high cancellation percentage?
WITH country_metrics AS (SELECT country, SUM(line_revenue) AS revenue, COUNT(*) AS total_lines, SUM(is_cancelled) AS cancelled_lines, 1.0*SUM(is_cancelled)/COUNT(*) AS cancel_rate FROM online_retail_data GROUP BY country HAVING total_lines >= 20) SELECT country, ROUND(revenue,2) AS revenue, total_lines, ROUND(100*cancel_rate,2) AS cancel_pct FROM country_metrics WHERE revenue > (SELECT AVG(revenue) FROM country_metrics) AND cancel_rate > (SELECT AVG(cancel_rate) FROM country_metrics) ORDER BY revenue DESC;


-- Q61 | Perspective: Time Trends and Operational Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which transactions happened in the first invoice month?
SELECT invoice_no, invoice_date_clean, invoice_month, country, line_revenue FROM online_retail_data WHERE invoice_month = (SELECT MIN(invoice_month) FROM online_retail_data WHERE invoice_month IS NOT NULL) LIMIT 20;


-- Q62 | Perspective: Time Trends and Operational Planning | Difficulty: Easy | Concept: SELECT
-- Business question: Which months are present in the dataset?
SELECT DISTINCT invoice_month FROM online_retail_data WHERE invoice_month IS NOT NULL ORDER BY invoice_month LIMIT 50;


-- Q63 | Perspective: Time Trends and Operational Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which transactions happened during business hours?
SELECT invoice_no, invoice_hour, description, line_revenue FROM online_retail_data WHERE invoice_hour BETWEEN 9 AND 17 LIMIT 20;


-- Q64 | Perspective: Time Trends and Operational Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which transactions happened outside business hours?
SELECT invoice_no, invoice_hour, description, line_revenue FROM online_retail_data WHERE invoice_hour < 9 OR invoice_hour > 17 LIMIT 20;


-- Q65 | Perspective: Time Trends and Operational Planning | Difficulty: Easy | Concept: SELECT
-- Business question: Which weekdays appear in the dataset?
SELECT DISTINCT invoice_weekday FROM online_retail_data WHERE invoice_weekday <> '' ORDER BY invoice_weekday;


-- Q66 | Perspective: Time Trends and Operational Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: What is monthly revenue?
SELECT invoice_month, ROUND(SUM(line_revenue),2) AS monthly_revenue, COUNT(*) AS lines FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month ORDER BY invoice_month;


-- Q67 | Perspective: Time Trends and Operational Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which weekdays have the most transaction lines?
SELECT invoice_weekday, COUNT(*) AS transaction_lines, ROUND(SUM(line_revenue),2) AS total_revenue FROM online_retail_data WHERE invoice_weekday <> '' GROUP BY invoice_weekday ORDER BY transaction_lines DESC;


-- Q68 | Perspective: Time Trends and Operational Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which hours generate the most revenue?
SELECT invoice_hour, ROUND(SUM(line_revenue),2) AS revenue, COUNT(*) AS lines FROM online_retail_data WHERE invoice_hour IS NOT NULL GROUP BY invoice_hour ORDER BY revenue DESC LIMIT 24;


-- Q69 | Perspective: Time Trends and Operational Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: How does monthly cancellation count change?
SELECT invoice_month, SUM(is_cancelled) AS cancellations, COUNT(*) AS total_lines FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month ORDER BY invoice_month;


-- Q70 | Perspective: Time Trends and Operational Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which country-month combinations generate highest revenue?
SELECT country, invoice_month, ROUND(SUM(line_revenue),2) AS revenue FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY country, invoice_month ORDER BY revenue DESC LIMIT 20;


-- Q71 | Perspective: Time Trends and Operational Planning | Difficulty: Difficult | Concept: Window Function
-- Business question: Show monthly revenue with previous month comparison.
WITH monthly AS (SELECT invoice_month, SUM(line_revenue) AS revenue FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month) SELECT invoice_month, ROUND(revenue,2) AS revenue, ROUND(LAG(revenue) OVER (ORDER BY invoice_month),2) AS previous_month_revenue, ROUND(revenue - LAG(revenue) OVER (ORDER BY invoice_month),2) AS monthly_change FROM monthly ORDER BY invoice_month;


-- Q72 | Perspective: Time Trends and Operational Planning | Difficulty: Difficult | Concept: Window Function
-- Business question: Calculate running monthly revenue.
WITH monthly AS (SELECT invoice_month, SUM(line_revenue) AS revenue FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month) SELECT invoice_month, ROUND(revenue,2) AS revenue, ROUND(SUM(revenue) OVER (ORDER BY invoice_month ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),2) AS running_revenue FROM monthly ORDER BY invoice_month;


-- Q73 | Perspective: Time Trends and Operational Planning | Difficulty: Difficult | Concept: CTE
-- Business question: Which months are above average revenue?
WITH monthly AS (SELECT invoice_month, SUM(line_revenue) AS revenue FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month), avg_month AS (SELECT AVG(revenue) AS avg_revenue FROM monthly) SELECT invoice_month, ROUND(revenue,2) AS revenue, ROUND(avg_revenue,2) AS avg_revenue FROM monthly, avg_month WHERE revenue > avg_revenue ORDER BY revenue DESC;


-- Q74 | Perspective: Time Trends and Operational Planning | Difficulty: Difficult | Concept: VIEW
-- Business question: Use monthly trend view to show revenue trend.
SELECT invoice_month, ROUND(monthly_revenue,2) AS monthly_revenue, total_lines FROM v_monthly_trends ORDER BY invoice_month;


-- Q75 | Perspective: Time Trends and Operational Planning | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank months by revenue and show cumulative share.
WITH monthly AS (SELECT invoice_month, SUM(line_revenue) AS revenue FROM online_retail_data WHERE invoice_month IS NOT NULL GROUP BY invoice_month), total AS (SELECT SUM(revenue) AS total_revenue FROM monthly) SELECT invoice_month, ROUND(revenue,2) AS revenue, RANK() OVER (ORDER BY revenue DESC) AS revenue_rank, ROUND(100.0*SUM(revenue) OVER (ORDER BY revenue DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)/(SELECT total_revenue FROM total),2) AS cumulative_revenue_pct FROM monthly ORDER BY revenue_rank;
