-- CTE Example (MySQL 8+)

WITH order_totals AS (
    SELECT order_id,
           SUM(quantity * selling_price) AS total_amount
    FROM order_items
    GROUP BY order_id
)
SELECT * FROM order_totals
WHERE total_amount > 30000;