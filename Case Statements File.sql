select *
from employee_demographics
;

select employee_id, first_name, last_name, gender, age,
case
when age < 35 then 'young'
when age between 35 and 60 then 'middle age'
when age > 60 then 'old'
end as age_braket
from employee_demographics
;

select *
from employee_salary
;

select employee_id, first_name, last_name, occupation, salary,
case
when salary <= 60000 then salary * 1.05
when salary > 60000 then salary * 1.07
end as new_salary,
case
when occupation like '%manager%' then salary * 0.10
when dept_id = 6 then salary * 0.10
end as bonus
from employee_salary
;
