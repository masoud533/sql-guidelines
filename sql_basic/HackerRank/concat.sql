select concat(name, '(', left(occupation, 1), ')') as m
from OCCUPATIONS
order by m;
SELECT CONCAT('There are a total of ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;
