-- Aggregation with GROUP BY

SELECT order_id,
       SUM(quantity * selling_price) AS total_amount
FROM order_items
GROUP BY order_id;

SELECT category,
       COUNT(*) AS total_products
FROM products
GROUP BY category;