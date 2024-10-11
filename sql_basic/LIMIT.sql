SELECT *
FROM customers
LIMIT 3;

SELECT *
FROM customers
LIMIT 6, 3;
-- 6 IS WHAT WE CALL AN OFFSET
-- and that basically tells MySQL to skip the first records and then
-- pic 3 records

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;