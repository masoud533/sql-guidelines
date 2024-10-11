SELECT *
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id;