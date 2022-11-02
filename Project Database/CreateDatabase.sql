Create Database cArDorm
GO

USE cArDorm


--2 ddl

Create table MsStaff(
	StaffID   VARCHAR(7) PRIMARY KEY CHECK (StaffID LIKE  'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(50) NOT NULL,
	StaffGender VARCHAR(10) CHECK (StaffGender LIKE 'Male' OR (StaffGender LIKE 'Female')) NOT NULL,
	StaffEmail VARCHAR (50) CHECK (StaffEmail LIKE '%@gmail.com' OR StaffEmail LIKE  '%@yahoo.com') NOT NULL,
	StaffPhoneNumber VARCHAR(15) NOT NULL,
	StaffAddress VARCHAR(50) NOT NULL,
	StaffSalary INT CHECK (StaffSalary>=5000000 OR StaffSalary<=10000000 )  NOT NULL ,
)


Create Table MsCar(
	CarID VARCHAR (7) PRIMARY KEY CHECK (CarID LIKE  'CA[0-9][0-9][0-9]'),
	CarBrand VARCHAR (20) NOT NULL,
	CarName VARCHAR(50) NOT NULL,
	CarPrice BIGINT NOT NULL,
	CarStock INT NOT NULL,
)

Create Table MsVendor(
	VendorID  VARCHAR(7) PRIMARY KEY CHECK (VendorID LIKE  'VE[0-9][0-9][0-9]'),
	VendorName  VARCHAR(50) NOT NULL,  
	VendorEmail VARCHAR (50) CHECK (VendorEmail LIKE '%@gmail.com' OR VendorEmail LIKE '%@yahoo.com') NOT NULL,
	VendorPhoneNumber VARCHAR(15) NOT NULL,
	VendorAddress VARCHAR(50) NOT NULL,
)

Create Table MsCustomer(
	CustomerID  VARCHAR(7) PRIMARY KEY CHECK (CustomerID LIKE  'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(10) CHECK (CustomerGender LIKE 'Male' OR (CustomerGender LIKE 'Female')) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerPhoneNumber VARCHAR(15) NOT NULL,
	CustomerEmail VARCHAR (50) CHECK (CustomerEmail LIKE '%@gmail.com' OR CustomerEmail LIKE '%@yahoo.com') NOT NULL,
)

Create Table MsCarBrand(
	CarBrandID  VARCHAR(7) PRIMARY KEY CHECK (CarBrandID LIKE  'CB[0-9][0-9][0-9]') NOT NULL,
	CarBrandName VARCHAR (10) NOT NULL,
)

Create Table MsTransaction(
	TransactionID  VARCHAR(7) PRIMARY KEY CHECK (TransactionID LIKE  'TR[0-9][0-9][0-9]'),
	TransactionStaff VARCHAR(7) FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionCustomer VARCHAR(7) FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionCar VARCHAR(7) FOREIGN KEY REFERENCES MsCar(CarID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE NOT NULL,
	QTY INT NOT NULL,
)
Create Table MsPurchase(
	PurchaseID VARCHAR(7) PRIMARY KEY CHECK (PurchaseID like 'PU[0-9][0-9][0-9]'),
	StaffID VARCHAR(7) FOREIGN KEY REFERENCES MsStaff (StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	VendorID VARCHAR(7) FOREIGN KEY REFERENCES MsVendor (VendorID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CarID VARCHAR (7) FOREIGN KEY REFERENCES MsCar (CarID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseDate DATE NOT NULL,
	PurchaseQTY INT NOT NULL,
)
