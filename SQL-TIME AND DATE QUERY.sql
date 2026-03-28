SELECT 
return_date 
FROM rental
WHERE EXTRACT(MONTH FROM return_date)=6
AND EXTRACT(DAY FROM return_date)=16;
SELECT
return_date AT TIME ZONE 'Asia/Dhaka'
FROM rental
WHERE EXTRACT (MONTH FROM return_date)=6
AND EXTRACT (DAY FROM return_date)=16
SELECT
return_date
FROM rental 
WHERE return_date BETWEEN '2005-05-28 6:00:00'
AND '2005-05-28 6:59:00'

