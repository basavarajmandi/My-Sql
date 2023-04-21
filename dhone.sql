create database dhoni;
create table six(matchs int auto_increment primary key,name varchar(50), place varchar(100), matchsdate date);
insert into six values(1, 'basu','bgk','2020-05-06');
insert into six values(3, 'rocks','benaglur','2019-01-03');
insert into six values(100, 'rocks','benaglur','2019-01-03');
insert into six(name,place,matchsdate)values('raju','gadag','2022-05-03');
insert into six(name,place,matchsdate)values('ponda','ilakal','2013-06-23');

select max(matchs)from six;
select min(matchs)from six;
select count(*) from six;




