-- For serial 

-- CREATE TABLE person(
-- id SERIAL PRIMARY KEY,
-- name VARCHAR (50),
-- age INT
-- )
-- INSERT INTO person(name,age) 
-- VALUES ('Raju',17),
-- ('Alex',18),
-- ('Eva',20)




-- How to add or remove a column 
SELECT * FROM employees
-- add
ALTER TABLE employees
ADD COLUMN city VARCHAR (100)

-- remove
ALTER TABLE employees
DROP COLUMN city 




-- How to rename column and table name:
SELECT * FROM persons
-- column
ALTER TABLE person
RENAME COLUMN name TO full_name

-- table
ALTER TABLE person RENAME TO persons




-- How to modify column data :
ALTER TABLE persons
ALTER COLUMN full_name
SET DATA TYPE VARCHAR (100)


