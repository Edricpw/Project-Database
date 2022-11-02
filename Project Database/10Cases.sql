--soal e
--1

use cArDorm

SELECT
	'Mrs.' + CustomerName as CustomerName,
	UPPER(CustomerGender) as CustomerGender,
	COUNT(TransactionID) as TotalTransaction
FROM
	MsCustomer mc join MsTransaction mt ON 
	Mc.CustomerID = Mt.TransactionCustomer
WHERE
	CustomerGender = 'Female' AND 
	CustomerName LIKE '% %'
GROUP BY
	CustomerGender, CustomerName

--2
SELECT
	CarID,
	CarName,
	CarBrand [CarBrandName],
	CarPrice,
	concat(sum(QTY), ' Car(s)') [Total of Car That Has Been Sold]
FROM
	MsCar mc JOIN MsTransaction mt ON 
	mc.CarID = mt.TransactionCar
WHERE
	CarPrice >= 300000000 AND 
	RIGHT(MC.CarID,3)%2 != 0 AND 
	QTY>1
Group BY
	mc.CarID,CarName,CarBrand,CarPrice
--3
SELECT
	'Staff' + ' ' + SUBSTRING(StaffID, 3, len(StaffID)) as StaffID,
	COUNT(TransactionID) AS [Total Transaction Handled],
	SUM(QTY) AS [Maximum Quantity], 
	StaffName
FROM
	MsStaff JOIN MsTransaction ON MsStaff.StaffID = MsTransaction.TransactionStaff
WHERE
	StaffName LIKE '% %' AND
	MONTH(TransactionDate) = 04
GROUP BY
	StaffID, StaffName
ORDER BY MAX(QTY) DESC

--4
SELECT
	CustomerName,
	LEFT(CustomerGender, 1) [CustomerGender],
	--CustomerGender [CustomerGender],
	COUNT(TransactionId) [TotalPurchase],
	SUM(QTY) [Total of Car That Has Been Purchased]
FROM
	MsCustomer MC JOIN
	MsTransaction MT ON MC.CustomerID = MT.TransactionCustomer 
WHERE
	CustomerEmail LIKE '%@gmail.com' AND 
	QTY > 2
Group By
	CustomerName, CustomerGender

--5
SELECT
	'Perseroan Trebatas' + ' ' + VendorName as VendorName,
	--'Perseroan Trebatas' + SUBSTRING(VendorName, 3, len(VendorName)) as VendorName
	VendorPhoneNumber,
	RIGHT (PurchaseID,3) [Purchase ID Number],
	PurchaseQTY 
FROM
	MsVendor JOIN MsPurchase ON MsVendor.VendorID = MsPurchase.VendorID, MsTransaction,
	(
		SELECT
			AVG(PurchaseQTY) AS AVERAGE
		FROM
			MsPurchase
	)alias
WHERE
	VendorName like '%a%' AND
	PurchaseQTY > alias.AVERAGE
GROUP BY
	VendorName, VendorPhoneNumber, PurchaseID, PurchaseQTY

--6
SELECT
	upper(MsCar.CarBrand) + ' ' + upper(MsCar.CarName) as CarName,
	CONCAT('Rp. ', CarPrice) as CarPrice,
	CarStock
FROM
	MsCar,
	(
		SELECT
			AVG(CarPrice) AS AVERAGE
		FROM
			MsCar
	)alias
WHERE
	CarName like '%e%' AND
	CarPrice > alias.AVERAGE

--7
SELECT
 RIGHT(MsCar.CarID,3) as CarID,
 CarName,
 UPPER(CarBrand) as CarBrandName,
 CONCAT('Rp. ', CarPrice) as CarPrice,
 SUM(PurchaseQTY) as [Total Sold]
FROM
 MsCar JOIN MsPurchase ON MsCar.CarID = MsPurchase.CarID,
 (
	SELECT
		AVG(PurchaseQTY) AS AVERAGE
	FROM
		MsPurchase
)alias

WHERE
 CarPrice > 200000000 AND
 CarName LIKE '%o%' AND
 PurchaseQTY > alias.AVERAGE
GROUP BY
 MsCar.CarID, CarName, CarBrand, CarPrice
--8
SELECT
	SUBSTRING(StaffName, 1, CHARINDEX(' ', StaffName) - 1) AS [Staff First Name],
	SUBSTRING(StaffName, CHARINDEX(' ', StaffName) + 1, LEN(StaffName)) AS [Staff Last Name],
	SUM (PurchaseQTY) AS [Total of Car That Has Been Sold]
FROM
	MsStaff JOIN MsPurchase ON MsStaff.StaffID = MsPurchase.StaffID,
	(
		SELECT
			AVG(CarPrice) AS AVERAGE
		FROM
			MsCar
	)alias
WHERE
	StaffName LIKE '% %' AND
	PurchaseQTY > alias.AVERAGE
GROUP BY
	StaffName
--9

Create VIEW Vendor_Transaction_Handled_and_Minimum_View AS
SELECT
	REPLACE(MV.VendorID,'VE','Vendor') [Vendor ID],
	VendorName, COUNT(MP.VendorID) [Total Transaction Handled],
	MIN(PurchaseQty) [Minimum Purchases in One Transaction]
FROM
	MsVendor MV JOIN
	MsPurchase MP ON
	MV.VendorID = MP.VendorID
WHERE
	MONTH(PurchaseDate) = 05 AND VendorName like '%a%'
GROUP BY
	MV.VendorID,VendorName

--10
Create view Staff_Total_Purchase_and_Max_Car_Purchase_View AS
SELECT
 MsStaff.StaffID,
 StaffName,
 UPPER(StaffEmail) [StaffEmail],
 COUNT(TransactionID + VendorID) [Total Purchase],
 MAX(PurchaseQTY) [Maximum of Car That Has Been Purchased in One Purchase]
FROM
 MsStaff JOIN MsPurchase ON MsStaff.StaffID = MsPurchase.StaffID, 
 MsTransaction
WHERE
 StaffEmail like '%@yahoo.com' AND StaffGender like 'Female'
GROUP BY
 MsStaff.StaffID,StaffName,StaffEmail