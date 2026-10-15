# 🛒 Amazon USA Sales Analysis Project

![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Advanced-brightgreen?style=for-the-badge)

**Difficulty Level:** Advanced

## 📋 Project Overview

I have worked on analyzing a dataset of over 22,000 sales records from an Amazon-like e-commerce platform. This project involves extensive querying of customer behavior, product performance, and sales trends using MySQL. Through this project, I have tackled various SQL problems, including revenue analysis, customer segmentation, and inventory management.

The project also focuses on data cleaning, handling null values, and solving real-world business problems using structured queries.

**Current Status:** I am currently working on this project, actively writing queries and building solutions to resolve these business problems.

## 🗂️ Database Schema & ERD

An Entity-Relationship Diagram (ERD) is included to visually represent the database schema and the relationships between tables. 

![ERD Diagram](ERD.png)

The database `amazon_db` consists of the following tables:
- **category**: Product categories.
- **customers**: Customer details and geographical information.
- **sellers**: Seller information and origin.
- **products**: Product details, pricing, and cost of goods sold.
- **orders**: Order details, dates, and status.
- **order_items**: Specific products and quantities for each order.
- **payments**: Payment statuses and dates.
- **shipping**: Shipping and return dates, providers, and delivery status.
- **inventory**: Warehouse stock levels and restock dates.

## 🎯 Objective

The primary objective of this project is to showcase SQL proficiency through complex queries that address real-world e-commerce business challenges. The analysis covers various aspects of e-commerce operations, including:
- Customer behavior and retention
- Sales trends and forecasting
- Inventory management and stock alerts
- Payment success rates and shipping analysis
- Product performance and profit margins

## 🧹 Data Cleaning & Preprocessing

I cleaned the dataset by:
- **Removing duplicates**: Duplicates in the customer and order tables were identified and removed.
- **Handling missing values**: Null values in critical fields were carefully handled:
  - **Customer addresses**: Missing addresses were assigned default placeholder values ('XXXX').
  - **Payment statuses**: Orders with null payment statuses were categorized as “Pending.”
  - **Shipping information**: Null return dates were left as is, as not all shipments are returned.

## 📂 Project Structure

- `Analysis.sql`: In-depth business analysis and complex SQL queries addressing real-world e-commerce challenges.
- `schemas.sql`: DDL scripts for database creation, table definitions, primary keys, and foreign key constraints.
- `EDA.sql`: Exploratory data analysis queries for data verification, record counts, and null value checks.
- `Problem Statements.sql`: Complete compilation of 22 business problems and analytical challenges.
- `ERD.png`: Entity-Relationship Diagram depicting the database architecture and relational schema.
- `datasets/`: Raw and supplementary CSV datasets (customers, sellers, orders, order items, products, payments, shipping, inventory).

## 💼 Business Problems Solved

Here are some of the key business problems and questions answered using advanced SQL queries:

1. **Top Selling Products**: Queried the top 10 products by total sales value, including product name, quantity sold, and total sales.
2. **Revenue by Category**: Calculated the total revenue and percentage contribution of each product category.
3. **Average Order Value (AOV)**: Computed the AOV for customers with more than 5 orders.
4. **Monthly Sales Trend**: Analyzed the monthly total sales over the past year, comparing current and previous months using `LAG()`.
5. **Customers with No Purchases**: Identified customers who registered but never placed an order using `LEFT JOIN` / subqueries.
6. **Least-Selling Categories by State**: Found the least-selling product category for each state using window ranking (`RANK()`).
7. **Customer Lifetime Value (CLTV)**: Calculated the total value of orders placed by each customer and ranked them using `DENSE_RANK()`.
8. **Inventory Stock Alerts**: Highlighted products with stock levels below 10 units, including warehouse and restock info.
9. **Shipping Delays**: Identified orders with shipping delays exceeding 3 days and their delivery providers using `DATEDIFF()`.
10. **Payment Success Rate**: Calculated the percentage of successful payments and breakdown by payment status.
11. **Top Performing Sellers**: Found the top 5 sellers based on total sales and analyzed their successful order rates.
12. **Product Profit Margin**: Calculated total profit and profit margin percentage `((Price - COGS) / Price * 100)` for each product and ranked them.
13. **Most Returned Products**: Queried the top 10 products by return rate percentage of total units sold.
14. **Inactive Sellers**: Identified sellers who haven’t made any sales in the last 6 months, including their last sale date and total sales.
15. **Customer Classification (Returning vs. New)**: Categorized customers into 'Returning' or 'New' based on return thresholds (more than 5 returns categorized as returning), displaying total orders and returns.
16. **Top 5 Customers by Orders in Each State**: Identified the top 5 customers with the highest number of orders for each state using window ranking (`DENSE_RANK()`), displaying total orders and total sales.
17. **Revenue by Shipping Provider**: Calculated the total revenue handled by each shipping provider, along with the total number of orders handled and average delivery turnaround time using `DATEDIFF()` and `COALESCE()`.
18. **Top Decreasing Revenue Products (YoY)**: Identified the top 10 products with the highest decreasing revenue ratio comparing last year (2025) and current year (2026) using Common Table Expressions (CTEs) and year-over-year revenue difference calculations.

## 💡 Learning Outcomes

This project enabled me to:
- Design and implement a normalized database schema with relational integrity.
- Clean and preprocess real-world datasets for analysis.
- Use advanced SQL techniques, including **window functions** (`DENSE_RANK()`, `RANK()`, `LAG()`), **CTEs (Common Table Expressions)**, **subqueries**, and **complex multi-table joins**.
- Apply conditional logic (`CASE WHEN`) and date manipulations (`DATEDIFF()`, `INTERVAL`, `YEAR()`).
- Conduct Year-over-Year (YoY) revenue trend and growth/decline comparative analyses.
- Conduct in-depth business analysis and data modeling using SQL.
- Optimize query performance and handle large datasets efficiently.

## 🚀 Conclusion

This advanced SQL project successfully demonstrates my ability to solve real-world e-commerce problems using structured queries. From improving customer retention to optimizing inventory and logistics, the project provides valuable insights into operational challenges and solutions.

By completing this project, I have gained a deeper understanding of how SQL can be used to tackle complex data problems and drive business decision-making.
