select
    order_id,
    order_date,
    'Active' as status
from orders
where order_date >= '2019-01-01'
union select
    order_id,
    order_date,
    'Archived' as status
from orders
where order_date < '2019-01-01';


select first_name
from customers
union -- > whith union we can combine result from multiple query's
select name
from shippers;

-- > warning : the number of columns that the etch query returns should be equal
  -- otherwise you're going to get an error