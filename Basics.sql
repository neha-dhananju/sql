create database ineuron;

use ineuron;

create table employee(emp_id int,
fname varchar(50),
lname varchar(50),
dob date,
hire_date date,
position varchar(30),
salary float);

select * from employee;

insert into employee values(1,"neha","d","2002-09-12","2024-05-19","data_scientist",200000.0);

insert into employee values(2,"amogha","d","2005-07-29","2024-05-21","data_analyst",400000.0);

insert into employee values(3,"preethi"," ","1985-03-24","2024-05-24","software_engineer",900000.0);

select fname,lname,salary from employee;

select emp_id,fname,lname,salary from employee where salary >210000.0;

select * from employee where salary>210000.0;

select * from employee order by lname asc;

SET SQL_SAFE_UPDATES=0;

update employee set salary=300000.0 where fname='neha';

select * from employee;

alter table employee add dept varchar(20);

delete from  employee where emp_id=1;

update employee set dept='eng' where fname='amogha';

update employee set dept='eng' where fname='preethi';










