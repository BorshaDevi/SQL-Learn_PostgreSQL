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

