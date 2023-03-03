--Fatura indirimi ve cüreti hesaplayan trigger
CREATE TRIGGER tr_Sales_Ýnvoices
ON sales
AFTER INSERT
AS
BEGIN
    DECLARE @TouristID INT, @ToursID INT, @GuýdesID INT, @ArrivalDate DATE, @InvociesPrice MONEY

    SELECT @TouristID = i.TouristID, @ToursID = i.ToursID, @GuýdesID = i.GuýdesID, @ArrivalDate = i.ArrivalDate
    FROM inserted i

    SELECT @InvociesPrice = SUM(Tours.TourPrice)
    FROM Tours
    WHERE ToursID = @ToursID

    -- 60 yaþ üzeri olanlar için indirim uygulanýr
    IF EXISTS (SELECT 1 FROM Tourists WHERE TouristID = @TouristID AND DATEDIFF(YEAR, Birth, @ArrivalDate) > 60)
    BEGIN
        SET @InvociesPrice = @InvociesPrice - (@InvociesPrice * 0.15)
    END

    INSERT INTO Invoices( TouristID, InvoicePrice)
    VALUES ( @TouristID, @InvociesPrice)
END

--test random birisi
insert into dbo.Sales values('Eyüp Sultan Camii,Ortaköy Camii',NULL,6,7,'10-04-2017',21,3,'Ahmet Þimþek',12341,21,'Oliveer Red','Male','02-12-1950','England','Italy','10-04-2017')
