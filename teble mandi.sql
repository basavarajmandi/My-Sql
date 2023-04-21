
create  database pramry;
create table  pkeys(age int ,name varchar(50), place varchar(30) primary key );
alter table pkeys drop primary key;

insert into pkeys values(60,'rocks','ilkal');
insert into pkeys values(45,'basu','bagalkote');
insert into pkeys values(45,'basu','bagalkote');
insert into pkeys values(45,'basu','bagalkote');

insert into pkeys values(40,'basu','bagalkote');
insert into pkeys values(41,'raju','rjajinagar');
insert into pkeys values(41,'raju','rjajinagar');
insert into pkeys values(41,'raju','rjajinagar');
select*from pramry.pkeys;


create database basu;
create table mandi(height int,name varchar(30)primary key,place varchar(60));
insert into mandi values(5.2,'beli','bgk');
insert into mandi values(3.5,'appu','navanagar');
insert into mandi values(3.6,'ramu','navanagar');
insert into mandi values(3.8,'jeo','navanagar');
insert into mandi values(4,'joye','boda');
SELECT * FROM pramry.pkeys1;

SELECT * FROM basu.mandi;
select count(*)from basu.mandi; 
select *from basu.mandi where place='navanagar';
select *from basu.mandi where height=5;
select *from basu.mandi where height=4 and place='navanagar';
select * from basu.mandi where height=5 or place='navanagar';

select distinct  name from mandi where height=5;
select distinct  name from mandi where place='boda';











 
