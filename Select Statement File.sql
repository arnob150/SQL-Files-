select *
from employee_demographics
;

select *
from employee_salary
;

select employee_id, first_name, last_name, age
from employee_demographics
;

select first_name, last_name, gender, age, (age-10)*2
from employee_demographics
;

select first_name, last_name, occupation, salary, salary*1.05
from employee_salary
;