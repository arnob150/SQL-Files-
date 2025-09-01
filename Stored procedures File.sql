select *
from employee_demographics
;
select *
from employee_salary
;

create procedure 5_higly_paid_employees()
select *
from employee_salary
order by salary desc
limit 5
;

call 5_higly_paid_employees()
;

DELIMITER $$
Create procedure aged_higly_paid_employees()
Begin
select *
from employee_salary as sal
join employee_demographics as dem
on sal.employee_id = dem.employee_id
where age > 45
order by salary desc
;
End $$
DELIMITER ;

Call aged_higly_paid_employees()
;

DELIMITER $$
create procedure highly_paid_employees(param_employee_id int)
Begin
select *
from employee_salary 
where employee_id = param_employee_id
;
End $$
DELIMITER ;

call highly_paid_employees(6)
;








