CREATE DATABASE BUSBEE;
USE BUSBEE;

CREATE TABLE Commuter (
Commuter_ID varchar(5) PRIMARY KEY,
Commuter_FirstName varchar(255),
Commuter_LastName varchar(255),
Commuter_Email varchar(255),
Commuter_Phone varchar(15),
Commuter_IDPassport varchar(13),
Commuter_Username varchar(255),
Commuter_Password varchar(255),
Wallet decimal(10, 2),
);


CREATE TABLE BusRoute (
Route_ID int PRIMARY KEY,
From_Location varchar(255),
To_Location varchar(255),
Price decimal(10, 2),
Bus_ArrivalTime time,
Available_Seats int
);

CREATE TABLE BusTrip (
Trip_ID int PRIMARY KEY,
Commuter_ID int,
Commuter_Name varchar(255),
Route_ID int,
From_Location varchar(255),
To_Location varchar(255),
Price decimal(10, 2),
Paid decimal(10, 2),
FOREIGN KEY (Commuter_ID) REFERENCES Commuter(Commuter_ID),
FOREIGN KEY (Route_ID) REFERENCES BusRoute(Route_ID)
);

Create Table Administrator (
Admin_ID int PRIMARY KEY, 
Admin_FirstName varchar(255),
Admin_LastName varchar(255),
Admin_UserName varchar(255),
Admin_Password varchar(255));