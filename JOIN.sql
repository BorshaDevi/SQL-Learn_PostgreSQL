-- cross join
SELECT * FROM customers CROSS JOIN customer

-- inner join
SELECT * FROM forder

SELECT
*
FROM customer AS c INNER JOIN forder AS f
ON c.customer_id=f.customer_id

-- left join
SELECT 
*
FROM orders
SELECT 
*
FROM sales s LEFT JOIN orders o ON s.id = o.order_id 
-- right join
SELECT 
*
FROM sales s RIGHT JOIN orders o ON s.id = o.order_id 
SELECT 
*
FROM orders o  RIGHT JOIN sales s  ON s.id = o.order_id