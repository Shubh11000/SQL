
-- before update trigger  we can set value as per our need at the time of update 
drop table staff;
create table if not exists staff(
id int not null,
name varchar(50),
wage decimal(6,2),
primary key (id));

insert into staff values(1,"Mike",5);
select * from staff;

DELIMITER //
create trigger bf_update  before update
on staff
for each row
begin 
if new.wage < 8 then 
    set new.wage=8;
end if;
end;

 update staff
 set wage=4 where id =1
 
-- after update trigger
drop table log
create table log(
name varchar(50),
wage decimal(6,2));

DELIMITER //
create trigger after_update  after update
on staff
for each row
begin 
insert into log values(old.name,old.wage);
end;
 
insert into staff values(23,"sddam",33);

update staff set wage=9
where id=1;

select * from staff;

select * from log;


-- before delete trigger - It does not allow to delete 

DELIMITER //
create trigger before_delete 
before delete
on staff 
for each row 
begin 
signal sqlstate "45000" set message_text = "not allowed";
end //


delete from staff 
 where id =1;
 
 select * from staff;
 
 -- after delete trigger -- It log the details of the user who delete or we can keep the deleted records for backup
 
 drop trigger before_delete;
 
 DELIMITER //
 create trigger after_delete 
 after delete
 on staff 
 for each row
 begin
insert into log values(old.name,old.wage);
end //

delete from staff 
 where id =1;
 select * from staff;
select * from log  
