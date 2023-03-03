--kullanýcý adý ve þifresi table olarak ekledim bu bilgileri databese engine giriþ yapýlýrken kullanýcý adý ve þifresini girerek eriþim olan þeyleri görecek ve deðiþtirebileceði þeyleri deðiþtirebilecek
--CompanyOfficial ve SalesOfficer olarak 2 tane kullanýcýmýz var. Þirket Yetklisi ve Satýþ Yetklisi olarak ikiye ayýrdým
--ÇOK FAZLA KABALIK OLMAMASI ÝÇÝN SADECE EN FAZLA VERÝNÝN BULUNDUÐU SALES TABLOMA VERÝ GÝRDÝSÝ GÖSTERMEK ÝSTEDÝM
TRUNCATE TABLE Sales

insert into dbo.Sales values('Eyüp Sultan Camii,Ortaköy Camii',NULL,6,7,'10-04-2017',1,3,'Ahmet Þimþek',12341,1,'Oliveer Red','Male','02-12-1967','England','Italy','10-04-2017')
insert into dbo.Sales values('Kýz Kulesi,Pierre Loti Tepesi',11,NULL,5,'09-04-2018',2,1,'Büþra Kurt',12341,2,'Chinatsu Aya','Woman','10-10-1990','Japanese','German','09-04-2018')
insert into dbo.Sales values('Dolmabahçe Sarayý,Yerebatan Sarnýcý,Topkapý Sarayý Müzesi',13,14,15,'09-04-2016',3,5,'Turan Kelek',12345,3,'Taichi Koyuki','Male','09-23-1988','Japanese','German','09-04-2016')
insert into dbo.Sales values('Belgrad Ormaný,Niþantaþý',3,1,NULL,'05-05-2017',4,6,'Esra Taþ',12346,4,'Karoline Switch','Woman','08-04-1985','German','German','05-05-2017')
insert into dbo.Sales values('Galata Kulesi,Kapalý Çarþý,',12,10,NULL,'05-05-2018',4,2,'Ezgi Çetin',12342,5,'Johan Leo','Male','11-04-1980','German','German','05-05-2018')
insert into dbo.Sales values('Ayasofya Camii,Topkapý Sarayý Müzesi',16,15,NULL,'11-02-2017',6,4,'Mustafa Kara',12344,6,'Jason Stathom','Male','07-05-1972','ABD','England','11-02-2017')
insert into dbo.Sales values('Sakýp sakapncý Müzesi , Ortaköy Camii',4,7,NULL,'03-07-2018',7,8,'Enes Cesut',12348,7,'Vin Diesel','Male','11-07-1970','ABD','Brazil','03-07-2018')
insert into dbo.Sales values('Pierre Loti Tepesi,Ortaköy Camii',5,7,NULL,'07-03-2018',8,2,'Ezgi Çetin',12342,8,'Paul Walker','Male','06-22-1987','Brazil','Brazil','07-03-2018')
insert into dbo.Sales values('Polonezköy Tabiat Parký,Belgrad Oramaný',2,3,NULL,'02-05-2017',9,6,'Esra Taþ',12346,9,'Angelina Jolie','Woman','07-05-1980','ABD','England','02-05-2017')
insert into dbo.Sales values('Kýz Kulesi,Kapalý Çarþý',11,10,NULL,'08-03-2018',10,4,'Mustafa Kara',12344,10,'Kristen Swewart','Woman','07-05-1980','ABD','England','08-03-2018')
insert into dbo.Sales values('Ayasofya Camii,Polonezköy Tabiat Parký,Pierre Loti Tepesi',16,2,5,'04-05-2018',11,5,'Turan Kelek',12345,11,'Sandra Bullock','Woman','12-05-1977','France','France','04-05-2018')
insert into dbo.Sales values('Pierre Loti Tepesi,Polonezköy Tabiat Parký',5,2,NULL,'10-04-2018',12,1,'Büþra Kurt',12341,12,'Tyrese Gibson','Male','11-04-1979','ABD','France','10-04-2018')
insert into dbo.Sales values('Sakýp Sabancý Müzesi,Ýstiklal Caddesi',4,8,NULL,'04-10-2017',13,8,'Enes Cesut',12348,13,'Sung Kang','Male','05-05-1990','South Korea','ABD,','04-10-2017')
insert into dbo.Sales values('Galata Kulesi,Ýstiklal Caddesi',12,NULL,8,'11-05-2019',14,3,'Ahmet Þimþek',12343,14,'Helen Mirren','Woman','02-02-2019','ABD','France','11-05-2019')
insert into dbo.Sales values('Belgrad Ormaný,Eyüp Sultan Camii,Niþantaþý',3,6,1,'02-01-2019',15,5,'Turan Kelek',12345,15,'Mila Kunis','Woman','03-11-1995','ABD','France','02-01-2019')
insert into dbo.Sales values('Taksim Meydaný,Polonezköy Tabiat Parký',4,2,NULL,'11-02-2017',16,6,'Esra Taþ',12346,16,'Julia Roberts','Woman','03-04-1990','France','ABD','11-02-2017')
insert into dbo.Sales values('Sakýp Sapancý Müzesi,Polonezköy Tabiat Parký',4,2,NULL,'03-05-2019',17,1,'Büþra Kurt',12341,17,'Daniel Radcliffe','Male','03-20-1991','England','ABD','03-05-2019')
insert into dbo.Sales values('Yerebatan Sarnýcý,Kapalý Çarþý,Pierre Loti',14,10,5,'04-02-2019',18,2,'Ezgi Çetin',12342,18,'Emma Watson','Woman','05-02-1990','England','ABD','04-022-2019')
insert into dbo.Sales values('Pierre Loti Tepesi,Kýz Kulesi',5,11,NULL,'02-04-2019',19,2,'Ezgi Çetin',12342,19,'Rupert Grint','Male','07-20-1993','ABD','ABD','02-04-2019')
insert into dbo.Sales values('Kýz Kulesi,Niþantaþý,Galata Kulesi',11,1,12,'06-02-2019',20,2,'Ezgi Çetin',12342,20,'Matthew Lewis','Males','03-05-1990','ABD','Greek','06-02-2019')









