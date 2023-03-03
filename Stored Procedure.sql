--Eðer daha önce de tur sattýðý bir turistse, bu bilgileri tekrar girmemeli ve turisti sistemden bulup eklemelidir.
CREATE PROCEDURE sp_AddSaleTable (@ToursID INT, @TouristID INT, @GuýdesID INT, @Date DATE, @PlacesToVisit NVARCHAR(90),@ArrivalDate DATE)
AS
BEGIN
IF NOT EXISTS (SELECT * FROM Tours WHERE ToursID = @ToursID)
BEGIN
RAISERROR('Invalid ToursID.', 16, 1)
RETURN
END
IF NOT EXISTS (SELECT * FROM Tourists WHERE TouristID = @TouristID)
BEGIN
RAISERROR('Invalid TouristID.', 16, 1)
RETURN
END
IF NOT EXISTS (SELECT * FROM Guýdes WHERE GuýdesID = @GuýdesID)
BEGIN
RAISERROR('Invalid GuýdesID.', 16, 1)
RETURN
END
INSERT INTO Sales(ToursID, TouristID, GuýdesID, Date, PlacesToVisit,ArrivalDate )
VALUES (@ToursID, @TouristID, @GuýdesID, @Date, @PlacesToVisit, @ArrivalDate)
END

EXEC sp_AddSaleTable 1, 10, 1, '2022-01-08' ,'Ayasofya,Kýz Kulesi,PierreLoti' ,'2022-01-08'

--Satýlmamýþ turlar için Tur Ýptali store procedürü
CREATE PROCEDURE sp_CancelTur (@ToursID INT)
AS
Begin
IF NOT EXISTS (SELECT * FROM Tours WHERE ToursID = @ToursID AND TourStatus != 'Satýldý')
RAISERROR('Invalid Tour ID or Tour has already been sold.', 16, 1)
RETURN
END
UPDATE Tours
SET TourStatus = 'Ýptal Edildi'
WHERE ToursID = @ToursID

--Tur iptalini yapan store procedure
 EXEC CancelTur (18)