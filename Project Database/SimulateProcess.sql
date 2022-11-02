--soal d

USE cArDorm

--transaction
--customer yang terdaftar ingin membeli 2 mobil
BEGIN TRAN
INSERT INTO MsTransaction VALUES
('TR026', 'ST007', 'CU006', 'CA009', '2021-09-12', 2)
SELECT * FROM MsTransaction
ROLLBACK
COMMIT

--update stock setelah mobil dibeli oleh customer
BEGIN TRAN
UPDATE MsCar
SET CarStock = (CarStock - 2)
WHERE CarID LIKE 'CA009'
SELECT * FROM MsCar
ROLLBACK
COMMIT

--purchase
-- staff membeli stock mobil dari vendor sebanyak 20 mobil
BEGIN TRAN
INSERT INTO MsPurchase VALUES
('PU020', 'ST006', 'VE003', 'CA010', '09/21/2021', 20)
SELECT * FROM MsPurchase
ROLLBACK
COMMIT

--update stock mobil setelah membeli dari vendor
BEGIN TRAN
UPDATE MsCar
SET CarStock = (Carstock + 20)
WHERE CarID LIKE 'CA010'
SELECT * FROM MsCar
ROLLBACK
COMMIT