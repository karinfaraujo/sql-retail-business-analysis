-- =====================================
-- 01_setup.sql
-- Purpose: Create clean analytical table
-- Database: SQLite
-- =====================================

DROP TABLE IF EXISTS fact_sales;

CREATE TABLE fact_sales AS
SELECT
    InvoiceNo                          AS invoice_no,
    StockCode                          AS product_id,
    Description                        AS product_name,
    CustomerID                         AS customer_id,
    Country                            AS country,
    DATE(
        substr(InvoiceDate, 7, 4) || '-' ||
        substr(InvoiceDate, 1, 2) || '-' ||
        substr(InvoiceDate, 4, 2)
    )                                  AS invoice_date,
    CAST(strftime('%Y-%m', 
        DATE(
            substr(InvoiceDate, 7, 4) || '-' ||
            substr(InvoiceDate, 1, 2) || '-' ||
            substr(InvoiceDate, 4, 2)
        )
    ) AS TEXT)                         AS year_month,
    Quantity                           AS quantity,
    UnitPrice                          AS unit_price,
    Quantity * UnitPrice               AS revenue
FROM retail
WHERE
    InvoiceNo NOT LIKE 'C%'
    AND Quantity > 0
    AND UnitPrice > 0
    AND CustomerID IS NOT NULL;
