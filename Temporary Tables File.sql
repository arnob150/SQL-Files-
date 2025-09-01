
create temporary table arnob_table
(first_name varchar(50), last_name varchar(50), favourite_movie varchar(50) )
;

select *
from arnob_table
;

insert into arnob_table
values ('Arnob', 'Roy', 'Harry Potter and the Deathly Hallows Part 2'), ('Tonusree', 'Saha', 'Jurassic World Fallen Kingdom'), 
('Anuvob', 'Roy', 'Stree 2'), ('Shuvam', 'Roy', 'Ludo') 
;

select *
from arnob_table
;

select *
from employee_salary
;

Create temporary table Top_5_Highest_Paid_Employees
select *
from employee_salary
order by salary desc
limit 5
;

select *
from Top_5_Highest_Paid_Employees
;