SELECT
*
FROM customer
ORDER BY address_id ;


SELECT
first_name,last_name,email,address_id
FROM
customer
ORDER BY address_id;


SELECT
title,replacement_cost,rating,length
FROM film
ORDER BY length DESC;

SELECT
title,rental_rate,rating
FROM film
WHERE length BETWEEN 1 AND 100
AND rental_duration BETWEEN 1 AND 5
ORDER BY rental_duration,rental_rate DESC;

SELECT
title,rental_rate,rating
FROM film
WHERE rental_duration >=5
AND replacement_cost=10.99
ORDER BY length DESC;

SELECT
title,rental_rate,replacement_cost,rating
FROM film
WHERE rental_duration <=5
AND title LIKE 'A%'
ORDER BY rental_rate ;

SELECT
*
FROM film
WHERE length BETWEEN 1 AND 150
AND rental_rate NOT BETWEEN 0.99 AND 1.99

SELECT
title,replacement_cost,rating,rental_duration
FROM film
WHERE length NOT BETWEEN 1 AND 80
AND NOT (rental_rate BETWEEN 0.99 AND 1.99)
AND title LIKE 'B%'
ORDER BY rental_duration DESC;