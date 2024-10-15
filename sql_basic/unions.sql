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

select
    customer_id,
    first_name,
    points,
    'bronze' as type
from customers
where points < 2000
union
select
    customer_id,
    first_name,
    points,
    'silver' as type
from customers
where points between 2000 and 3000
union
select
    customer_id,
    first_name,
    points,
    'gold' as type
from customers
where points > 3000
order by first_name;