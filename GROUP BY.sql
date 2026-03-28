SELECT
district,COUNT(address)
FROM address 
GROUP BY
district


SELECT
district,COUNT(city_id)
FROM
address
GROUP BY
district 

SELECT
customer_id
FROM payment
GROUP BY customer_id

SELECT
customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC

SELECT 
customer_id,staff_id,SUM(amount)
FROM payment
GROUP BY customer_id,staff_id
ORDER BY SUM(amount)

SELECT 
customer_id,COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id 

SELECT 
customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC

SELECT 
customer_id,ROUND(AVG(amount),2)
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC

SELECT
customer_id,MAX(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id

SELECT
customer_id ,MIN(amount) 
FROM payment
GROUP BY customer_id 
ORDER BY customer_id

SELECT district,COUNT(address)
FROM address
GROUP BY district
ORDER BY district


SELECT 
customer_id,SUM(amount)
FROM payment
WHERE EXTRACT(DAY FROM payment_date )=17 
GROUP BY customer_id

SELECT 
customer_id,staff_id,SUM(amount)
FROM payment
WHERE EXTRACT(DAY FROM payment_date )=17 
GROUP BY customer_id,staff_id

SELECT DATE(payment_date),COUNT(DATE(payment_date))
FROM payment
GROUP BY DATE(payment_date)

SELECT DATE(payment_date),COUNT(amount),SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY COUNT(amount) DESC


-- ch-1
SELECT 
staff_id,COUNT(amount)
FROM payment
GROUP BY staff_id
SELECT 
staff_id,SUM(amount)
FROM payment
GROUP BY staff_id

-- ch-2
SELECT 
payment_id,amount,payment_date
FROM payment
WHERE DATE(payment_date)='2007-02-16'