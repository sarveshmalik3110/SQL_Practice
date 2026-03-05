-- Subquery Example

-- Customers who never ordered
SELECT * FROM customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM orders
);

-- Products not ordered
SELECT * FROM products
WHERE product_id NOT IN (
    SELECT product_id FROM order_items
);