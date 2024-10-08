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

-- |: we can search for multiple words

