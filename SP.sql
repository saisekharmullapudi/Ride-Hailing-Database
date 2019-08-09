Go
USE RideHailing
Go

Create PROC CustomerRate
@id int,
@score int  OUTPUT
as 
begin
	select @score=AVG(CustomerRating.score)
	from Trips join Customers on Trips.CustomerID = Customers.CustomerID
			join CustomerRating on CustomerRating.TripID=Trips.ID
	where Customers.CustomerID = @id
	
end

GO
declare @scr int 
EXEC CustomerRate 3,@scr output
print 'Customer Rating : ' + CAST(@scr AS VARCHAR)

GO
Create PROC AvailableCar
@outp int output
as 
begin
	select @outp= count(*)
	from Driver join DriverStatus on Driver.status = DriverStatus.ID
	where DriverStatus.WorkingStatus='Available'
end

GO
declare @scr int 
EXEC AvailableCar @scr output
print 'Available car : ' + CAST(@scr AS VARCHAR)
