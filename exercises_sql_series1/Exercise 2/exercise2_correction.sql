select * from Departments;
select * from employees;

select lastname from employees;

select distinct lastname from employees;

select * from employees where lastname = 'Smith';

select * from employees where lastname = 'Smith' or lastname = 'Doe';

select * from employees where department = 14;

select * from employees where department in (37,77);
select * from employees where department = 37 or department = 77;

select * from employees where lastname like 'S%';

select sum(budget) from departments;

select department, count(*) as NUM_BY_DEPT from employees group by department;

select employees.name as EMP_NAME, lastname, budget, departments.name as DEPT_NAME from employees inner join departments on departments.code = employees.department;

select employees.name as EMP_NAME, lastname, budget from employees inner join departments on employees.department = departments.code where budget > 60000;
select employees.name as EMP_NAME, lastname, budget from employees inner join departments on employees.department = departments.code and budget > 60000;
select name, lastname from employees where department in (select code from departments where budget > 60000);

select name from departments where budget > (select avg(budget) from departments);

select name from departments where code in (select department from employees group by department having count(*) >2);
select departments.name from departments inner join employees on departments.code = employees.department group by departments.name having count(*)>2;

select employees.name, lastname from employees where department = (select sub.code from (select * from departments order by departments.budget limit 2)sub order by budget desc limit 1);

insert into departments values(11 , 'Quality Assurance' , 40000);
insert into employees values('847219811' , 'Mary' , 'Moore' , 11);

update departments set budget = budget * 0.9;

update employees set department = 14 where department = 77;

delete from employees where department = 14;

delete from employees where Department in (select code from departments where budget >= 60000);

delete from employees;