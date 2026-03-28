CREATE TABLE employees
(
customer_id INT NOT NULL PRIMARY KEY,
department VARCHAR ,
salary  INT
)

INSERT INTO employees
VALUES 
(1,'IT',30000),(2,'IT',35000),(3,'IT',50000),
(4,'IT',15000),(5,'UI/UX',15000),(6,'UI/UX',18000),(7,'UI/UX',16000),
(8,'Finence',35000),(9,'Finence',40000),(10,'Finence',30000),
(11,'Finence',25000),(12,'Finence',15000),(13,'UI/UX',15000)

SELECT 
*
FROM employees

UPDATE employees
SET department ='IT'
WHERE customer_id = 13