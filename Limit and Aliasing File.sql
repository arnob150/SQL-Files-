select *
from employee_demographics
;

select*
from employee_demographics
order by birth_date desc
limit 5
;

select *
from employee_demographics
order by age 
limit 3,2
;

select *
from employee_salary
;

select occupation, avg(salary) as avg_sal
from employee_salary
where occupation like '%Director%'
group by occupation
having avg_sal >= 65000
;