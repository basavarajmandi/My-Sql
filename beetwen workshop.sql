create table workshop(name varchar(50),place varchar(6),dateOfopaning date ,state varchar(60));

insert into workshop values('om','bagalkot','1991-02-12','karanatak');
insert into workshop values('demp','bengalura','1991-03-15','mh');
insert into workshop values('dinga','rajajinagar','1991-04-20','Ap');
insert into workshop values('bomba','mudhol','1998-05-25','tn');
alter table workshop modify place varchar(500);

select *from workshop where dateOfopaning between '1991-02-12' and '1991-04-20';
select *from workshop where name  between 'o' and 'd';
SELECT * FROM empletask.workshop;