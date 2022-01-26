create database neuro;

use neuro;

create table employee(
emp_id varchar(20),
emp_name varchar(50),
salary int,
dept_id varchar(20),
manager_id varchar(20)
);

create table depa(
dept_id varchar(20),
dept_name varchar(20));

create table manager(
manager_id varchar(20),
manager_name varchar(50),
dept_id varchar(20)
);

insert into manager values('m1','prem','d3');
insert into manager values('m2','shripadh','d4');
insert into manager values('m3','nick','d1');
insert into manager values('m4','cory','d1');

create table project(
project_id varchar(20),
project_name varchar(100),
team_member_id varchar(20)
);

insert into project values('p1','data migration','e1');
insert into project values('p1','data migration','e2');
insert into project values('p1','data migration','m3');
insert into project values('p2','etl tool','e1');
insert into project values('p2','etl toll','m4');

select * from employee;
select * from depa;

insert into employee values ('e1','rahul',1500,'d1','m1');
insert into employee values ('e2','manoj',1500,'d1','m1');
insert into employee values ('e3','james',55000,'d2','m2');
insert into employee values ('e4','michael',25000,'d2','m2');
insert into employee values ('e5','ali',20000,'d10','m3');
insert into employee values ('e6','robin',35000,'d10','m3');

insert into depa values('d1','it');
insert into depa values('d2','hr');
insert into depa values('d3','finance');
insert into depa values('d4','admin');

select * from employee;
select * from depa;
select * from manager;
select * from project;

select e.emp_name, d.dept_name
from employee as e 
join depa as d on  e.dept_id=d.dept_id;

select e.emp_name, d.dept_name
from employee as e 
right join depa as d on  e.dept_id=d.dept_id;

select e.emp_name,d.dept_name,p.project_name
from employee as e
left join depa as d on e.dept_id=d.dept_id
join project as p on p.team_member_id = e.emp.id;


