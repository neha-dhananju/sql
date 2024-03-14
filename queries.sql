use sales;

create table ai(
id int ,
tech varchar(20));

insert into ai values(1,"DS"),(1,"Tableu"),(1,"SQL"),(2,"R"),(2,"PowerBI"),(1,"Python");

select * from ai;

select id 
from ai 
where tech="DS"
and id in (
select id from ai where tech="Tableu" 
and id in (
select id from ai where tech="SQL"
and id in (
select id from ai where tech="Python")));

create table product(
p_id int,
p_name varchar(20));


create table plikes(
uid int,
p_id int,
liked_date date,
foreign key plikes(p_id) references product(p_id));


drop table product;

create table product(
p_id int,
p_name varchar(20),
primary key(p_id));

insert into product values(1001,"Blog"),(1002,"Youtube"),(1003,"Education");

insert into plikes values(1,1001,"2023-08-19"),(2,1002,"2023-01-18"),(3,1003,"2023-03-20"),(4,1001,"2023-10-13");


drop table plikes;

create table plikes(
uid int,
p_id int,
liked_date date,
foreign key plikes(p_id) references product(p_id));

insert into plikes values(1,1001,"2023-08-19"),(2,1003,"2023-01-18");



select * from product as p inner join plikes as pl
where   p.p_id = pl.p_id;


SELECT p.p_id
FROM product p
WHERE NOT EXISTS (
    SELECT 1
    FROM plikes pl
    WHERE pl.p_id = p.p_id
);

SELECT p.p_id
FROM product p
LEFT JOIN plikes pl ON p.p_id = pl.p_id
WHERE pl.p_id IS NULL;










