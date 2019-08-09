Go

Create Function DriverIncome(@DriverID int)
Returns money  
as 
begin
	declare @trip money
	declare @tip money
	select @trip=SUM(TripFair),@tip=SUM(Tip)
	from Trips
	where Trips.DriverID = @DriverID;
	return (@trip+@tip)
end
GO
print dbo.DriverIncome(3)

Go

Create Function AvailableDrivers()
Returns int 
as 
begin
	return (select Count(*)
	from Driver join DriverStatus on DriverStatus.ID = Driver.status
	where DriverStatus.WorkingStatus = 'Available')
end
GO

print dbo.AvailableDrivers()