-- =============================================
-- Create Tables
-- =============================================

USE CRM;

-- CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    phone_no VARCHAR(10) UNIQUE,
    city VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(80) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    is_active TINYINT(1) DEFAULT 1
);

-- WAREHOUSE
CREATE TABLE warehouse (
    warehouse_id INT PRIMARY KEY,
    warehouse_city VARCHAR(100) NOT NULL,
    capacity INT CHECK (capacity >= 0)
);

-- INVENTORY
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity >= 0),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT uc_product_warehouse UNIQUE (product_id, warehouse_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);

-- ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    status ENUM('PLACED','SHIPPED','CANCEL','DELIVERED'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER ITEMS
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    selling_price DECIMAL(10,2) CHECK (selling_price > 0),

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);