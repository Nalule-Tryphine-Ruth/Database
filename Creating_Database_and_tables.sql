-- Active: 1664514797713@@localhost@3306@ruth
-- Creating DATABASE
CREATE DATABASE Transport_system;

CREATE TABLE passenger(
PID VARCHAR(10) PRIMARY KEY NOT NULL,
Passenger_name VARCHAR(20) NOT NULL,
Gender VARCHAR(6),
Phone Int,
Age INT,
Passenger_Address VARCHAR(10),
Destination VARCHAR(10),
LID VARCHAR(10),
EID VARCHAR(10)

);
ALTER TABLE passenger
Add CONSTRAINT EID 
FOREIGN KEY (EID)
REFERENCES Employee(EID);
-- ALTER TABLE passenger
-- DROP CONSTRAINT LID;

ALTER TABLE passenger 
ADD CONSTRAINT LID
FOREIGN KEY (LID)
REFERENCES Luggage (LID);
-- ALTER TABLE passenger
-- DROP CONSTRAINT EID;

CREATE TABLE Booking(
TID VARCHAR(20) PRIMARY KEY NOT NULL,
PID VARCHAR(10) NOT NULL,
Passenger_name VARCHAR(10) NOT NULL,
Gender VARCHAR(6),
Destination VARCHAR(10),
Price INT,
Date_of_departure Date,
Date_of_Arrival DATE,
Transport_mean VARCHAR(20),
EID VARCHAR(10) NOT NULL
);
-- Creating a foreign key for bookings table
ALTER TABLE Booking
ADD CONSTRAINT EIDs
FOREIGN KEY (EID)
REFERENCES Employee(EID);
ALTER TABLE Booking
DROP CONSTRAINT EIDs;
ALTER TABLE Booking
ADD CONSTRAINT PID
FOREIGN KEY (PID)
REFERENCES passenger(PID)
;
ALTER TABLE Booking
DROP CONSTRAINT PID;
CREATE TABLE Employee(
EID VARCHAR(10) PRIMARY KEY NOT NULL UNIQUE,
Employee_name VARCHAR(20),
E_Gender VARCHAR(6),
Age INT,
DID VARCHAR(10) NOT NULL,
Roles VARCHAR(10) 
);
ALTER TABLE Employee
ADD CONSTRAINT DID
FOREIGN KEY (DID)
REFERENCES Department (DID);
ALTER TABLE Employee
DROP CONSTRAINT DID;

CREATE TABLE Department(
DID VARCHAR(10) PRIMARY KEY NOT NULL UNIQUE,
Department_name VARCHAR(20),
EID VARCHAR(10)

);
ALTER TABLE Department
ADD CONSTRAINT FK_EID
FOREIGN KEY (EID)
REFERENCES Employee (EID);
-- Delecting a constraint from the Department Table
ALTER TABLE Department
DROP CONSTRAINT FK_EID;S

CREATE TABLE Luggage (
LID VARCHAR(10) PRIMARY KEY NOT NULL UNIQUE,
EID VARCHAR(10),
luggage_weight INT,
luggage_type VARCHAR(10) 
);
-- Updating the Table by adding new collumns
ALTER TABLE Luggage
ADD COLUMN PID VARCHAR(10);

ALTER TABLE Luggage 
ADD CONSTRAINT FK_EIDS
FOREIGN KEY (EID)
REFERENCES Employee(EID);
ALTER TABLE luggage
DROP CONSTRAINT FK_EIDS;
ALTER TABLE Luggage
ADD CONSTRAINT FK_PID
FOREIGN KEY (PID)
REFERENCES Passenger(PID);





ALTER TABLE Luggage
ADD COLUMN EID;

