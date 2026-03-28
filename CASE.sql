SELECT * FROM employees

SELECT department, salary,
 CASE WHEN salary >=25000 THEN 'HIGH SALARY'
 ELSE 'LOW SALARY'
 END AS salary_cat FROM employees

SELECT department, salary,
 CASE WHEN salary >=25000 THEN 'HIGH SALARY'
 ELSE 'LOW SALARY'
 END AS salary_cat FROM employees
 ORDER BY salary DESC



SELECT 
CASE WHEN salary>= 25000 THEN 'HIGH salary'
ELSE 'LOW salary'
END AS salary_cat,
COUNT(*)
FROM employees
GROUP BY
CASE WHEN salary>= 25000 THEN 'HIGH salary'
ELSE 'LOW salary'
END 


 
SELECT department, salary,
CASE WHEN  salary >0 THEN ROUND((salary * 0.10))
END AS BOUNS FROM employees

ALTER TABLE employees 
ADD salary_cat INTEGER

ALTER TABLE employees
ALTER COLUMN salary_cat
SET DATA TYPE VARCHAR(50)

UPDATE employees
SET salary_cat=CASE WHEN salary>= 25000 THEN 'HIGH salary'
ELSE 'LOW salary'
END

SELECT * FROM employees
SELECT * FROM students

ALTER TABLE employees
RENAME customer_id TO employees_id

-- ch-1
SELECT 
department,salary,
CASE WHEN salary >=50000 THEN  'High'
WHEN salary >=30000 THEN 'Medium'
ELSE 'Low'
END AS salary_range
FROM employees
ORDER BY salary DESC


-- CH-2
-- Q: total employees high salary (≥ 50000) low salary (< 50000 )
SELECT 
COUNT(*),
SUM( CASE WHEN salary >= 50000 THEN 1 ELSE 0 END) HIGH ,
SUM( CASE WHEN salary < 50000 THEN 1 ELSE 0 END ) LOW
FROM employees

-- CH-3
-- Q:bonus : ≥ 50000 → 20%  ≥ 30000 → 10% else → 5%
SELECT 
department,salary,
CASE WHEN salary >= 50000 THEN ROUND((salary * 0.20))
WHEN salary >= 30000 THEN ROUND((salary * 0.10))
ELSE ROUND((salary * 0.05))
END AS bouns
FROM employees

-- ch-4
-- Q : salary category: ≥ 50000 → 'Senior' ≥ 30000 → 'Mid' else → 'Junior'

SELECT 
CASE WHEN salary>=50000 THEN 'SENIOR'
WHEN salary >=30000 THEN 'MID'
ELSE 'JUNIOR'
END AS salary_category,
COUNT(*) AS total_employees
FROM employees
GROUP BY
CASE WHEN salary >= 50000 THEN 'SENIOR'
WHEN salary >= 30000 THEN 'MID'
ELSE 'JUNIOR'
END

-- ch-5
ALTER TABLE employees 
ADD COLUMN status VARCHAR (50)

UPDATE employees
SET status = CASE WHEN salary >= 40000 THEN 'Promoted'
ELSE 'Normal' END

-- ch-6
SELECT 
CASE WHEN marks >=80 THEN 'A'
WHEN marks >=70 THEN 'B'
WHEN marks >=60 THEN 'C'
ELSE 'FAIL'
END AS grade,
COUNT(*)
FROM students
GROUP BY
CASE WHEN marks>=80 THEN 'A'
WHEN marks>=70 THEN 'B'
WHEN marks>=60 THEN 'C'
ELSE 'FAIL'
END

SELECT * FROM employees
-- ch-7
SELECT 
salary,
CASE WHEN salary >=50000 THEN (salary * 0.15)
WHEN salary >= 30000 THEN (salary * 0.10)
ELSE (salary * 0.05)
END AS tax_amount
FROM employees
-- ch-8
SELECT * FROM students
-- INSERT INTO students(id,class,marks)
-- VALUES (11,'C',30),(12,'C',30)
SELECT 
CASE WHEN marks >=40 THEN 'pass'
ELSE 'Fail'
END AS result,COUNT(*) as total_students
FROM students
GROUP BY 
CASE WHEN marks >=40 THEN 'pass'
ELSE 'Fail'
END
-- ch-9
SELECT 
employees_id,salary,
CASE WHEN salary >=50000 THEN 'HIGH'
WHEN salary >=30000 THEN 'MEDIUM'
ELSE 'LOW'
END AS salary_position
FROM employees
ORDER BY 
CASE WHEN salary >=50000 THEN 3
WHEN salary >=30000 THEN 2
ELSE 1
END


-- ch-10
SELECT * FROM employees

