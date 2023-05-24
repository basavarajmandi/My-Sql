
create table Empl1(empno int,ename varchar(100),job varchar(500),mgr int ,hiredate date ,sal int,comm int,deptno int);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,deptno) values (8369,'smith','CLERK',8902,"1990-12-18",800,20);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,comm,deptno) values ( 8499, 'ANYA','SALESMAN',8698,"1991-02-20",1600,300,30);
insert into Empl1 (empno,ename,job,mgr,hiredate,sal,comm,deptno)values ( 8521, 'SETH','SALESMAN',8698,"1991-02-22",1250,500,30);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,deptno) values ( 8566,' MAHADEVAN','MANAGER',8839,"1991-04-02",2985,20);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,comm,deptno) values ( 8654, 'MOMIN','SALESMAN',8698,"1991-09-28",1250,1400,30);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,deptno) values ( 8698, 'BINA','MANAGER',8839,"1991-05-01",2850,30);
insert into Empl1 (empno,ename,job,mgr,hiredate,sal,deptno)values ( 8882, 'SHIVANSH','MANAGER',8839,"1991-06-09",2450,10);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,deptno) values ( 8888,' SCOTT','ANALYST',8566,"1992-12-09",3000,20);
insert into Empl1(empno,ename,job,hiredate,sal,deptno) values ( 8839,'AMIR',' PRESIDENT',"1991-11-18",5000,10);
insert into Empl1(empno,ename,job,mgr,hiredate,sal,comm,deptno) values ( 8844, 'KULDEEP','SALESMAN',8698,"1991-09-08",1500,0,30);

-- write a query to disp ename and sal of emple  whose salary are greater than or equal to 2200 ?
select ename,sal from Empl1 where sal>=2200;
-- write a query to disp details of empl who are not geting commission?
select *from  Empl1 where comm is null;
-- write a query to display employee name and salary of those empl who dont have their salary in range of 2500 to 4000?
select ename,sal from Empl1 where sal<2500 or sal>4000;
-- write a query to display the name ,job title and salary of emplyee who dont have manager ?
select ename,job,sal from Emple1 where job not in ('MANAGER');
-- write a query to dispalay the name of emple whose name contains "a" as thired alphabet ?
select ename from Empl1 where ename like '__A%';
-- write a query to display the name of emple whose name contains "t" as last alphabet?
select ename from Empl1 where ename like '%T';
-- write a query to display the name of emple whose name contains "m" as first and "l" as third alphabet?
select ename from Empl1 where ename like 'm%' and '__L%';
-- write a query to dipaly details of empl with the text "not given ",if commission is null ?  
select empno,ename,job,mgr,hiredate,sal,deptno, IFNULL(comm,'not given') as comm from Empl1;







