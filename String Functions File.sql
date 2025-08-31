------ Length

select length('arnob')
;

select first_name, last_name, length(first_name), length(last_name)
from employee_demographics
;

------ Upper & Lower

select upper('Earth')
;
 
 select employee_id, first_name, last_name, upper(first_name), lower(last_name)
 from employee_salary
 ;
 
 ------ Trim
 
 select trim('    Waterfall    ')
 ;
 select rtrim('     Bangladesh    ')
 ;
 
 ----- Left, Right & Substring
 select *
 from employee_demographics
 ;
 
 select employee_id, first_name, last_name, left(first_name, 3), right(last_name, 4), birth_date, substring(birth_date, 6,2) as birth_month
 from employee_demographics
 ;
 
 ----- Replace
 
 select employee_id, first_name, replace(first_name, 'r', 'k')
 from employee_salary
 ;
 
 ----- Locate
 
select locate( 'n', 'Germany')
;

select first_name, locate('a', first_name)
from employee_demographics
;

----- Concat

select employee_id, first_name, last_name, concat(first_name," ", last_name) as Full_Name, concat(first_name, "." ,last_name, "@gmail.com") as Email
from employee_salary
;
 

