--view'leri kod olarak yazıp view klasörünün içinde oluşturdum
--60 yaş üstü turistlere %15 indirim uygulanmasını trigger olarak harici sql uzantılı dosya olarak yükledim
--STORE PROCEDURE eğer daha önce de tur sattığı bir turistse, bu bilgileri tekrar girmemeli ve turisti sistemden bulup eklemelidir maddesini harici bir sql uzantısı olarak yükledim.


--Turist cinsiyeti ile rehber cinsiyeti ne zaman aynı olmuştur
SELECT *
FROM Tourists t JOIN Guıdes r ON t.TouristID = r.GuıdesID
WHERE t.Gender = r.Gender

--ABD'li turistler en çok nereyi gezmistir? 
SELECT b.RegionsName, COUNT(*) as "Number of Visits"
FROM Sales s
JOIN Tours t ON s.ToursID = t.ToursID
JOIN Regions b ON t.RegionsID1 = b.RegionsID OR t.RegionsID2 = b.RegionsID OR t.RegionsD3 = b.RegionsID
JOIN Tourists tr ON s.TouristID = tr.TouristID
WHERE tr.İncomingCountry = 'ABD'
GROUP BY b.RegionsName
ORDER BY "Number of Visits" DESC



--kadınlar en çok hangi ülkeden gelmişitr 
SELECT TouristİncomingCountry,  COUNT(*) AS numberofwomantourist
from Sales
WHERE TouristGender = 'Woman'
GROUP BY TouristİncomingCountry
ORDER BY numberofwomantourist DESC


--Doğum gününde tura katılan var mı?
select TouristNameLastname
from Sales
where MONTH(TouristBirth) = MONTH(ArrivalDate) and day(TouristBirth) = day(ArrivalDate)


--Gezilen yerler hangi yılda kaç defa gezilmistir?
SELECT COUNT(Sales.ToursID) as 'Tour Count',Yillar.Yil as 'Year', Regions.RegionsName as 'Region Name'
FROM Sales
JOIN Tours ON Sales.ToursID = Tours.ToursID
JOIN Regions ON Tours.RegionsID1 = Regions.RegionsID OR Tours.RegionsID2 = Regions.RegionsID OR Tours.RegionsD3 = Regions.RegionsID
JOIN (SELECT DISTINCT YEAR(Date) as Yil FROM Sales) as Yillar ON YEAR(Sales.ArrivalDate) = Yillar.Yil
GROUP BY Yillar.Yil, Regions.RegionsName
ORDER BY Yillar.Yil, 'Tour Count' DESC;


--ABD gelip de Kiz Kulesi’ni gezen turistler kimlerdir?
SELECT t.TouristName ,t.TouristLastname
FROM Tourists t
JOIN Sales s ON t.TouristID = s.TouristID
JOIN Tours tr ON s.ToursID = tr.ToursID
WHERE t.İncomingCountry = 'ABD' AND tr.RegionsID1 = (SELECT RegionsID FROM Regions WHERE RegionsName = 'Kız Kulesi')
OR tr.RegionsID2 = (SELECT RegionsID FROM Regions WHERE RegionsName = 'Kız Kulesi')
OR tr.RegionsD3 = (SELECT RegionsID FROM Regions WHERE RegionsName = 'Kız Kulesi')


 --kadınlar en çok hangi ülkeden gelmişitr 
SELECT TouristİncomingCountry,  COUNT(*) AS numberofwomantourist
from Sales
WHERE TouristGender = 'Woman'
GROUP BY TouristİncomingCountry
ORDER BY numberofwomantourist DESC


--Ayasofya Cammiine en son giden turistler ve rehberi listeleyin.
SELECT tr.TouristName, tr.TouristLastname, g.GuıdesName, g.GuıdesLastname
FROM Sales s
JOIN Tours t ON s.ToursID = t.ToursID
JOIN Regions r ON t.RegionsID1 = r.RegionsID OR t.RegionsID2 = r.RegionsID OR t.RegionsD3 = r.RegionsID
JOIN Tourists tr ON s.TouristID = tr.TouristID
JOIN Guıdes g ON s.GuıdesID = g.GuıdesID
WHERE r.RegionsName = 'Ayasofya Camii'
ORDER BY s.Date DESC


--rehberlerden en çok çalışan 3 kişi
SELECT TOP 3 Guıdes.GuıdesName , Guıdes.GuıdesLastname ,COUNT(*) as numberofstudies FROM Sales
JOIN Guıdes ON Sales.GuıdesID = Guıdes.GuıdesID
GROUP BY Guıdes.GuıdesName, Guıdes.GuıdesLastname
ORDER BY numberofstudies DESC

--en çok ziyaret edilen yer ve hangi ülkeli (uyruk) tarafından ziyaret edilmiştir

SELECT RegionsName, COUNT(Sales.TouristID),TouristNationality as NumberofVisits
FROM Regions
INNER JOIN Sales ON Regions.RegionsID = Sales.RegionsID1 OR Regions.RegionsID= Sales.RegionsID2 OR Regions.RegionsID = Sales.RegionsID3
INNER JOIN Tourists ON Tourists.TouristID = Sales.TouristID
GROUP BY RegionsName,TouristNationality
ORDER BY NumberofVisits DESC;


--erkekler en çok hangi ülkeden gelmiştir
SELECT TouristİncomingCountry, COUNT(*) AS numberofmaletourist
from Sales
WHERE TouristGender = 'Male'
GROUP BY TouristİncomingCountry
ORDER BY numberofmaletourist DESC



