-- Diversified Ecommerce Affordability and Service Risk Analytics
-- Full SQL file. Open the provided SQLite database first for all data.

CREATE VIEW IF NOT EXISTS v_category_pricing AS
SELECT category, AVG(final_price_with_tax) AS avg_final_price, COUNT(*) AS products
FROM diversified_ecommerce
GROUP BY category;

CREATE VIEW IF NOT EXISTS v_supplier_risk AS
SELECT supplier_id, COUNT(*) AS products, SUM(low_stock_flag) AS low_stock_products, SUM(estimated_stock_value) AS stock_value
FROM diversified_ecommerce
GROUP BY supplier_id;

CREATE VIEW IF NOT EXISTS v_demographic_coverage AS
SELECT customer_age_group, customer_gender, COUNT(*) AS records, AVG(final_price_with_tax) AS avg_final_price, AVG(return_rate) AS avg_return_rate
FROM diversified_ecommerce
GROUP BY customer_age_group, customer_gender;

CREATE VIEW IF NOT EXISTS v_service_risk AS
SELECT category, shipping_method, COUNT(*) AS products, AVG(return_rate) AS avg_return_rate, AVG(shipping_cost) AS avg_shipping_cost
FROM diversified_ecommerce
GROUP BY category, shipping_method;

CREATE VIEW IF NOT EXISTS v_popularity_planning AS
SELECT category, SUM(CASE WHEN seasonality='Yes' THEN 1 ELSE 0 END) AS seasonal_products, AVG(popularity_index) AS avg_popularity, AVG(stock_level) AS avg_stock
FROM diversified_ecommerce
GROUP BY category;

-- Q01 | Perspective: Affordability and Pricing | Difficulty: Easy | Concept: SELECT
-- Business question: What are the first 10 product records?
SELECT product_id, product_name, category, price, discount FROM diversified_ecommerce LIMIT 10;


-- Q02 | Perspective: Affordability and Pricing | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are priced below 50?
SELECT product_id, product_name, category, price FROM diversified_ecommerce WHERE price < 50 ORDER BY price LIMIT 20;


-- Q03 | Perspective: Affordability and Pricing | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have high discounts?
SELECT product_id, product_name, category, price, discount FROM diversified_ecommerce WHERE discount >= 20 ORDER BY discount DESC LIMIT 20;


-- Q04 | Perspective: Affordability and Pricing | Difficulty: Easy | Concept: SELECT
-- Business question: Which product categories exist?
SELECT DISTINCT category FROM diversified_ecommerce ORDER BY category;


-- Q05 | Perspective: Affordability and Pricing | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have final price above 1000?
SELECT product_id, product_name, category, final_price_with_tax FROM diversified_ecommerce WHERE final_price_with_tax > 1000 ORDER BY final_price_with_tax DESC LIMIT 20;


-- Q06 | Perspective: Affordability and Pricing | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have the highest average final price?
SELECT category, ROUND(AVG(final_price_with_tax),2) AS avg_final_price, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY avg_final_price DESC;


-- Q07 | Perspective: Affordability and Pricing | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have the most affordable products?
SELECT category, COUNT(*) AS affordable_products FROM diversified_ecommerce WHERE final_price_with_tax < 100 GROUP BY category ORDER BY affordable_products DESC;


-- Q08 | Perspective: Affordability and Pricing | Difficulty: Medium | Concept: GROUP BY
-- Business question: What is average discount by category?
SELECT category, ROUND(AVG(discount),2) AS avg_discount, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY avg_discount DESC;


-- Q09 | Perspective: Affordability and Pricing | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which customer age groups see highest average product price?
SELECT customer_age_group, ROUND(AVG(final_price_with_tax),2) AS avg_final_price, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_age_group ORDER BY avg_final_price DESC;