-- SELECT 
-- AVG(CASE WHEN salary >=50000 THEN salary END ) AS HIGH_SALARY,
-- AVG(CASE WHEN salary<50000 THEN salary END) AS LOW_SALARY
-- FROM employees
-- GROUP BY 
-- CASE WHEN salary >=50000 THEN 'HIGH'
-- ELSE 'LOW'
-- END

SELECT
CASE WHEN salary >= 50000 THEN 'HIGH'
ELSE 'LOW'
END AS salary_range
, AVG(salary) AS avg_salary
FROM employees
GROUP BY
CASE WHEN salary >= 50000 THEN 'HIGH'
ELSE 'LOW'
END

-- ch-11
SELECT 
salary,
CASE WHEN salary >=30000 THEN 'has Bonus'
ELSE 'No Bonus'
END AS bonus_status
FROM employees

-- CH-12
SELECT * FROM students

ALTER TABLE students
ADD COLUMN result VARCHAR (50)
UPDATE students
SET result = CASE WHEN marks >=40 THEN 'PASS'
ELSE 'FAIL'
END

-- CH-13

-- SELECT 
-- CASE WHEN marks>=80 THEN 'A' 
--   WHEN marks >=70 THEN 'B' 
--   WHEN marks >=60 THEN 'C' 
--   ELSE 'FAIL' 
-- END AS students_result ,
-- COUNT(*) AS total_students
-- FROM students
-- GROUP BY
-- CASE WHEN marks>=80 THEN 'A' 
--   WHEN marks >=70 THEN 'B' 
--   WHEN marks >=60 THEN 'C' 
--   ELSE 'FAIL' 
-- END 

SELECT 
COUNT(*) AS total,
COUNT(CASE WHEN marks >=80 THEN 1 END ) AS A,
COUNT(CASE WHEN marks >=70 AND marks<80 THEN 1 END ) AS B,
COUNT(CASE WHEN marks >=60 AND marks<70 THEN 1 END ) AS C,
COUNT(CASE WHEN marks <60 THEN 1 END ) AS FAIL
FROM students

-- ch-14
SELECT * FROM employees

SELECT 
ROUND(AVG(CASE WHEN salary >=50000 THEN salary END),2) AS HIGH_AVG,
ROUND(AVG(CASE WHEN salary < 50000 THEN salary END),2) AS LOW_AVG,
COUNT(*) AS total_employees
FROM employees

-- CH-15
SELECT * FROM students

SELECT 
CASE WHEN marks>=80 THEN 'Excellent'
WHEN marks>=60 THEN 'GOOD'
WHEN marks>=40 THEN 'Average'
ELSE 'FAIL'
END AS per_cate,
COUNT(*) AS total_perCate_students
FROM students
GROUP BY
CASE WHEN marks>=80 THEN 'Excellent'
WHEN marks>=60 THEN 'GOOD'
WHEN marks>=40 THEN 'Average'
ELSE 'FAIL'
END

-- CH-16
SELECT * FROM orders

SELECT
SUM(CASE WHEN amount >=500 THEN amount END) AS big_sale,
SUM(CASE WHEN amount <500 THEN amount END) AS small_sale,
SUM(amount) AS total_sale
FROM orders

-- ch-17
SELECT * FROM employees

SELECT employees_id,department, salary
FROM employees
ORDER BY
  CASE WHEN salary>=50000 THEN 1
  ELSE 2
END,
salary DESC

-- ch-18
SELECT * FROM students
ALTER TABLE students 
ADD COLUMN attendance INTEGER

UPDATE students
SET attendance = CASE WHEN marks>=80 THEN 75
WHEN marks>=70 THEN 70
WHEN marks>=60 THEN 65
WHEN marks>=50 THEN 60
ELSE 50
END

SELECT 
COUNT(CASE WHEN marks>=80 AND attendance >=75 THEN 1 END ) AS EXCELLENT,
COUNT (CASE WHEN marks>=60 AND NOT (marks>=80 AND attendance >=75) THEN 1 END ) AS GOOD,
COUNT (CASE WHEN marks< 60 THEN 1 END ) AS POOR
FROM students
-- GROUP BY
-- CASE WHEN marks>=80 AND attendance >=75 THEN 'Excellent'
-- WHEN marks >=60 THEN 'GOOD'
-- ELSE 'POOR'
-- END
COUNT(*) AS count_students

-- ch- 19
SELECT 
salary,

CASE WHEN salary>= 50000 THEN ROUND(salary * 0.20)
WHEN salary>= 30000 THEN ROUND(salary * 0.10)
ELSE ROUND(salary * 0.05)
END AS bonus,

CASE WHEN salary>= 50000 THEN 'Senior'
WHEN salary>= 30000 THEN 'Mid'
ELSE 'Junior'
END AS status
FROM employees
ORDER BY 
bonus DESC

-- ch - 20
SELECT * FROM employees
SELECT 
COUNT(*) total_employees,
ROUND(AVG(salary)) avg_salary,
ROUND(AVG(CA))
FROM employees

