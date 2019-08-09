Go
USE RideHailing

Go
Create role DriverAgent
grant insert on dbo.Driver to DriverAgent
grant insert,update on dbo.Trips to DriverAgent
exec sp_addrolemember db_datareader, DriverAgent;

Create login divyasai with password = 'mullapudi',
default_database = RideHailing
create user divyas for login divyasai
exec sp_addrolemember DriverAgent,divyas