-- Q10 | Perspective: Affordability and Pricing | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have high tax burden?
SELECT category, ROUND(AVG(tax_rate),2) AS avg_tax_rate, ROUND(AVG(final_price_with_tax - discounted_price),2) AS avg_tax_value FROM diversified_ecommerce GROUP BY category ORDER BY avg_tax_rate DESC;


-- Q11 | Perspective: Affordability and Pricing | Difficulty: Difficult | Concept: CTE
-- Business question: Which categories are above the overall average final price?
WITH cat AS (SELECT category, AVG(final_price_with_tax) AS avg_price FROM diversified_ecommerce GROUP BY category), overall AS (SELECT AVG(final_price_with_tax) AS overall_avg FROM diversified_ecommerce) SELECT category, ROUND(avg_price,2) AS avg_price, ROUND(overall_avg,2) AS overall_avg FROM cat, overall WHERE avg_price > overall_avg ORDER BY avg_price DESC;


-- Q12 | Perspective: Affordability and Pricing | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank categories by average final price.
SELECT category, ROUND(AVG(final_price_with_tax),2) AS avg_final_price, RANK() OVER (ORDER BY AVG(final_price_with_tax) DESC) AS price_rank FROM diversified_ecommerce GROUP BY category ORDER BY price_rank;


-- Q13 | Perspective: Affordability and Pricing | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by price within category.
SELECT category, product_id, product_name, ROUND(final_price_with_tax,2) AS final_price, ROW_NUMBER() OVER (PARTITION BY category ORDER BY final_price_with_tax DESC) AS price_rank_in_category FROM diversified_ecommerce ORDER BY category, price_rank_in_category LIMIT 50;


-- Q14 | Perspective: Affordability and Pricing | Difficulty: Difficult | Concept: VIEW
-- Business question: Use pricing view to show category pricing.
SELECT category, ROUND(avg_final_price,2) AS avg_final_price, products FROM v_category_pricing ORDER BY avg_final_price DESC;


-- Q15 | Perspective: Affordability and Pricing | Difficulty: Difficult | Concept: CTE
-- Business question: Which expensive products also have low discounts?
WITH thresholds AS (SELECT AVG(final_price_with_tax) AS avg_price, AVG(discount) AS avg_discount FROM diversified_ecommerce) SELECT product_id, product_name, category, ROUND(final_price_with_tax,2) AS final_price, discount FROM diversified_ecommerce, thresholds WHERE final_price_with_tax > avg_price AND discount < avg_discount ORDER BY final_price DESC LIMIT 20;


-- Q16 | Perspective: Inventory and Supplier Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have low stock?
SELECT product_id, product_name, category, stock_level FROM diversified_ecommerce WHERE stock_level < 50 ORDER BY stock_level LIMIT 20;


-- Q17 | Perspective: Inventory and Supplier Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have very high stock?
SELECT product_id, product_name, category, stock_level FROM diversified_ecommerce WHERE stock_level > 400 ORDER BY stock_level DESC LIMIT 20;


-- Q18 | Perspective: Inventory and Supplier Risk | Difficulty: Easy | Concept: SELECT
-- Business question: Which suppliers appear in the data?
SELECT DISTINCT supplier_id FROM diversified_ecommerce ORDER BY supplier_id LIMIT 50;


-- Q19 | Perspective: Inventory and Supplier Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which suppliers provide electronics products?
SELECT supplier_id, product_id, product_name, category FROM diversified_ecommerce WHERE category = 'Electronics' LIMIT 20;


-- Q20 | Perspective: Inventory and Supplier Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which records have low stock and high popularity?
SELECT product_id, product_name, stock_level, popularity_index FROM diversified_ecommerce WHERE stock_level < 50 AND popularity_index > 70 ORDER BY popularity_index DESC LIMIT 20;


-- Q21 | Perspective: Inventory and Supplier Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which suppliers manage the most products?
SELECT supplier_id, COUNT(*) AS products FROM diversified_ecommerce GROUP BY supplier_id ORDER BY products DESC LIMIT 20;


