Create database joitsTask;

create table serviceStation(srNo int primary key,serviceType varchar(600));
insert into  serviceStation values(1,' Brake inspection and maintenance');
insert into  serviceStation values(2,'Spark plug replacement');
insert into  serviceStation values(3,'oil change');
insert into  serviceStation values(4,'Timing belt replacement');
insert into  serviceStation values(5,'Fuel system cleaning and maintenance');
insert into  serviceStation values(6,'Battery replacement and testing');
insert into  serviceStation values(7,'Engine tune-up');
insert into  serviceStation values(8,'Air conditioning system recharge and maintenance');
insert into  serviceStation values(9,'Wheel alignment and suspension repair');
insert into serviceStation values(10,'Tire rotation and balancing');

Select  *from serviceStation;

create table  customerRecord(
serNo int primary key,
carBrand varchar(600),
customerName varchar(500),
customerNumber int,
carIssue varchar(800),
receivedDate date,
returnedDate date,
maintenanceDays int,
mechanicName varchar(300),
mechanicPhone int,
cost int ,
serviceTypeId int,
foreign key (serviceTypeId) references serviceStation(srNo));

select *from customerRecord;

insert into customerRecord values(1,'honda','basu',1964,'brackfaile',"2022-1-1","2023-1-5",1,'khan',96145403,300,1);

insert into customerRecord values(2,'toyota','raju',296404,'Transmission',"2022-1-1","2023-1-5",1,'altf',96125403,200,2);
insert into customerRecord values(3,'Ford','mahi',296404,' filter',"2022-1-1","2023-1-5",1,'khan',96478903,500,3);
insert into customerRecord values(4,'chevrolet','babhu',996404,'brackfaile',"2022-1-8","2023-1-7",1,'khan',96404654,100,4);
insert into customerRecord values(5,'nissan','ragu',896404,'battery',"2022-1-8","2023-1-9",1,'Bob',96125403,2000,5);
insert into customerRecord values(6,'BMW','krish',852404,'rotors',"2022-1-3","2023-1-6",1,'Jerry',9689403,5100,6);
insert into customerRecord values(7,'Mewcedes-Benz','hari',856404,'brackfaile',"2022-1-5","2023-1-7",1,'khan',96415803,1200,7);
insert into customerRecord values(8,'Audo','Ananda',82404,'Electrical',"2022-1-1","2023-1-5",1,'Mike',9678403,1400,8);
insert into customerRecord values(9,'Hyundai','basuu',896404,'Air conditioning ',"2022-1-1","2023-1-2",1,'John',91560403,30000,9);
insert into customerRecord values(10,'Kia','kali',1196404,'brackfaile',"2022-1-10","2023-1-5",1,'Dave',96434403,10,10);
insert into customerRecord values(11,'Mazda','basavaraj',8296401,'Overheating',"2022-2-11","2023-2-12",1,'Paul',96421403,10000,1);
insert into customerRecord values(12,'Volkswagen','bari',8296402,'brackfaile',"2022-2-11","2023-2-13",1,'Tom',9615803,1250,2);
insert into customerRecord values(13,'Jeep','ckila',8296403,'Exhaust system',"2022-2-10","2023-2-12",1,'Jim',9580403,135000,3);
insert into customerRecord values(14,'Chrysler','dsjcbh',8296404,'Fuel system ',"2022-2-10","2023-2-15",1,'Vinod ',91580403,1000,4);
insert into customerRecord values(15,'Dodge','nashad',8296405,'Steering issues',"2022-2-12","2023-2-14",1,'khan',9655403,9000,5);
insert into customerRecord values(16,'Porsche','kam',8296406,'Dashboard ',"2022-2-18","2023-2-19",1,'Santhosh',96404783,9000,6);
insert into customerRecord values(17,'Ferrari','lalay',7196404,'brackfaile',"2022-2-2","2023-2-5",1,'Dinesh',96404012,400,7);
insert into customerRecord values(18,'Lamborghini','manja',7296404,'Ignition',"2022-2-3","2023-2-5",1,'Harish',96155403,100,8);
insert into customerRecord values(19,'Aston Martin','shri',7396404,'brackfaile',"2022-2-4","2023-2-5",1,'Nagaraj',4540403,200,9);
insert into customerRecord values(20,'Rolls-Royce','rance',7196404,'Tire issues,',"2022-2-1","2023-2-5",1,'Anand',9180403,30,10);
insert into customerRecord values(21,'Bentley','lalaye',96296404,'Interior ',"2022-3-1","2023-3-5",1,'Nagaraj ',9644803,700,1);
insert into customerRecord values(22,'McLaren','papan',9296404,'Oil leaks',"2022-3-1","2023-3-5",1,'khan',96404154,500,2);
insert into customerRecord values(23,'Maserati','kakamy',8616404,'Cooling system ',"2022-3-10","2023-3-20",1,'Vijay',964025483,800,3);
insert into customerRecord values(24,'Lotus','papamy',6296404,' wheel ',"2022-3-11","2023-3-15",1,'Srinivas',4410403,900,4);
insert into customerRecord values(25,'Tesla','ssafd',6296404,'knocking',"2022-3-11","2023-3-25",1,'Shetty',964503,100,5);
insert into customerRecord values(26,'GMC','eajew',416404,'jerking',"2022-3-12","2023-3-13",1,'khan',9644803,200,6);
insert into customerRecord values(27,'Buick','kaeiua',516404,'AC compressor',"2022-3-14","2023-3-15",1,'Patil',9641503,300,7);
insert into customerRecord values(28,'Acura','paavan',4596404,'emissions.',"2022-3-19","2023-3-20",1,'Rao',96515403,500,8);
insert into customerRecord values(29,'Infiniti','ragatlya',1596404,' gauge',"2022-3-16","2023-3-19",1,'Pai',96548403,600,9);
insert into customerRecord values(30,'scoda','sunikeala',2596404,'brackfaile',"2022-3-19","2023-3-20",1,'Kamath',1840403,700,10);

-- fetch top 1 record 
update customerRecord  set cost=cost+1000 where serNo=1;
update customerrecord set cost=cost-1000 where serNo=1;

-- count alll records 
select count(*) from customerRecord ;

-- find total cost in each month & for3 months 
select sum(cost) from customerRecord where receivedDate between "2022-1-1" and "2022-1-30";
select sum(cost) from customerRecord where receivedDate between "2022-2-1" and "2022-2-30";
select sum(cost) from customerRecord where receivedDate between "2022-3-1" and "2022-3-30";

-- find averge cost in each month & for  months;
select avg(cost) from  customerRecord where receivedDate  between "2022-1-1" and "2022-1-30";
select avg(cost) from  customerRecord where receivedDate  between "2022-2-1" and "2022-2-30";
select avg(cost) from  customerRecord where receivedDate  between "2022-2-1" and "2022-2-30";


select max(mechanicName) from customerRecord;
select min(cost),max(cost) from customerRecord;

select avg(cost) from customerrecord;ipl
select * from customerrecord;

