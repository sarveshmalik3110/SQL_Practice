-- CASE Statement Example

SELECT product_name,
       price,
       CASE 
           WHEN price > 50000 THEN 'Premium'
           WHEN price BETWEEN 10000 AND 50000 THEN 'Mid-Range'
           ELSE 'Budget'
       END AS price_category
FROM products;