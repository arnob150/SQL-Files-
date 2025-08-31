select *
from employee_demographics
;
select gender, avg(age), max(age), min(age),count(age)
from employee_demographics
group by gender
;

select*
from employee_salary
;

select occupation, avg(salary), max(salary), count(salary)
from employee_salary
group by occupation
;

select employee_id, first_name, occupation, salary
from employee_salary
order by salary desc
;