create database company;
use company;
create table employe(
emp_id int not null primary key auto_increment,
first_name varchar (25),
last_name varchar(25),
salary int(15),
joining_date datetime,
department_name varchar (25)
);
desc employe;

create table bonus(
emp_ref_id int,
bonus_amt int,
bonus_date datetime,
foreign key(emp_ref_id) references employe(emp_id)
on delete cascade 
);

create table designation(
emp_ref_id int,
designation varchar (25),
designation_date datetime,
foreign key(emp_ref_id) references employe(emp_id)
on delete cascade
);

insert into employe values
(0001,'Krish','Naik',50000,'14-12-11 09.00.00','Development'),
(0002,'Sudhanshu','Kumar',60000,'14-12-11 09.00.00','Development'),
(0003,'Sanket','Kumar',70000,'15-12-11 09.00.00','hr'),
(0004,'Darius','Bengali',70000,'15-12-11 09.00.00','hr'),
(0005,'Satish','Bhansal',30000,'17-12-11 09.00.00','acoountant'),
(0006,'Shaktiman','Hero',50000,'17-12-11 09.00.00','accountant');

select * from employe;

insert into bonus values
(0001,5000,'16-03-14'),
(0002,5000,'16-03-13'),
(0003,5000,'17-03-15'),
(0001,5000,'18-03-17'),
(0004,3500,'16-03-19'),
(0005,7000,'16-03-20'),
(0001,8000,'20-03-21'),
(0002,8000,'20-03-21');

select * from bonus;

insert into designation values
(0001,'manager','2016-02-5 00:00:00' ),
(0003,'executive','2016-06-11 00:00:00'),
(0003,'executive','2016-06-11 00:00:00');

select * from designation;
select * from bonus;
select * from employe;

select * from employe
where salary between 10000 and 35000;

select concat(x.first_name,'',x.last_name) as employee_name , x.salary
from 
(select  * from employe) x
where x.salary between 10000 and 35000;

select * from employe where month(joining_date)=12 and year(joining_date)=2014;


select count(emp_id),department_name from employe 
group by department_name;

select * from employe e
inner join designation d on e.emp_id=d.emp_ref_id
where d.designation='executive';

select * from employe order by salary desc limit 3,1;
select * from(
select *,
row_number() over (order by salary desc) as rn
from employe) x
where x.rn=4