-- List top 5 employees by salary;
select employee.id, firstname, lastname, s.amount
from employee
         join salary s on employee.salary_id = s.id
group by employee.id, firstname, lastname, s.amount
order by s.amount desc
limit 5;

-- List 10 most experienced employees;
select id, firstname, lastname, experience
from employee
order by experience desc
limit 10;

-- List most wanted technology ;
select employee.technology_id, t.name
from employee
         inner join technology t on employee.technology_id = t.id
group by employee.technology_id, t.name
order by technology_id desc;

-- List all technologies by employees which not junior and based on exp greater than 4 years.
select t.name, employee.username, employee.experience, l.name
from employee
         inner join position p on employee.position_id = p.id
         inner join technology t on employee.technology_id = t.id
         inner join level l on p.level_id = l.id
where l.name != 'junior'
  and employee.experience > 4

