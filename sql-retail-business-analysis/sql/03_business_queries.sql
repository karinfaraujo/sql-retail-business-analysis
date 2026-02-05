-- =====================================
-- 03_business_queries.sql
-- Purpose: Business analysis queries
-- =====================================

-- 1. Total Revenue
SELECT
    SUM(revenue) AS total_revenue
FROM fact_sales;

-- 2. Revenue by Month
SELECT
    year_month,
    SUM(revenue) AS monthly_revenue
FROM fact_sales
GROUP BY year_month
ORDER BY year_month;

-- 3. Revenue by Country
SELECT
    country,
    SUM(revenue) AS country_revenue
FROM fact_sales
GROUP BY country
ORDER BY country_revenue DESC;

-- 4. Top 10 Products by Revenue
SELECT
    product_name,
    SUM(revenue) AS product_revenue
FROM fact_sales
GROUP BY product_name
ORDER BY product_revenue DESC
LIMIT 10;

-- 5. Revenue vs Quantity (Scatter Plot)
SELECT
    product_name,
    SUM(quantity) AS total_quantity,
    SUM(revenue) AS total_revenue
FROM fact_sales
GROUP BY product_name;
