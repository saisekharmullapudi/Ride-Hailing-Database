GO

Create view CustomerAverageRating 
as
select Customers.CustomerID,Customers.FirstName, AVG(CustomerRating.score) as rating
from Trips join Customers on Trips.CustomerID = Customers.CustomerID
			join CustomerRating on CustomerRating.TripID=Trips.ID
group by Customers.CustomerID, Customers.FirstName

Go

select *
from CustomerAverageRating

GO
Create view DriverCarInsurance as
select Driver.ID, Driver.FirstName, Driver.LastName, Driver.email,Car.type, CarInsurance.Company, CarInsurance.PolicyNumber
from Driver join Car on Driver.CarID=Car.ID 
			join CarInsurance on CarInsurance.ID = Car.CarInsurance
GO
select *
from DriverCarInsurance
			
GO
Create view DriverLicenceInfo as
select Driver.ID, Driver.FirstName, Driver.LastName, Driver.email, Licence.LicenceNumber, Licence.State, Licence.DateOfExpiry
from Driver join Licence on Driver.DriverLicence= Licence.ID

GO

select *
from DriverLicenceInfo

GO
Create view DriverTripsCounts as
select  Driver.ID, Driver.FirstName, Driver.LastName, count(*) as TotalTrips
from  Driver join Trips on Trips.DriverID = Driver.ID
group by Driver.ID, Driver.FirstName, Driver.LastName

GO
select *
from DriverTripsCounts