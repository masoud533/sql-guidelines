-- This is the code archive for the 'WHERE' Guideline
use sql_store;

SELECT first_name,
       last_name,
       points + 10 AS point
FROM customers;


SELECT name,
       unit_price as "unit price",
       unit_price * 1.1 as "new price"
FROM products;

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';

-- WHERE: USED FOR CONDITION QUERY

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';



SELECT *
FROM customers
WHERE last_name LIKE '%b%';

SELECT *
FROM customers
WHERE last_name LIKE '_____y';

SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

-- % any number of characters
-- _ single character

SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR
      address LIKE '%AVENUE%';

SELECT *
FROM customers
WHERE phone NOT LIKE '%9';



-- REGEXP: SHORT FOR REGULAR EXPRESSION

SELECT *
FROM customers
WHERE last_name REGEXP 'FIELD';

-- ^: indicate the beginning of a string
SELECT *
FROM customers
WHERE last_name REGEXP '^field';

-- $: represent the end of a string
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

-- |: we can search for multiple words --> name is pipe
SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|rose';

-- []:
SELECT DISTINCT *
FROM customers
WHERE last_name REGEXP '[gim]e';
-- > that matches any customer who have 'ge','ie','me' in their last name

SELECT *
FROM customers
WHERE last_name REGEXP 'e[fmq]';
-- > we can use this pattern after char

SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e'; -- > It means that one of the a b c ... g h must be before e

-- > Search for null data in table
SELECT *
FROM customers
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE phone IS  NOT NULL;







