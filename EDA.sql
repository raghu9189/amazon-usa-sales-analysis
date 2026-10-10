-- Exploratory Data Analysis
USE amazon_db;
-- 1. Basic Counts
-- Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;
-- Total number of sellers
SELECT COUNT(*) AS total_sellers
FROM sellers;
-- Total number of products
SELECT COUNT(*) AS total_products
FROM products;
-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;
-- 2. Checking for Null Values or Data Quality Issues
-- Check for orders without a customer or seller
SELECT COUNT(*) AS missing_customer_or_seller
FROM orders
WHERE customer_id IS NULL
    OR seller_id IS NULL;