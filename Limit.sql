SELECT
payment_id,amount,payment_date
FROM payment
ORDER BY amount
LIMIT 30
OFFSET 24

SELECT 
title,rental_rate,special_features
FROM film 
WHERE rental_rate <=2.99
AND title LIKE 'B%'
ORDER BY rental_rate DESC
LIMIT 10
OFFSET 5


SELECT 
*
FROM payment
ORDER BY amount
LIMIT 10
OFFSET 24