-- Q22 | Perspective: Inventory and Supplier Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have the lowest average stock?
SELECT category, ROUND(AVG(stock_level),2) AS avg_stock, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY avg_stock ASC;


-- Q23 | Perspective: Inventory and Supplier Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which suppliers have the highest stock value?
SELECT supplier_id, ROUND(SUM(estimated_stock_value),2) AS stock_value, COUNT(*) AS products FROM diversified_ecommerce GROUP BY supplier_id ORDER BY stock_value DESC LIMIT 20;


-- Q24 | Perspective: Inventory and Supplier Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have the most low-stock products?
SELECT category, SUM(low_stock_flag) AS low_stock_products, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY low_stock_products DESC;


-- Q25 | Perspective: Inventory and Supplier Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which supplier-category combinations have high average popularity?
SELECT supplier_id, category, ROUND(AVG(popularity_index),2) AS avg_popularity, COUNT(*) AS products FROM diversified_ecommerce GROUP BY supplier_id, category HAVING products >= 2 ORDER BY avg_popularity DESC LIMIT 20;


-- Q26 | Perspective: Inventory and Supplier Risk | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank suppliers by stock value.
SELECT supplier_id, ROUND(SUM(estimated_stock_value),2) AS stock_value, RANK() OVER (ORDER BY SUM(estimated_stock_value) DESC) AS supplier_rank FROM diversified_ecommerce GROUP BY supplier_id ORDER BY supplier_rank LIMIT 20;


-- Q27 | Perspective: Inventory and Supplier Risk | Difficulty: Difficult | Concept: CTE
-- Business question: Which suppliers have above-average low-stock counts?
WITH s AS (SELECT supplier_id, SUM(low_stock_flag) AS low_stock_count FROM diversified_ecommerce GROUP BY supplier_id), a AS (SELECT AVG(low_stock_count) AS avg_low_stock FROM s) SELECT supplier_id, low_stock_count, ROUND(avg_low_stock,2) AS avg_low_stock FROM s, a WHERE low_stock_count > avg_low_stock ORDER BY low_stock_count DESC LIMIT 20;


-- Q28 | Perspective: Inventory and Supplier Risk | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by stock level within category.
SELECT category, product_id, product_name, stock_level, ROW_NUMBER() OVER (PARTITION BY category ORDER BY stock_level ASC) AS low_stock_rank FROM diversified_ecommerce ORDER BY category, low_stock_rank LIMIT 50;


-- Q29 | Perspective: Inventory and Supplier Risk | Difficulty: Difficult | Concept: VIEW
-- Business question: Use supplier risk view to show supplier inventory risk.
SELECT supplier_id, products, low_stock_products, ROUND(stock_value,2) AS stock_value FROM v_supplier_risk ORDER BY low_stock_products DESC, stock_value DESC LIMIT 20;


-- Q30 | Perspective: Inventory and Supplier Risk | Difficulty: Difficult | Concept: CTE
-- Business question: Which categories combine high popularity and low stock?
WITH cat AS (SELECT category, AVG(popularity_index) AS avg_pop, AVG(stock_level) AS avg_stock FROM diversified_ecommerce GROUP BY category) SELECT category, ROUND(avg_pop,2) AS avg_popularity, ROUND(avg_stock,2) AS avg_stock FROM cat WHERE avg_pop > (SELECT AVG(avg_pop) FROM cat) AND avg_stock < (SELECT AVG(avg_stock) FROM cat) ORDER BY avg_popularity DESC;


-- Q31 | Perspective: Customer Demographic and Location Coverage | Difficulty: Easy | Concept: SELECT
-- Business question: Which customer locations appear?
SELECT DISTINCT customer_location FROM diversified_ecommerce ORDER BY customer_location LIMIT 50;


