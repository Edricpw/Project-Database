--3 DML 

USE cArDorm

INSERT INTO MsStaff VALUES
('ST001', 'Lestari Wijaya', 'Female','lestari123@gmail.com', '081478489735', 'Jl. Ortiz ', 5500000),
('ST002', 'Maya Anissa', 'Female', 'mayaya153@yahoo.com', '081791861479', 'Jl. Hopsin ', 6500000),
('ST003', 'Ika Rumanti', 'Female', 'Ika789@gmail.com', '082798646576', 'Jl. Atlus ', 7500000),
('ST004', 'Siti Nuah', 'Female', 'siti852@yahoo.com', '085198791657', 'Jl. Pendo', 85000000),
('ST005', 'Fitri Jakar', 'Female', 'fitriii@gmail.com', '081967615678', 'Jl. Knox ', 9500000),
('ST006', 'Arya Satu', 'Male', 'Aryaak@gmail.com', '082348997916', 'Jl. Hill ', 5000000),
('ST007', 'Yudi Sumbang', 'male', 'Yudioh@gmail.com', '086198791287', 'Jl. Dax ', 8500000),
('ST008', 'Andy Tony', 'Male', 'Andyy@gmail.com', '085125679157', 'Jl. Crypt ', 10000000),
('ST009', 'Rio Dejaneiro', 'Male', 'Rioriot@yahoo.com', '081054758163', 'Jl. Gawne ', 9000000),
('ST010', 'Putra Oleng','Male','Putra741@gmail.com', '081784871678', 'Jl. Chvse', 7000000)

SELECT * FROM MsStaff

INSERT INTO MsCustomer VALUES
('CU001', 'Nurul Hidayah', 'Female', 'Jl. Only', '081154894675', 'nur_nur@gmail.com'),
('CU002', 'Tri', 'Female', 'Jl. Rmtwd', '081457894569', 'tri123@gmail.com'),
('CU003', 'Indah', 'Female', 'Jl. Perception', '081315686262', 'Indah...@gmail.com'),
('CU004', 'Dian', 'Female', 'Jl. Mansion', '081987981515', 'DIAN@yahoo.com'),
('CU005', 'Dwi Tantyo', 'Female', 'Jl. Session', '081354791647', 'DwiDwi@yahoo.com'),
('CU006', 'Reza', 'Male', 'Jl. Search', '081564896512', 'Reza_reza@gmail.com'),
('CU007', 'Maroko', 'Male', 'Jl. Moments', '081948156243', 'Maroko_G@gmail.com'),
('CU008', 'Ade', 'Male', 'Jl. Paints  ', '081678495148', 'Adekk@yahoo.com'),
('CU009', 'Agusti Dirawan', 'Female', 'Jl. Yelawolf', '081654810259', 'AgusGus@gmail.com'),
('CU010', 'Bambang', 'Male', 'Jl. Clouds ', '081091296819', 'Bambang@gmail.com')

SELECT * FROM MsCustomer

INSERT INTO MsVendor VALUES
('VE001', 'Tayato Indonesia', 'tayatoIndo@gmail.com', '02115794264', 'Jl. JID'),
('VE002', 'Dihatsu cabang 2', 'dihatsu2@gmail.com', '02149879418', 'Jl. EM'),
('VE003', 'Nassin Indonesia', 'nassindo@yahoo.com', '02116879691', 'Jl. MMLP 1'),
('VE004', 'Mutsibushu Indonesia', 'mutsibushuindo@gmail.com', '02167891298', 'Jl. MMLP 2'),
('VE005', 'Uadi Indonesia', 'uadIndo@gmail.com', '02198794180', 'Jl. Revival'),
('VE006', 'Chovrelot', 'chovrelotbusiness@yahoo.com', '02154800476', 'Jl. Em Show'),
('VE007', 'Vilvi', 'vilvi@gmail.com', '02198706713', 'Jl. SSLP'),
('VE008', 'Masdah cabang 1', 'masdah1@gmail.com', '02184950985', 'Jl. Recovery'),
('VE009', 'Kai Indonesia', 'kaIndo@gmail.com', '02197914731', 'Jl. Encore'),
('VE010', 'Luxes','Luxes@gmail.com', '02164796422', 'Jl. Relapse')

SELECT * FROM MsVendor 

INSERT INTO MsCarBrand VALUES
('CB001', 'Tayato'), 
('CB002', 'Dihatsu'), 
('CB003', 'Nassin'), 
('CB004', 'Mutsibushu'), 
('CB005', 'Uadi'), 
('CB006', 'Chovrelot'), 
('CB007', 'Vilvi'), 
('CB008', 'Masdah'), 
('CB009', 'Kai'), 
('CB010', 'Luxes')

