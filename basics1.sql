create database sales;
use sales;
create table customer(id int,
fname varchar(50),
lname varchar(50));
show tables;

insert into customer values(1,"Neha","D");
insert into customer values(2,"Sanvi","H R");
insert into customer values(3,"Hitha","K");
insert into customer values(4,"Shree"," B R");
insert into customer values(5,"Sukhi","D"),(6,"Sumangala","K");
select * from customer;
select  * from customer order by id;

select * from customer where lname="D" or lname="K";
SET SQL_SAFE_UPDATES=0;

delete from customer where id=1;

select * from customer;

insert into customer values(1,"Neha","D");

select * from customer order by id;

select fname,lname  from customer where fname="Neha" and lname="D";

drop table customer;



