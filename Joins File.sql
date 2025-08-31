select*
from employee_demographics
;
select *
from employee_salary
;
select *
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

select dem.employee_id, dem.first_name, age, gender, occupation, salary
from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id =sal.employee_id
;

select sal1.employee_id as emp1, sal1.first_name as f_n1, sal1.occupation as occ1, sal1.salary as salary1, sal2.employee_id as emp2, sal2.first_name as f_n2, sal2.occupation as occ2, sal2.salary as salary2
from employee_salary as sal1
join employee_salary as sal2
on sal1.employee_id +1 =sal2.employee_id
;

select *
from parks_departments
;

select sal.employee_id, sal.first_name, age, gender,occupation, salary, dept_id, department_name
from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id
join parks_departments as pd
on sal.dept_id = pd.department_id
where pd.department_id = 6
;




