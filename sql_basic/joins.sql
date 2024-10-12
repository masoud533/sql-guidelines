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