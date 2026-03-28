SELECT 
first_name,last_name,email
FROM customer

SELECT
payment_id,customer_id,amount
FROM payment
WHERE amount > 6

SELECT
first_name,last_name,email
FROM customer 
ORDER BY last_name ASC 
LIMIT 5

SELECT 
store_id,customer_id,last_update
FROM customer
WHERE EXTRACT(YEAR FROM last_update ) = 2013

SELECT 
first_name,last_name,email
FROM customer
WHERE  email LIKE '%gmail%'

SELECT 
payment_id,customer_id,amount
FROM payment
WHERE amount BETWEEN 50 AND 100