-- HAVING with GROUP BY

SELECT order_id,
       SUM(quantity * selling_price) AS total_amount
FROM order_items
GROUP BY order_id
HAVING total_amount >= 50000;