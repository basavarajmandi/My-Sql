-- create database brand;
use brand;
create table temp( location varchar(500), place varchar(200), atmo int ,presser double ,distance float);
desc brand;

alter table temp add(cold int);
alter table  temp add (maxtemp float, minTemp float);
alter table temp add(distance float);
alter table temp modify column cold float;
insert into temp values('punna','navanagar',20,120.3,15.2,100.2,600,1);
insert into temp values('ilakl','bagalakot',100,50,120,6);
insert into temp values('badami','navarang',10,120.3,150.2,100.2,450,1);
insert into temp values('bagalkot','navanagar',20,120.3,150.2,100.2,600,1);
insert into temp values('shkeri','vedagri',10,123,150.2,100,400,6);
insert into temp values('mudhol','nilanagar',20,120.3,200,100.2,450,9);
insert into temp values('bagalkot','navanagar',20,120.3,150.2,100.2,600,1);
insert into temp values('bangalur','basahmcer',20,300,160,100,500,1);
insert into temp values('guledguda','kalasi',20,120.3,150.2,100.2,600,1);
insert into temp values('mumb','gali',2,100,50,10,510,9);
insert into temp(location,atmo) values('shivamuga',10);
select* from brand.temp;


create table presser as select atmo ,place ,location  from temp;
desc presser;


alter table presser add (distance varchar(120),heigh int);
alter table presser add (minlow float);
alter table presser modify distance int;
alter table presser modify distance varchar(300);
alter table presser rename column  minlow to  minlowTemp;


select*from brand.presser;
insert into presser values(100,'bagalakot','khbcolony');
insert into presser values(200,'ilkal','chili');
insert into presser values(100,'gadag','bakar');
insert into presser values(50,'kude','bgk');
insert into temp values('kgl','sdv',11,54,1,1,25,21.2);
insert into preser values(120,'bagaks','hbb');




use brand;
create table  heat2(minTem int  unique,maxTem float,noramlTem varchar(500) );
alter table heat2 modify column minTem int not null;

drop table heat2

insert into heat2 values(1,12,'low');
insert into heat values(1,12,'low');
insert into heat values(1,13,'high');
insert into heat2 value(null,13,'low');
select *from brand.heat2;
desc heat2;