-- Q32 | Perspective: Customer Demographic and Location Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which records are linked to UK customers?
SELECT product_id, category, customer_location, customer_age_group, customer_gender FROM diversified_ecommerce WHERE customer_location LIKE '%UK%' LIMIT 20;


-- Q33 | Perspective: Customer Demographic and Location Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which records relate to age group 25-34?
SELECT product_id, category, customer_age_group, customer_gender FROM diversified_ecommerce WHERE customer_age_group = '25-34' LIMIT 20;


-- Q34 | Perspective: Customer Demographic and Location Coverage | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are linked to female customers?
SELECT product_id, product_name, category, customer_gender FROM diversified_ecommerce WHERE customer_gender = 'Female' LIMIT 20;


-- Q35 | Perspective: Customer Demographic and Location Coverage | Difficulty: Easy | Concept: SELECT
-- Business question: Which gender groups appear?
SELECT DISTINCT customer_gender FROM diversified_ecommerce ORDER BY customer_gender;


-- Q36 | Perspective: Customer Demographic and Location Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which customer locations have the most product records?
SELECT customer_location, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_location ORDER BY records DESC LIMIT 20;


-- Q37 | Perspective: Customer Demographic and Location Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: What is average final price by age group?
SELECT customer_age_group, ROUND(AVG(final_price_with_tax),2) AS avg_final_price, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_age_group ORDER BY avg_final_price DESC;


-- Q38 | Perspective: Customer Demographic and Location Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which gender groups have highest average popularity?
SELECT customer_gender, ROUND(AVG(popularity_index),2) AS avg_popularity, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_gender ORDER BY avg_popularity DESC;


-- Q39 | Perspective: Customer Demographic and Location Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which age-category combinations are most common?
SELECT customer_age_group, category, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_age_group, category ORDER BY records DESC LIMIT 20;


-- Q40 | Perspective: Customer Demographic and Location Coverage | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which locations have the highest average shipping cost?
SELECT customer_location, ROUND(AVG(shipping_cost),2) AS avg_shipping_cost, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_location ORDER BY avg_shipping_cost DESC LIMIT 20;


-- Q41 | Perspective: Customer Demographic and Location Coverage | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank categories within each age group by popularity.
WITH x AS (SELECT customer_age_group, category, AVG(popularity_index) AS avg_pop FROM diversified_ecommerce GROUP BY customer_age_group, category) SELECT customer_age_group, category, ROUND(avg_pop,2) AS avg_popularity, ROW_NUMBER() OVER (PARTITION BY customer_age_group ORDER BY avg_pop DESC) AS category_rank FROM x ORDER BY customer_age_group, category_rank;


-- Q42 | Perspective: Customer Demographic and Location Coverage | Difficulty: Difficult | Concept: CTE
-- Business question: Which locations have above-average shipping cost?
WITH loc AS (SELECT customer_location, AVG(shipping_cost) AS avg_ship FROM diversified_ecommerce GROUP BY customer_location), overall AS (SELECT AVG(shipping_cost) AS overall_ship FROM diversified_ecommerce) SELECT customer_location, ROUND(avg_ship,2) AS avg_shipping_cost, ROUND(overall_ship,2) AS overall_avg FROM loc, overall WHERE avg_ship > overall_ship ORDER BY avg_ship DESC;


-- Q43 | Perspective: Customer Demographic and Location Coverage | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank locations by product record volume.
SELECT customer_location, COUNT(*) AS records, RANK() OVER (ORDER BY COUNT(*) DESC) AS location_rank FROM diversified_ecommerce GROUP BY customer_location ORDER BY location_rank LIMIT 20;


-- Q44 | Perspective: Customer Demographic and Location Coverage | Difficulty: Difficult | Concept: VIEW
-- Business question: Use demographic view to inspect customer group coverage.
SELECT customer_age_group, customer_gender, records, ROUND(avg_final_price,2) AS avg_final_price FROM v_demographic_coverage ORDER BY records DESC LIMIT 20;


