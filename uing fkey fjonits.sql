create database fjoints;

create table student (id int primary key, name varchar(500),place varchar(400));
insert into student values(1,'basu','bgk');
insert into student values(2,'raju','ilakal');
insert into student values(3,'mahi','bengalur');


create table courseName(cid int primary key ,CourseName varchar(600),durection varchar(600),did int, foreign key (did) references student(id));
insert into courseName values(1,'bcom','1year',1);
insert into courseName values(2,'mcom','2year',2);
insert into courseName values(3,'bsc','3year',3);