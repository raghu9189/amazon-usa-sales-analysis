CREATE DATABASE amazon_db;
USE amazon_db;
-- parent table
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(30)
);
-- parent table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    state VARCHAR(50),
    address VARCHAR(255) DEFAULT ('XXXX')
);
-- parent table
CREATE TABLE sellers (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(50),
    origin VARCHAR(50)
);

CREATE TABLE products ( 
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    cogs DECIMAL(10, 2),
    category_id INT, -- FK
    CONSTRAINT products_fk_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);
 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT, -- FK
    seller_id INT, -- FK
    -- product_id INT, -- FK
    order_status VARCHAR(15),
    CONSTRAINT orders_fk_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    -- CONSTRAINT orders_fk_products FOREIGN KEY (product_id) REFERENCES products(product_id),
    CONSTRAINT orders_fk_sellers FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT, -- FK
    product_id INT, -- FK
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    total_price DECIMAL(10, 2),
    CONSTRAINT order_items_fk_orders FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT order_items_fk_products FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT, -- FK
    payment_date DATE,
    -- payment_mode VARCHAR(50),
    payment_status VARCHAR(50),
    CONSTRAINT payments_fk_orders FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT, -- FK
    shipping_date DATE,
    return_date DATE,
    shipping_providers VARCHAR(50),
    delivery_status VARCHAR(50),
    CONSTRAINT shipping_fk_orders FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT, -- FK
    stock INT,
    warehouse_id INT,
    last_stock_date DATE,
    CONSTRAINT inventory_fk_products FOREIGN KEY (product_id) REFERENCES products(product_id)
);