-- Q45 | Perspective: Customer Demographic and Location Coverage | Difficulty: Difficult | Concept: CTE
-- Business question: Which demographic groups have high price and high return rate?
WITH demo AS (SELECT customer_age_group, customer_gender, AVG(final_price_with_tax) AS avg_price, AVG(return_rate) AS avg_return FROM diversified_ecommerce GROUP BY customer_age_group, customer_gender) SELECT customer_age_group, customer_gender, ROUND(avg_price,2) AS avg_price, ROUND(avg_return,2) AS avg_return_rate FROM demo WHERE avg_price > (SELECT AVG(avg_price) FROM demo) AND avg_return > (SELECT AVG(avg_return) FROM demo) ORDER BY avg_price DESC;


-- Q46 | Perspective: Shipping, Returns and Service Risk | Difficulty: Easy | Concept: SELECT
-- Business question: Which shipping methods appear?
SELECT DISTINCT shipping_method FROM diversified_ecommerce ORDER BY shipping_method;


-- Q47 | Perspective: Shipping, Returns and Service Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have high return rate?
SELECT product_id, product_name, category, return_rate FROM diversified_ecommerce WHERE return_rate >= 10 ORDER BY return_rate DESC LIMIT 20;


-- Q48 | Perspective: Shipping, Returns and Service Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which products use overnight shipping?
SELECT product_id, product_name, category, shipping_method, shipping_cost FROM diversified_ecommerce WHERE shipping_method = 'Overnight' LIMIT 20;


-- Q49 | Perspective: Shipping, Returns and Service Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have expensive shipping?
SELECT product_id, product_name, shipping_method, shipping_cost FROM diversified_ecommerce WHERE shipping_cost > 40 ORDER BY shipping_cost DESC LIMIT 20;


-- Q50 | Perspective: Shipping, Returns and Service Risk | Difficulty: Easy | Concept: WHERE
-- Business question: Which records combine high return and high shipping cost?
SELECT product_id, product_name, return_rate, shipping_cost FROM diversified_ecommerce WHERE return_rate >= 10 AND shipping_cost > 30 ORDER BY return_rate DESC LIMIT 20;


-- Q51 | Perspective: Shipping, Returns and Service Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which shipping method has highest average cost?
SELECT shipping_method, ROUND(AVG(shipping_cost),2) AS avg_shipping_cost, COUNT(*) AS records FROM diversified_ecommerce GROUP BY shipping_method ORDER BY avg_shipping_cost DESC;


-- Q52 | Perspective: Shipping, Returns and Service Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have highest average return rate?
SELECT category, ROUND(AVG(return_rate),2) AS avg_return_rate, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY avg_return_rate DESC;


-- Q53 | Perspective: Shipping, Returns and Service Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which shipping methods have highest return rate?
SELECT shipping_method, ROUND(AVG(return_rate),2) AS avg_return_rate, COUNT(*) AS records FROM diversified_ecommerce GROUP BY shipping_method ORDER BY avg_return_rate DESC;


-- Q54 | Perspective: Shipping, Returns and Service Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have most high-return products?
SELECT category, SUM(high_return_flag) AS high_return_products, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY high_return_products DESC;


-- Q55 | Perspective: Shipping, Returns and Service Risk | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which location-shipping combinations are most expensive?
SELECT customer_location, shipping_method, ROUND(AVG(shipping_cost),2) AS avg_shipping_cost, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_location, shipping_method ORDER BY avg_shipping_cost DESC LIMIT 20;


-- Q56 | Perspective: Shipping, Returns and Service Risk | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank categories by average return rate.
SELECT category, ROUND(AVG(return_rate),2) AS avg_return_rate, RANK() OVER (ORDER BY AVG(return_rate) DESC) AS return_rank FROM diversified_ecommerce GROUP BY category ORDER BY return_rank;


