create database joiin;

create table courseDetail(
seNo int primary key,
 course varchar(500),
 feculty varchar(600)
 );
insert into  courseDetail values(1,'phy','basu');
 insert into  courseDetail values(2,'che','rocks');
 insert into  courseDetail values(3,'m2','hari');
 
 select* from courseDetail;
 
 create table students(id int primary key, name varchar(200),age int,fecultyid int ,foreign key(fecultyid) references courseDetail(seNo));
 insert into students values(12,'hari',25,1);
 insert into students values(13,'kicha',26,2);
 insert into students values(14,'dk',27,1);

 select* from  students left join courseDetail on fecultyid=coursedetail.seNO;
 
 select name ,feculty from students left join courseDetail on fecultyid=coursedetail.seNO;
 