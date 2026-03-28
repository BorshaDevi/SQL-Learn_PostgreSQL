SELECT 
country
FROM country
WHERE country ILIKE 'a%';

SELECT
address2
FROM address
WHERE address2 IS NULL;

SELECT
address
FROM address
WHERE address ILike '%h%' 
SELECT
first_name
FROM actor
WHERE first_name IN ('Gary','Mary','Tom')

SELECT * 
FROM film
WHERE rental_rate = 4.99
AND rating='R'
AND replacement_cost >= 19.99
AND replacement_cost != 23.99
AND length BETWEEN 49 AND 100
AND rental_duration IN (4)
-- AND title ILIKE 'S%'

SELECT 
*
FROM film
WHERE title ILIKE 'c%'
AND rental_duration >=4
AND rating='G'
AND rental_rate=4.99

SELECT 
*
FROM film
WHERE title ILIKE 'a%'
AND length >=100
AND rental_rate !=0.99
AND rental_duration <=4

SELECT
*
FROM film
WHERE fiLm_id BETWEEN 1 AND 200
AND title LIKE 'A%'
AND special_features IN ('{"Trailers","Deleted Scenes"}','{"Trailers","Behind the Scenes"}')
AND rating ='PG-13' 
AND length<=100
AND rental_rate !=0.99

SELECT 
COUNT(*)
FROM film
WHERE title LIKE 'B%'
AND film_id BETWEEN 1 AND 100
AND rental_duration >=5
AND replacement_cost <=15.99
AND rental_rate != 0.99
AND special_features
IN('{"Trailers","Commentaries"}','{Trailers,Commentaries,"Deleted Scenes"}','{Commentaries,"Behind the Scenes"}')

-- CH-1
SELECT
title,replacement_cost 
FROM film
WHERE release_year>2000
AND rating='PG-13'

-- CH-2
SELECT
title
FROM film
WHERE rating ='PG' AND replacement_cost =10.99

-- CH-3
SELECT 
title
FROM film
WHERE release_year<2000 or replacement_cost < 10

SELECT
*
FROM payment
WHERE amount NOT BETWEEN 0 AND 5

SELECT 
* 
FROM payment
WHERE payment_date BETWEEN '2007-02-5' AND '2007-02-20'
ORDER BY payment_date DESC

SELECT
*
FROM customer
WHERE first_name IN('Jamie','Clara')

SELECT 
*
FROM payment
WHERE amount IN (0.99,1.99)

SELECT 
*
FROM customer
WHERE first_name LIKE 'J%o%' AND last_name LIKE '%er%'

SELECT 
*
FROM customer
WHERE first_name LIKE 'Jo%'

SELECT 
*
FROM customer
WHERE first_name LIKE 'J%er%'

SELECT 
*
FROM customer
WHERE last_name LIKE 'St%'

SELECT 
*
FROM customer
WHERE first_name LIKE 'Be%'

SELECT 
*
FROM customer
WHERE first_name LIKE '_er%' AND last_name LIKE '%s'

SELECT 
*
FROM customer
WHERE first_name NOT LIKE '_er%'

SELECT 
*
FROM customer
WHERE first_name NOT LIKE '_ar_' AND last_name NOT LIKE '_e%' 

