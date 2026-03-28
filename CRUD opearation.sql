-- For table create

CREATE TABLE table_name(
Column_name  dataType,
Column_name  dataType,
Column_name  dataType
)

CREATE TABLE employees
(
customer_id INT NOT NULL PRIMARY KEY,
department VARCHAR ,
salary  INT
)


-- For data insert
INSERT INTO orders(order_id,customer_id,amount)
VALUES (2,102,500),(3,103,100),(4,104,150),(5,105,600)
INSERT INTO orders
VALUES (2,102,500),(3,103,100)

-- For data read
SELECT
*
FROM orders

--  For Update data
UPDATE orders
SET amount = 800
WHERE order_id=4

UPDATE orders
SET amount =400
WHERE order_id=3



-- FOR Delete data 
DELETE FROM orders
WHERE order_id=2

DELETE FROM orders
WHERE order_id=3
