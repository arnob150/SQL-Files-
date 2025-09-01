select *
from employee_demographics
;

select *
from employee_salary
;

select avg(avg_sal), avg(max_sal), avg(min_sal)
from
(select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as c_sal
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender) as avg_subquery
;

with CTE_Example as
(select gender, avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as c_sal
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender)
select avg(avg_sal), avg(max_sal), avg(min_sal)
from CTE_Example
;

with CTE_Example as
(select employee_id, first_name, age, gender
from employee_demographics
where age >= 35 and gender = 'Male'
),
CTE_Example2 as
(select employee_id, first_name, salary, dept_id
from employee_salary
where salary > 50000 and dept_id < 4
)
select *
from CTE_Example 
join CTE_Example2
on CTE_Example.employee_id = CTE_Example2.employee_id
;


