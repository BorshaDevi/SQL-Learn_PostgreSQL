SELECT 
customer_id,SUM(amount)
FROM payment
GROUP BY
customer_id
HAVING
SUM(amount)>100

SELECT
address_id,COUNT(address_id)
FROM customer
GROUP BY 
address_id
HAVING COUNT(address_id)=1
ORDER BY address_id DESC

SELECT
length,SUM(replacement_cost),COUNT(length)
FROM film
WHERE length>100
GROUP BY
length
ORDER BY length DESC

SELECT
rental_rate,COUNT(rental_rate)
FROM film
GROUP BY
rental_rate
HAVING COUNT(rental_rate)>330

-- CH-1
SELECT
customer_id,SUM(amount)
FROM payment
GROUP BY 
customer_id
HAVING SUM(amount) >200
ORDER BY SUM(amount) DESC

-- CH-2
SELECT 
district,COUNT(district)
FROM address
GROUP BY 
district
HAVING COUNT(district) >3
ORDER BY district DESC


-- CH-3
SELECT
department , COUNT(department)
FROM employees
GROUP BY 
department
HAVING 
COUNT(department) >3

-- ch-4
SELECT
customer_id,SUM(amount)
FROM orders
GROUP BY 
customer_id
HAVING 
SUM(amount)> 500

-- CH-5
SELECT
product_id,SUM (quantity)
FROM sales
GROUP BY
product_id
HAVING 
SUM (quantity) > 100

-- CH-6
SELECT
class,ROUND(AVG(marks),2)
FROM students
GROUP BY 
class
HAVING
AVG(marks)> 70

-- CH-7
SELECT
city , COUNT(city)
FROM customers
GROUP BY
city
HAVING 
COUNT(city) > 5

