GO
Create database RideHailing


GO
USE RideHailing;

Go
CREATE TABLE Addresss (
ID int not null primary key, 
DoorNumber varchar(60) not null,
Street varchar(40) not null,
City varchar(20) not null,
State varchar(20) not null,
PinCode int not null 
);
Go
CREATE TABLE CarInsurance (
ID int not null primary key, 
Company varchar(40) not null, 
PolicyNumber int not null,
DateOFIssue date not null,
DateOFExpiry date not null,
);
Go
CREATE TABLE Car (
ID int not null primary key , 
Company varchar(40) not null, 
make varchar(40) not null,
model varchar(20) not null,
ReleaseYear int,
Color varchar(30),
MaxPassengerCount int not null default 4,
MaxBagCount int not null check(MaxBagCount > 0),
type varchar(40) not null,
CarInsurance int not null foreign key references CarInsurance(ID), 
);
Go
CREATE TABLE Licence (
ID int not null primary key , 
LicenceNumber varchar(20),
DateOfIssue date,
DateOfExpiry date,
State varchar(30),
);
Go
CREATE TABLE DriverStatus (
ID int not null primary key , 
status varchar(20) not null,
WorkingStatus varchar(20) not null,  
);

Go
CREATE TABLE Driver (
ID int not null primary key , 
status int foreign key references DriverStatus(ID),
DateOfBirth date not null,
JoiningYear int,
DriverLicence int foreign key references Licence(ID),
CarID int foreign key references Car(ID),
Address int not null foreign key references Addresss(ID), 
email varchar(30) not null,
Gender varchar(10) not null,
Phone int not null,
SSN int not null,
FirstName varchar(60) not null,
LastName varchar(40) not null,
);
Go
CREATE TABLE Banking (
ID int not null primary key , 
BankName varchar(30) not null,
RoutingNumber int not null,
AccountNumber int not null,
AccountType varchar(20) not null,
DriverID int not null foreign key references Driver(ID),
Status varchar(30) not null,
PercentShare decimal(6,3) null default 000.000
);
Go
CREATE TABLE Insurance (
ID int not null primary key , 
Company varchar(40) not null, 
PolicyNumber int not null,
DateOFIssue date not null,
DateOFExpiry date not null,
type varchar(20) not null,
CoveragePercent decimal(6,3) not null default 100.000,
Driver int not null  foreign key references Driver(ID) 
);
Go
CREATE TABLE Customers (
CustomerID int not null primary key, 
FirstName varchar(60) not null,
LastName varchar(40) not null, 
Gender varchar(10) not null,
AddressID int not null foreign key references Addresss(ID), 
email varchar(20) not null, 
Phone int null,
TotalTripsThisYear int default 0);

Go
CREATE TABLE CustomerCreditCard (
ID int not null primary key, 
CardNumber varchar(16) not null,
ExpYear int not null, 
CustomerID int not null foreign key references Customers(CustomerID),
Company varchar(40), 
ExpMonth int not null
);
Go
CREATE TABLE Trips (
ID int not null primary key, 
TripStatus varchar(30) not null, 
BookingTime datetime not null,
PickUpTime datetime not null,
DropTime datetime not null,
PickUpAddress int not null foreign key references Addresss(ID),
DropAddress int not null foreign key references Addresss(ID),
PassengerCount int not null,
BaggageCount int not null,
CustomerID int not null foreign key references Customers(CustomerID),
DriverID int not null foreign key references Driver(ID),
TripFair money not null CHECK(TripFair > 0),
Tip money default 0 ,
CardDetails int not null foreign key references CustomerCreditCard(ID)
);

Go
CREATE TABLE CustomerRating (
ID int not null primary key ,
TripID int not null foreign key references Trips(ID),
Review varchar(300),
score int  check (score >0 and score <11 )
);



Go
CREATE TABLE DriverRating (
ID int not null primary key ,
TripID int not null foreign key references Trips(ID),
Review varchar(300),
score int  check (score >0 and score <11 )
);