SELECT * FROM MsCarBrand

INSERT INTO MsCar VALUES
	('CA001', 'Tayato', 'Sapru', 300000000, 2),
	('CA002', 'Dihatsu', 'Anexi', 100000000, 5),
	('CA003', 'Nassin', '100z', 900000000, 1),
	('CA004', 'Mutsibushu', 'Cenlar', 800000000, 10),
	('CA005', 'Uadi', 'R10', 1500000000, 0),
	('CA006', 'Chovrelot', 'Tangmus', 750000000, 3),
	('CA007', 'Vilvi', 'C70', 250000000, 8),
	('CA008', 'Masdah', 'TG3', 550000000, 20),
	('CA009', 'Kai', 'Canpito', 150000000, 15),
	('CA010', 'Luxes', 'AFL35', 7500000000, 13)

SELECT * FROM MsCar


INSERT INTO MsTransaction VALUES
-- more than 25 or equal (kalo bisa 30 biar ga susah )
('TR001', 'ST001', 'CU001', 'CA001', '2020-05-22', 1),
('TR002', 'ST002', 'CU002', 'CA002', '2020-11-05', 1),
('TR003', 'ST007', 'CU002', 'CA006', '2020-03-18', 1),
('TR004', 'ST007', 'CU002', 'CA001', '2020-04-20', 1),
('TR005', 'ST002', 'CU008', 'CA008', '2020-05-02', 1),
('TR006', 'ST003', 'CU006', 'CA002', '2020-05-10', 1),
('TR007', 'ST005', 'CU004', 'CA001', '2020-06-11', 1),
('TR008', 'ST005', 'CU002', 'CA006', '2020-06-18', 2),
('TR009', 'ST010', 'CU003', 'CA004', '2020-06-30', 1),
('TR010', 'ST008', 'CU004', 'CA010', '2020-08-20', 1),
('TR011', 'ST006', 'CU005', 'CA009', '2020-08-30', 1),
('TR012', 'ST006', 'CU005', 'CA010', '2020-11-16', 1),
('TR013', 'ST006', 'CU005', 'CA008', '2020-12-15', 1),
('TR014', 'ST001', 'CU007', 'CA007', '2021-01-09', 1),
('TR015', 'ST001', 'CU008', 'CA002', '2021-01-28', 1),
('TR016', 'ST004', 'CU009', 'CA004', '2021-01-30', 1),
('TR017', 'ST009', 'CU010', 'CA003', '2021-02-14', 2),
('TR018', 'ST009', 'CU010', 'CA010', '2021-04-20', 1),
('TR019', 'ST010', 'CU001', 'CA006', '2021-05-06', 1),
('TR020', 'ST003', 'CU001', 'CA009', '2021-06-07', 1),
('TR021', 'ST004', 'CU003', 'CA009', '2021-06-17', 1),
('TR022', 'ST004', 'CU006', 'CA006', '2021-06-17', 1),
('TR023', 'ST006', 'CU003', 'CA003', '2021-07-06', 1),
('TR024', 'ST006', 'CU003', 'CA007', '2021-07-08', 1),
('TR025', 'ST002', 'CU003', 'CA006', '2021-08-29', 1)
SELECT * FROM MsTransaction

INSERT INTO MsPurchase VALUES
-- 15 sample
('PU001', 'ST001', 'VE003', 'CA001', '01/01/2019', 5),
('PU002', 'ST001', 'VE001', 'CA002', '01/01/2019', 20),
('PU004', 'ST003', 'VE010', 'CA002', '04/12/2015', 15),
('PU005', 'ST005', 'VE003', 'CA005', '07/11/2016', 7),
('PU007', 'ST007', 'VE005', 'CA007', '03/03/2013', 14),
('PU008', 'ST009', 'VE004', 'CA008', '08/09/2018', 13),
('PU010', 'ST009', 'VE008', 'CA003', '10/08/2020', 7),
('PU011', 'ST007', 'VE009', 'CA006', '03/18/2017', 9),
('PU013', 'ST005', 'VE006', 'CA009', '04/15/2017', 5),
('PU014', 'ST004', 'VE007', 'CA006', '04/26/2021', 4),
('PU016', 'ST004', 'VE006', 'CA003', '02/27/2014', 9),
('PU009', 'ST002', 'VE005', 'CA004', '06/15/2015', 3),
('PU006', 'ST002', 'VE001', 'CA006', '07/23/2019', 7),
('PU017', 'ST008', 'VE003', 'CA010', '08/08/2017', 5),
('PU015', 'ST010', 'VE005', 'CA010', '04/05/2013', 11),
('PU019', 'ST009', 'VE005', 'CA010', '05/05/2013', 11)
SELECT * FROM MsPurchase