-- Q57 | Perspective: Shipping, Returns and Service Risk | Difficulty: Difficult | Concept: CTE
-- Business question: Which shipping methods are above average cost and return rate?
WITH ship AS (SELECT shipping_method, AVG(shipping_cost) AS avg_ship, AVG(return_rate) AS avg_return FROM diversified_ecommerce GROUP BY shipping_method) SELECT shipping_method, ROUND(avg_ship,2) AS avg_shipping_cost, ROUND(avg_return,2) AS avg_return_rate FROM ship WHERE avg_ship > (SELECT AVG(avg_ship) FROM ship) AND avg_return > (SELECT AVG(avg_return) FROM ship);


-- Q58 | Perspective: Shipping, Returns and Service Risk | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by return rate within category.
SELECT category, product_id, product_name, return_rate, ROW_NUMBER() OVER (PARTITION BY category ORDER BY return_rate DESC) AS return_rank_in_category FROM diversified_ecommerce ORDER BY category, return_rank_in_category LIMIT 50;


-- Q59 | Perspective: Shipping, Returns and Service Risk | Difficulty: Difficult | Concept: VIEW
-- Business question: Use service risk view to identify risky groups.
SELECT category, shipping_method, products, ROUND(avg_return_rate,2) AS avg_return_rate, ROUND(avg_shipping_cost,2) AS avg_shipping_cost FROM v_service_risk ORDER BY avg_return_rate DESC, avg_shipping_cost DESC LIMIT 20;


-- Q60 | Perspective: Shipping, Returns and Service Risk | Difficulty: Difficult | Concept: CTE
-- Business question: Which categories combine high return rate and high stock value?
WITH cat AS (SELECT category, AVG(return_rate) AS avg_return, SUM(estimated_stock_value) AS stock_value FROM diversified_ecommerce GROUP BY category) SELECT category, ROUND(avg_return,2) AS avg_return_rate, ROUND(stock_value,2) AS stock_value FROM cat WHERE avg_return > (SELECT AVG(avg_return) FROM cat) AND stock_value > (SELECT AVG(stock_value) FROM cat) ORDER BY stock_value DESC;


-- Q61 | Perspective: Popularity, Seasonality and Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are seasonal?
SELECT product_id, product_name, category, seasonality FROM diversified_ecommerce WHERE seasonality = 'Yes' LIMIT 20;


-- Q62 | Perspective: Popularity, Seasonality and Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are highly popular?
SELECT product_id, product_name, category, popularity_index FROM diversified_ecommerce WHERE popularity_index >= 80 ORDER BY popularity_index DESC LIMIT 20;


-- Q63 | Perspective: Popularity, Seasonality and Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which products are non-seasonal and popular?
SELECT product_id, product_name, category, seasonality, popularity_index FROM diversified_ecommerce WHERE seasonality = 'No' AND popularity_index >= 70 ORDER BY popularity_index DESC LIMIT 20;


-- Q64 | Perspective: Popularity, Seasonality and Planning | Difficulty: Easy | Concept: SELECT
-- Business question: Which seasonality values exist?
SELECT DISTINCT seasonality FROM diversified_ecommerce ORDER BY seasonality;


-- Q65 | Perspective: Popularity, Seasonality and Planning | Difficulty: Easy | Concept: WHERE
-- Business question: Which products have low popularity?
SELECT product_id, product_name, category, popularity_index FROM diversified_ecommerce WHERE popularity_index < 30 ORDER BY popularity_index LIMIT 20;


-- Q66 | Perspective: Popularity, Seasonality and Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have highest average popularity?
SELECT category, ROUND(AVG(popularity_index),2) AS avg_popularity, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY avg_popularity DESC;


-- Q67 | Perspective: Popularity, Seasonality and Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: How many seasonal products are in each category?
SELECT category, SUM(CASE WHEN seasonality = 'Yes' THEN 1 ELSE 0 END) AS seasonal_products, COUNT(*) AS products FROM diversified_ecommerce GROUP BY category ORDER BY seasonal_products DESC;


