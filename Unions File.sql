select *
from employee_demographics
;

select *
from employee_salary
;

select employee_id, first_name, last_name, 'young man' as label
from employee_demographics
where age < 35 and gender = 'male'
union
select employee_id, first_name, last_name, 'young lady' as label
from employee_demographics
where age < 35 and gender = 'female'
union
select employee_id, first_name, last_name,'higly paid employee' as label
from employee_salary
where salary >= 70000
order by first_name
;


