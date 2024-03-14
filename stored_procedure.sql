use sales;

create table student(
id int,
student_code varchar(20),
fname varchar(20),
subjects varchar(20),
marks float );


insert into student values(1,"100","Neha","DS",45),(2,"102","Shree","ML",30),(3,"103","Sanvi","Numpy",50),(4,"104","Hitha","Pandas",70),(5,"105","Sukhi","EDA",75);


select * from student;

call ranked_students;

call ranked_students(70);

call get_student(3);

call top_marks(@output);

select @output;


set @output=103;

call display_marks(@output);

select @output;


select * from student;

desc student;

## indexes

create index idx_firstname
on student(fname);

select * from student where fname="Neha";

alter table student 
drop index idx_firstname;


## views

create view basic as 
select student_code,fname
from student;


select * from basic;









