create table customer(id int auto_increment,
fname varchar(50),
lname varchar(50),
salary int,
primary key(id)
);

describe customer;

insert into customer values(10,"Neha","D",20000);
insert into customer(fname,lname,salary) values("Sanvi","H R",30000);
insert into customer(fname,lname,salary) values("Hitha","K",35000);
insert into customer(fname,lname,salary) values("Shree"," B R",40000);
insert into customer(fname,lname,salary) values("Sukhi","D",45000),("Sumangala","K",50000);

select * from customer;
insert into customer(fname,lname,salary) values("Keerthi","S M",NULL);

## Update null values

select * from customer where salary is NULL;
update customer
set salary="55000"
where id=16;

select * from customer;

desc customer;

## Comstarint.  not null

alter table customer
modify column salary float not null;

desc customer;


## Constraint  Unique

create table emp(id int,
house_no int unique,
pancard_no int unique,
fname varchar(50),
lname varchar(50),
salary int not null,
primary key(id));

desc emp;

alter table emp
add constraint uc_emp unique(pancard_no,lname);

insert into emp(id,house_no,pancard_no,fname,lname,salary) values (1,1,1,"neha","d",20000);

insert into emp values(2,2,1,"amogha","D",30000);
insert into emp values(4,4,4,"sanvi","D",40000);
insert into emp values(3,3,3,"amogha","D",30000);

create table student(
id int auto_increment ,
fname varchar(20),
lname varchar(20),
primary key(id)
);


alter table student
add constraint uc_student unique(fname,lname);


insert into student(fname,lname) values("Neha","D");
insert into student(fname,lname) values("Neha","F");
insert into student(fname,lname) values("Neha","D");
insert into student(fname,lname) values("Amogha","D");

create table emp1(id int,
pan_no int,
fname varchar(20),
lanme varchar(20),
primary key(id));

alter table emp1
add constraint uc_emp1 unique(pan_no,fname);

insert into emp1(id,pan_no,fname,lanme) values (1,1,"neha","D");
insert into emp1(id,pan_no,fname,lanme) values (2,1,"amogha","D");
insert into emp1(id,pan_no,fname,lanme) values (3,1,"neha","R");
drop table emp1;
drop table student;


alter table emp
drop index uc_emp;

create table person(
id int auto_increment,
fname varchar(20),
lname varchar(20),
age int,
primary key(id));

desc person;

alter table person
drop primary key;

drop table person;
create table person(
id int,
fname varchar(20),
lname varchar(20),
age int,
primary key(id));

desc person;

alter table person
drop primary key;


## constraint primary key

alter table person
add constraint pk_person primary key(id,lname);

insert into person values(1,"neha","d",22);
insert into person values(1,"Sanvi","H",22);
insert into person values(2,"Shree","H",22);
insert into person values(2,"Neha","H",22);

desc person;

alter table person
drop primary key;

create table orders(
orderid int ,
orderno int not null,
id int,
primary key(orderid),
foreign key(id) references person(id));

desc person;

alter table person
add primary key(id);

drop table person;


