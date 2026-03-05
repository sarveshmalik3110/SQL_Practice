-- Window Function Example

SELECT order_id,
       SUM(quantity * selling_price) AS total_amount,
       RANK() OVER (ORDER BY SUM(quantity * selling_price) DESC) AS revenue_rank
FROM order_items
GROUP BY order_id;