create database test1;

create table STUDENT(StdiD INT primary key,StdName varchar(30)not null,sex varchar(6) ,percentage int,Sclass int,section varchar(20), Stream varchar(10),dob date);
insert into STUDENT values (14,'basu','male',70,1,'Ab','science','1998-06-05');
insert into STUDENT values (15,'roks','male',70,1,'Abc','COmmerce','1999-06-05');
insert into STUDENT values (16,'hari','male',80,1,'Abcd','COmmerce','1985-06-05');
insert into STUDENT values (17,'abhi','male',85,1,'Abdc','science','1998-06-05');
insert into STUDENT values (18,'hami','male',77,1,'Abvf','COmmerce','1987-06-05');
insert into STUDENT values (19,'raj','male',76,1,'Abef','science','1995-06-05');
insert into STUDENT values (12,'avenash','male',78,1,'Abdc','science','1922-06-05');
insert into STUDENT values (20,'subak','female',90,1,'Abdc','COmmerce','1995-06-05');
insert into STUDENT values (21,'veeresh','male',50,1,'Abdef','science','1985-06-05');
insert into STUDENT values (22,'palavi','female',25,2,'Absde','science','1985-06-05');
insert into STUDENT values (23,'jeo','male',10,2,'Abfew','science','1962-06-05');
insert into STUDENT values (24,'pavan','male',50,3,'Abefe','COmmerce','2000-06-05');
insert into STUDENT values (25,'heena','female',21,5,'Abcef','COmmerce','2002-06-05');
insert into STUDENT values (26,'san','female',1,5,'Absef','COmmerce','2005-06-05');
insert into STUDENT values (27,'suma','female',99,1,'Absdfce','COmmerce','2009-06-05');
insert into STUDENT values (28,'veju','female',10,1,'Abdve','science','2010-06-05');
insert into STUDENT values (29,'pratap','male',36,1,'Abdvcef','COmmerce','2022-06-05');
insert into STUDENT values (30,'trupti','female',100,1,'Abfce','science','2020-06-05');
insert into STUDENT values (31,'army','male',98,1,'Abdfvef','COmmerce','2003-05-05');
insert into STUDENT values (32,'sunila','male',96,1,'Abdvev','COmmerce','2009-06-05');
insert into STUDENT values (33,'sunil','male',96,1,'Abdvev','COmmerce','2009-06-05');
insert into STUDENT values (34,'sunil','male',96,1,'Abdvev','COmmerce','2009-06-05',56);

insert into STUDENT values (35,'sun','male',96,1,'Abdvev','COmmerce','2009-06-05',null);

select * from test1.STUDENT;
select distinct StdName ,dob from STUDENT;
select *from STUDENT where percentage >=80 ;
select  StdName,Stream,percentage from STUDENT where  percentage>=80;
select StdName from STUDENT where Stream ='science' and percentage>75;
alter table  STUDENT add column age int ;
---- write query to rename age to columan to stdweight-- 
alter table STUDENT rename column age to stdweight;
---- write query to Stdweight to must be decimal farmat--  
alter table STUDENT modify stdweight float ; 
-- write a query to add and drop not null constrant to stdweight-- 
alter table STUDENT modify stdweight float not null;


-- write a query to select 1st record from table-- 
select *from  STUDENT where Stdid=14;


-- 19-7-2022 
 -- write a query to select everything exccept student percentage is less than 70 --
 select * from STUDENT where percentage<70;
 -- write a query to delete one record from table -- 
delete from STUDENT where Stdid=35;


-- w query to find min & max percentage --
select  max(percentage) from STUDENT;
select min(percentage) from  STUDENT;

-- write a query to find total number of students from table-- 
select count(*)from STUDENT; 

-- write a query to do find sum of all students--
select sum(percentage) from STUDENT;  


 

 
 
 
