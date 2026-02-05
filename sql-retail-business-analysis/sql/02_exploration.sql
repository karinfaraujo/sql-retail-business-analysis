-- =====================================
-- 02_exploration.sql
-- Purpose: Data understanding & validation
-- =====================================

-- Row count
SELECT COUNT(*) AS total_rows
FROM fact_sales;

-- Date range
SELECT
    MIN(invoice_date) AS min_date,
    MAX(invoice_date) AS max_date
FROM fact_sales;

-- Revenue sanity check
SELECT
    SUM(revenue) AS total_revenue
FROM fact_sales;

-- Countries overview
SELECT
    country,
    COUNT(*) AS transactions
FROM fact_sales
GROUP BY country
ORDER BY transactions DESC;

-- Products overview
SELECT
    COUNT(DISTINCT product_id) AS total_products
FROM fact_sales;
