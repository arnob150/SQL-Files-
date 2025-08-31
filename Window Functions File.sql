select *
from employee_demographics
;
select *
from employee_salary
;

select gender, avg(salary)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by  gender
;

select dem.employee_id, dem.first_name, dem.last_name, gender, salary, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

select dem.employee_id, dem.first_name, dem.last_name, gender, salary, sum(salary) over(partition by gender order by employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

select sal.employee_id, sal.first_name, sal.last_name, gender, salary,
row_number() over (partition by gender order by salary desc) as row_num,
rank() over (partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;
