GO 
USE RideHailing;

GO
insert into DriverStatus values (1,'Working','On Trip');
insert into DriverStatus values (4,'Working','Available');
insert into DriverStatus values (2,'Off Work','Not Working');
insert into DriverStatus values (3,'Inactive','Not Working');

select *
from RideHailing.dbo.DriverStatus;



Go

insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (1,'708','S Beech Street', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (2,'250','Buckingham Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (3,'429','Columbus Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (4,'529','Columbus Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (5,'535 ','WestCott Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (6,'400','GreenWood place', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (7,'800','S Bufbs Street', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (8,'250','Rutger Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (9,'429','Crouse Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (10,'356',' Tech garden Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (11,'537 ','East genessi Ave', 'Syracuse','New Nork', 13210);
insert into Addresss(ID, DoorNumber, Street, City, State, PinCode) values (12,'410','Rutherford place', 'Syracuse','New Nork', 13210);

select *
from RideHailing.dbo.Addresss

Go

insert into Customers values(1,'Sekhar','Mullapudi','Male',2,'saisekhar@gmail.com',1156789099,0);
insert into Customers values(2,'Nitesh','Bhutani','Male',5,'nbhuthan@gmail.com',1157298587,0);
insert into Customers values(3,'Sarath','Patloll','Male',2,'spatloll@gmail.com',1154289646,0);
insert into Customers values(4,'vishnu','karthik','Male',3,'vishnuk@gmail.com',1148972633,0);
insert into Customers values(5,'ravi ','dhagam ','Male',4,'dhagravi@gmail.com',1262473285,0);

select *
from RideHailing.dbo.Customers


Go

insert into CustomerCreditCard values(1,'1122345678903579',2023,1,'AmericanExpress',2);
insert into CustomerCreditCard values(2,'1122903579345678',2020,1,'Discover',2);
insert into CustomerCreditCard values(3,'1103579223456789',2021,1,'Discover',6);
insert into CustomerCreditCard values(4,'1001223456789035',2023,1,'Chase',5);
insert into CustomerCreditCard values(5,'1012345678903579',2019,1,'MNT',3);

select *
from RideHailing.dbo.CustomerCreditCard

Go

Insert Into Licence values 
(1, '123478CN3A','04/11/2014', '04/14/2024', 'New Jersey' ),
(2,'45BC6N678A','01/11/2018', '01/11/2028','New York' ),
(3,'54NV7V678A','01/4/2008', '04/3/2018','New York' ),
(4, 'N678A45BC6', '12/13/2009', '12/14/2019', 'New Jersey'),
(5,'8CN3A12347','11/13/2011', '11/14/2021', 'New Jersey');

select *
from RideHailing.dbo.Licence

Go

Insert Into CarInsurance values 
(1, 'Bajaj',3245342,'04/11/2018', '04/14/2020'),
(2,'Mahindra',3678945,'01/11/2019', '01/11/2021'),
(3,'United Insurance',456789,'01/4/2019','04/3/2021'),
(4, 'United Insurance', 987654,'12/13/2018','12/14/2019'),
(5,'LIC', 358578,'01/14/2018','11/13/2019');

select *
from RideHailing.dbo.CarInsurance
Go

Insert Into Car values 
(1, 'Audi','ACJ7308','JOSFN89897',2004,'Red',4,2,'luxury',1),
(2,'BMW','AKX5657','OKASFGe27497',2017,'White',4,3,'SUV',5),
(3,'Tesla','MNP9697','VBNR85964',2015,'Black',4,4,'luxury',4),
(4, 'Benz','JKL9878','KUTY967332',2008, 'Red',6,6,'SUV',3),
(5,'Tesla','MDS7575','GUDDA676743', 2014,'Black',6,4,'regular',2);

select *
from RideHailing.dbo.Car

Go

Insert Into Driver values 
(1,1,'04/14/1992',2010,2,1,7,'loafr@gmail.com','male',1000234,100004,'rahul','ksb'),
(2,2,'04/14/1989',2014,3,2,9,'behnchod@gmail.com','male',1009873,1002334,'ananth','naga'),
(3,3,'04/14/1991',2015,5,4,10,'rutherford@gmail.com','female',11223444,1003434,'vardan	','sai'),
(4,4,'04/14/1967',2013,1,5,6,'making@gmail.com','male',11122444,1000236,'anup ',' dasari'),
(5,1,'04/14/1974',2017,4,3,12,'richf@gmail.com','female',1123789,1113678,'sarath', 'nijam');

select *
from RideHailing.dbo.Driver

Go

Insert Into Insurance values 
(1, 'Aetna',3245342,'04/11/2018', '04/14/2020', 'ordinary',72.989,1),
(2,'Aetna',3678945,'01/11/2019', '01/11/2021','Preimum',48.968, 2),
(3,'United Health',456789,'01/4/2019','04/3/2021','ordinary' ,35.356,3),
(4, 'United Health', 987654,'12/13/2018','12/14/2019', 'ordinary',42.467,4 ),
(5,'AXA', 358578,'01/14/2018','11/13/2019', 'Premium',35.127,5);

select *
from RideHailing.dbo.Insurance

Go

Insert Into Banking values 
(1, 'Chase',32454,12345,'Checking', 1,'Active' ,100.000),
(2,'MNT',36784,34567,'Checking', 2,'Active',100.000),
(3,'Chase',45678,23458,'Checking',3,'Active' ,100.000),
(4, 'Key', 98764,345678,'Checking',4, 'Active',100.000 ),
(5,'Key', 35878,234567,'Checking',5,'Active',100.000);


select *
from RideHailing.dbo.Banking

GO

insert into Trips values (0,'Completed','2011-12-18 13:13:17','2011-12-18 13:23:17','2011-12-18 13:31:17',1,5,5,4,2,4,52.43,6,2);
insert into Trips values (1,'ON Trip','2011-12-18 13:11:17','2011-12-12 13:33:17','2011-12-18 13:35:17',4,8,3,2,3,1,17.34,2,3);
insert into Trips values (2,'Completed'	,'2019-05-03 18:58:37.580','2019-05-03 18:58:37.580',	'2019-05-03 18:58:37.580',	3,	5,	3,	1,	4,	1,	52.30,	6.00,	4);
insert into Trips values (3.,'Cancelled','2019-05-03 19:00:14.960','2019-05-03 19:00:14.960','2019-05-03 19:00:14.960',	3,	5,	3,	1,	1,	1,	2.00,	0.00,	1);
insert into Trips values (4,'Completed'	,'2019-05-03 19:02:45.340',	'2019-05-03 19:02:45.340','2019-05-03 19:02:45.340',	2,	4,	2,	2,	1,	1,	12.00,	0.00,	1);
insert into Trips values (5,'ON Trip','2011-12-18 13:13:17','2011-12-18 13:23:17','2011-12-18 13:31:17',5,8,2,4,5,5,34.30,2,5);
insert into Trips values (6	,'Completed','2019-05-03 19:03:35.527',	'2019-05-03 19:03:35.527',	'2019-05-03 19:03:35.527',	2,	5,	2,	2,	4,	4,	17.00,	3.00,	4);
insert into Trips values (7,'Completed','2019-05-03 19:10:30.310','2019-05-03 19:10:30.310','2019-05-03 19:10:30.310',	7,	9,	3,	2,	4,	3,	14.00,	2.00,	4);
insert into Trips values (8,'Completed'	,'2019-05-03 19:15:09.100',	'2019-05-03 19:15:09.100',	'2019-05-03 19:15:09.100',	8,	2,	3,	2,	4,	3,	13.00,	2.00,	4);
insert into Trips values (9,'Completed','2011-12-18 13:17:17','2011-12-18 13:17:17','2011-12-18 13:17:17',9,10,1,2,3,5,24.43,4,5);

select *
from RideHailing.dbo.Trips;


insert into DriverRating values(1,1,'decent',4);
insert into DriverRating values(2,2,'hchdna',5);
insert into DriverRating values(3,4,'',5);
insert into DriverRating values(4,6,'',3);
insert into DriverRating values(5,9,'no',2);

select *
from RideHailing.dbo.DriverRating;
Go
insert into CustomerRating values(1,1,'everythn is good',5);
insert into CustomerRating values(2,2,'',4);
insert into CustomerRating values(3,4,'',4);
insert into CustomerRating values(4,6,'',5);
insert into CustomerRating values(5,9,'not interested',3);


select *
from RideHailing.dbo.CustomerRating;












