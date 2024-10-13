SELECT *
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id;

-- alias
SELECT *
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- joinin across database
SELECT *
FROM order_items oi
JOIN sql_inventory.products p
    ON oi.product_id = p.product_id;

-- SELF JOINS
USE sql_hr;
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    m.first_name as manager_name,
    m.last_name as manager_lastName
FROM employees e -- e as a shortcut for employees
JOIN employees m -- m as a shortcut for manager
    ON e.reports_to = m.employee_id;

-- joining multiple tables
USE sql_store;

SELECT
    o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_statuses os
    ON o.status = os.order_status_id;

-- exercise
use sql_invoicing;

SELECT
    c.name as clients_name,
    c.city as clients_city,
    p.date as payment_date,
    p.invoice_id as invoice_id,
    p.amount as pyment_amount,
    pm.name as payment_method
FROM payments p
JOIN clients c
    ON p.client_id = c.client_id
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id;

-- compound join conditions
USE sql_store;

SELECT *
FROM order_items oi
JOIN order_item_notes oin
    ON oi.order_id = oin.order_Id
    and oi.product_id = oin.product_id;

-- Implpicit join Syntax
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

SELECT
    p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
    ON p.product_id = oi.product_id;

-- using or USING
SELECT
    o.order_id,
    c.first_name,
    sh.name as shipper
FROM orders o
JOIN customers c
    USING (customer_id)   -- ON o.customer_id = c.customer_id
    -- These two ways are the same
JOIN shippers sh
    USING (shipper_id);
-- the using keywords only works if the column name is exactly
-- the same across different tables

select *
from order_items oi
join order_item_notes oin
    using (order_id, product_id)