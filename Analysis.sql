-- ==========================================
-- Exploratory Data Analysis (EDA)
-- ==========================================

USE amazon_db;

-- 1. Basic Counts
-- Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Total number of sellers
SELECT COUNT(*) AS total_sellers FROM sellers;

-- Total number of products
SELECT COUNT(*) AS total_products FROM products;

-- Total number of orders
SELECT COUNT(*) AS total_orders FROM orders;


-- 2. Checking for Null Values or Data Quality Issues
-- Check for orders without a customer or seller
SELECT COUNT(*) AS missing_customer_or_seller
FROM orders 
WHERE customer_id IS NULL OR seller_id IS NULL;

-- Check for products without a category
SELECT COUNT(*) AS products_without_category
FROM products 
WHERE category_id IS NULL;


-- 3. Sales & Revenue Analysis
-- Total Revenue across all orders
SELECT 
    SUM(total_price) AS total_revenue 
FROM order_items;

-- Average Order Value (AOV)
SELECT 
    SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value 
FROM order_items;

-- Total quantity of items sold
SELECT 
    SUM(quantity) AS total_items_sold 
FROM order_items;


-- 4. Customer Insights
-- Top 5 states with the most customers
SELECT 
    state, 
    COUNT(customer_id) AS customer_count 
FROM customers 
GROUP BY state 
ORDER BY customer_count DESC 
LIMIT 5;

-- Top 5 customers by total spending
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(oi.total_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;


-- 5. Product Performance
-- Top 5 most expensive products
SELECT 
    product_name, 
    price 
FROM products 
ORDER BY price DESC 
LIMIT 5;

-- Top 5 best-selling products by quantity
SELECT 
    p.product_name, 
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- 6. Order Status Breakdown
-- Count of orders by status (e.g., Completed, Cancelled, Returned)
SELECT 
    order_status, 
    COUNT(*) AS order_count 
FROM orders 
GROUP BY order_status
ORDER BY order_count DESC;


-- 7. Payment Status Breakdown
-- Payment status distribution
SELECT 
    payment_status, 
    COUNT(*) AS payment_count
FROM payments
GROUP BY payment_status
ORDER BY payment_count DESC;


-- 8. Shipping & Delivery
-- Shipping status distribution
SELECT 
    delivery_status, 
    COUNT(*) AS delivery_count
FROM shipping
GROUP BY delivery_status
ORDER BY delivery_count DESC;
