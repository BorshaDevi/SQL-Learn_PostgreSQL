-- INNER JOIN
SELECT
*
FROM actor AS a INNER JOIN film_actor AS f USING (actor_id)
ORDER BY
a.first_name || '' || a.last_name

SELECT
a.first_name|| '' || a.last_name,COUNT(f.film_id)
FROM actor AS a INNER JOIN film_actor AS f USING (actor_id)
GROUP BY
a.first_name|| '' || a.last_name
ORDER BY
a.first_name|| '' || a.last_name

SELECT 
*
FROM film_actor INNER JOIN film ON film.film_id = film_actor.film_id
ORDER BY
film.film_id

SELECT 
*
FROM film_actor
ORDER BY
film_id

-- ch-1
SELECT 
* 
FROM orders o INNER JOIN customer c ON o.order_id=c.customer_id
SELECT * FROM orders

-- ch-2
SELECT 
*
FROM customer c RIGHT JOIN orders o ON c.customer_id = o.order_id
WHERE c.customer_id IS null

SELECT * FROM customer
SELECT * FROM orders

-- ch-3
SELECT 
o.order_id,c.customer_email 
FROM orders o LEFT JOIN customer c ON o.order_id = c.customer_id 

-- ch-4
SELECT
c.customer_id,
SUM(p.amount) total_sum
FROM customer c LEFT JOIN  payment p ON c.customer_id =p.customer_id
GROUP BY
c.customer_id 
ORDER BY
c.customer_id 

-- ch-5
SELECT * FROM payment

SELECT 
c.first_name ||'  '|| c.last_name AS customer_name,
SUM (p.amount) total_sum
FROM customer c LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY
c.customer_id
ORDER BY
SUM (p.amount) DESC

-- ch-6
SELECT
c.first_name ||'  '|| c.last_name AS customer_name,
SUM(p.amount) total_sum
FROM customer c LEFT JOIN payment p  USING (customer_id)
GROUP BY
customer_id
HAVING 
SUM(p.amount) >100

-- ch-7
SELECT * FROM sales
SELECT 
c.city,
COUNT(*)
FROM customers c LEFT JOIN employees e ON c.id = e.employees_id
GROUP BY
c.city

SELECT 
c.city,
COUNT(*)
FROM customers c LEFT JOIN sales s USING(id)
GROUP BY
c.city

