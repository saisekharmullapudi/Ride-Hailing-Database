GO
USE RideHailing
GO
CREATE TRIGGER UpdateTripsthisYear
on dbo.Trips
For INSERT, UPDATE
AS
BEGIN
	DECLARE @CustomerID int
	DECLARE @Completed varchar(30)
	DECLARE @LastTripDate date
	DECLARE @CurrentDate date
	DECLARE @LastTripID int
	DECLARE @TripsCount int
	Declare @currentTripID int 
	
	SELECT @CustomerID = CustomerId, @CurrentDate = DropTime, @Completed= TripStatus, @currentTripID= ID from inserted
	
	Select @TripsCount=TotalTripsThisYear from Customers where CustomerId = @CustomerID
	Select @LastTripDate=MAX(DropTime)  from Trips where CustomerId = @CustomerID
	
	
	IF (DATEDIFF(year, @LastTripDate, @CurrentDate) >0)
		BEGIN
			IF(@Completed = 'Completed')
				BEGIN
				UPDATE Customers SET TotalTripsThisYear = 1 where CustomerId = @CustomerID;
				
			END
		END		
	ELSE
		BEGIN
			IF(@Completed = 'Completed')
				BEGIN
				UPDATE Customers SET TotalTripsThisYear = @TripsCount+1 where CustomerId = @CustomerID;
				
			END
		END	
END


GO
Create trigger ChangeDriverStatus
on dbo.Trips
After INSERT, UPDATE
AS 
BEGIN 
	Declare @ID int
	Declare @customerId int
	Declare @Completed varchar(30)
	select @ID=DriverID, @Completed=TripStatus from inserted 
	BEGIN
			IF(@Completed = 'Completed')
				BEGIN
				UPDATE Driver set Driver.status = 4 where Driver.ID=@ID;
			END
	END	
END