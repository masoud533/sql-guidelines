select customer_id, first_name,
case
    when points between 300 and 2000 then 'Bronze'
    when points between 2000 and 3000 then 'Silver'
    when points > 3000 then 'Gold'
    else 'bad customer'
end as type
from customers;

-- The CASE statement goes through conditions and return a value when the first condition is met.
   -- So, once a condition is true, it will stop reading and return the result.

         -- If no conditions are true, it will return the value in the ELSE clause.