-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction To SQLite And SQLiteStudio": https://youtu.be/uRybPy3c2To
-- Creates Customer and PartsOrder tables including data

CREATE TABLE Customer (
	Id INTEGER PRIMARY KEY,
	CustomerNumber INTEGER,
	FirstName TEXT,
	LastName TEXT,
	Address  TEXT,
	City  TEXT,
	State  TEXT,
	PostalCode TEXT,
	Country TEXT
);

INSERT INTO Customer(CustomerNumber,FirstName,LastName,Address,City,State,PostalCode,Country)
	VALUES
	(305,'Joseph','Smith','14 Main St','Orlando','Florida','32789','USA'),
	(683,'Hank','Jones','26 Maple Ave','Guadalajara','Jalisco','45090','Mexico'),
	(501,'Martin','Lopez','22 Jamaica Ave','Queens','New York','11435','USA'),
	(511,'Benjamin','Franklin','317 Chectnut St','Philadelphia','Pennslyvania','14205','USA'),
	(419,'Albert','Einstein','112 Mercer St','Princeton','New Jersey','08540','USA'),
	(708,'Nikola','Tesla','8 West 40th Street','New York','New York','10018','USA');

INSERT INTO Customer(CustomerNumber,FirstName,LastName,Address,City,State,PostalCode,Country)
	VALUES
	(241,'Alan','Turing','96 Euston Rd','London','','NW1 2DB','United Kingdom'),
	(511,'Sherlock','Holmes','221 B Baker St','London','','NW1','United Kingdom');

CREATE TABLE PartsOrder (
	Id INTEGER PRIMARY KEY,
	CustomerId INTEGER,
	OrderDate TEXT,
	ShippedDate TEXT,
	Quantity INTEGER,
	ItemNumber INTEGER,
	ItemName TEXT,
	Cost REAL,
	FOREIGN KEY(CustomerId) REFERENCES Customer(Id)
);

INSERT INTO PartsOrder(CustomerId,OrderDate,ShippedDate,ItemName,ItemNumber,Quantity,Cost)
	VALUES
	(1,'2001-07-13','2001-08-21','Brakes',47109,9,359.82),
	(1,'2003-08-21','2003-09-16','Lamp',50927,2,5.98),
	(2,'2019-10-11','2019-10-11','Flange',90133,7,29.33),
	(5,'2021-06-19','2021-06-21','Fan',715901,1,62.78),
	(5,'2021-11-14','2021-11-26','Brakes',47109,4,159.92),
	(5,'2022-04-17','2022-05-15','Lamp',50927,2,5.98),
	(4,'2021-11-14','2021-11-26','Motor',39419,4,394.00),
	(3,'2023-01-08','2023-01-19','Muffler',81945,1,89.99);
