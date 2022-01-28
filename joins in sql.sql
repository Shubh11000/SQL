show databases;
use ineuron;
show tables;
select * from student;
drop table student;

create database imdb;
use imdb;
show tables;
create table m_cast(
index_1 varchar(1),
mid varchar(255),
pid varchar(255),
id varchar(1));
show tables;
use neuro;
show tables;
select dept_id, count(*) from employee
group by dept_id;

select dept_id, count(*) from employee
group by dept_id order by dept_id asc;

select dept_id, count(*) from employee
group by dept_id order by dept_id asc limit 2;

select count(*) from employee where manager_id = 'm1';

select dept_id, count(*) from employee
group by dept_id having count(dept_id)=2;
select * from employee;
select concat(emp_name, ' ',  dept_id) from employee;

select substr(emp_name,3,3) from employee;

select character_length(emp_name) as char_length from employee;

select character_length(emp_name) as char_length, emp_name  from employee;

select mid(emp_name,3,2) from employee;

create table transaction_details(
prod_name varchar(50),
prod_id int not null,
order_date datetime,
amount int);

select * from transaction_details;


INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select datediff(sysdate(), order_date) as datediff_today,prod_name, prod_id, order_date from transaction_details;

select date_format(order_date, '%m') from transaction_details;

select day('2022-01-24');

select adddate('2022-01-24', interval 4 day);

select adddate('2022-01-24', interval -10 day);

select * from employee where emp_name like 'a%';

select * from employee where emp_name regexp '^a';

select * from employee; 

select * from student;


select substr(name,1,1) from student where dcode= 'ymt';

select left(name ,1) from student where dcode='ymt';

select character_length(name) from student;

select substr(name,1,char_length(name)-1) from student;

select name from student where name like '%e%';
select name from student where name regexp '[e]';