-- Q68 | Perspective: Popularity, Seasonality and Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which age groups have highest average popularity?
SELECT customer_age_group, ROUND(AVG(popularity_index),2) AS avg_popularity, COUNT(*) AS records FROM diversified_ecommerce GROUP BY customer_age_group ORDER BY avg_popularity DESC;


-- Q69 | Perspective: Popularity, Seasonality and Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which categories have high popularity and low stock?
SELECT category, ROUND(AVG(popularity_index),2) AS avg_popularity, ROUND(AVG(stock_level),2) AS avg_stock FROM diversified_ecommerce GROUP BY category HAVING avg_popularity > 60 AND avg_stock < 250 ORDER BY avg_popularity DESC;


-- Q70 | Perspective: Popularity, Seasonality and Planning | Difficulty: Medium | Concept: GROUP BY
-- Business question: Which shipping methods are linked to popular products?
SELECT shipping_method, ROUND(AVG(popularity_index),2) AS avg_popularity, COUNT(*) AS records FROM diversified_ecommerce GROUP BY shipping_method ORDER BY avg_popularity DESC;


-- Q71 | Perspective: Popularity, Seasonality and Planning | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank categories by average popularity.
SELECT category, ROUND(AVG(popularity_index),2) AS avg_popularity, RANK() OVER (ORDER BY AVG(popularity_index) DESC) AS popularity_rank FROM diversified_ecommerce GROUP BY category ORDER BY popularity_rank;


-- Q72 | Perspective: Popularity, Seasonality and Planning | Difficulty: Difficult | Concept: CTE
-- Business question: Which categories are above average popularity but below average stock?
WITH cat AS (SELECT category, AVG(popularity_index) AS avg_pop, AVG(stock_level) AS avg_stock FROM diversified_ecommerce GROUP BY category) SELECT category, ROUND(avg_pop,2) AS avg_popularity, ROUND(avg_stock,2) AS avg_stock FROM cat WHERE avg_pop > (SELECT AVG(avg_pop) FROM cat) AND avg_stock < (SELECT AVG(avg_stock) FROM cat) ORDER BY avg_pop DESC;


-- Q73 | Perspective: Popularity, Seasonality and Planning | Difficulty: Difficult | Concept: Window Function
-- Business question: Rank products by popularity within each shipping method.
SELECT shipping_method, product_id, product_name, popularity_index, ROW_NUMBER() OVER (PARTITION BY shipping_method ORDER BY popularity_index DESC) AS popularity_rank_in_method FROM diversified_ecommerce ORDER BY shipping_method, popularity_rank_in_method LIMIT 50;


-- Q74 | Perspective: Popularity, Seasonality and Planning | Difficulty: Difficult | Concept: VIEW
-- Business question: Use popularity planning view for top categories.
SELECT category, seasonal_products, ROUND(avg_popularity,2) AS avg_popularity, ROUND(avg_stock,2) AS avg_stock FROM v_popularity_planning ORDER BY avg_popularity DESC;


-- Q75 | Perspective: Popularity, Seasonality and Planning | Difficulty: Difficult | Concept: CTE
-- Business question: Which seasonal categories have high popularity and high return rate?
WITH cat AS (SELECT category, AVG(popularity_index) AS avg_pop, AVG(return_rate) AS avg_return, SUM(CASE WHEN seasonality='Yes' THEN 1 ELSE 0 END) AS seasonal_count FROM diversified_ecommerce GROUP BY category) SELECT category, seasonal_count, ROUND(avg_pop,2) AS avg_popularity, ROUND(avg_return,2) AS avg_return_rate FROM cat WHERE seasonal_count > 0 AND avg_pop > (SELECT AVG(avg_pop) FROM cat) AND avg_return > (SELECT AVG(avg_return) FROM cat) ORDER BY avg_pop DESC;
