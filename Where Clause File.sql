select *
from employee_demographics
;

select *
from employee_demographics
where gender = 'Female'
and age <30
;

select *
from employee_salary
where first_name like '%s___%'
;

select *
from employee_salary
where dept_id = 1
or 
salary > 60000
;

