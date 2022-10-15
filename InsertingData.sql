-- Active: 1664514797713@@localhost@3306@transport_system
-- Inserting Data into the Tables
-- Passengers Table 
 INSERT INTO  Booking
 (
 TID,PID,Passenger_name,Gender,Destination,Price,Date_of_Departure,Date_of_Arrival,Transport_mean,EID
 )
 VALUES
--  Entry one
 (
 "T001","POO1","Mukasa Said","Male","Kalangala",30000,"2022-09-10","2022-09-10","Mv-Kalangala","E001"
 ),
--  Entry two
 (
"T002","POO2","Ochwo Joseph","Male","Mwanza",50000,"2022-09-10","2022-09-10","Mv-Kalangala","E001"
 ),
--  Entry three
 (
"T003","POO3","Byaruhanga Moses","Male","Kalangala",30000,"2022-09-10","2022-09-10","Mv-Kalangala","E001"
 ),
--  Entry four
 (
"T004","POO4","Karungi Ruth","Female","Koome",35000,"2022-09-10","2022-09-10","Mv-Kalangala","E001"
 );
  
INSERT INTO  passenger
 (
PID,passenger_name,Gender,Phone,Age,Passenger_Address,Destination,LID,EID
 )
 VALUES
--  Entry one
 (
 "POO1","Mukasa Said","Male",0756118860,22,"Kampala","Kalangala","L001","EOO1"
 ),
--  Entry two
 (
"POO2","Ochwo Joseph","Male",0764547838,34,"Arua","Mwanza","LM01","E001"
 ),
--  Entry three
 (
"POO3","Byaruhanga Moses","Male",0756118860,22,"Mbarara","Kalangala","L002","EOO1"
 ),
--  Entry four
 (
"POO4","Karungi Ruth","Female",073648489,23,"Lwengo","Koome","L003","E001"
 );
TRUNCATE TABLE passenger;

 INSERT INTO Employee
 (
    EID,Employee_name,E_Gender,Age,DID,Roles
 )
 VALUES
--  Entry one
 (
 "EOO1","Mukalaazi Ronald","Male",45,"D001","Ferry-Captain"
 ),
--  Entry two
 (
 "EOO2","Musoke Peter","Male",25,"D004","Engineer"
 ),
--  Entry three
 (
 "EOO3","Nakitto Alice Mary","Female",24,"D003","Waitress"
 ),
--  Entry four
 (
 "EOO4","Mukiibi Reagan","Male",45,"D001","Co-Captain"
 );
 INSERT INTO department
 (
    DID,Department_name,EID
 )
 VALUES
--  Entry one
 (
 "D001","Sailors","E001"
 ),
--  Entry two
 (
 "D004","Engineering","E002"
 ),
--  Entry three
 (
 "D003","Catering and Hospitality","E003"
 ),
--  Entry four
 (
 "D002","Co-Sailors","E004"
 );
--  This is used to empty the table
TRUNCATE TABLE Department;
DELETE FROM booking;
 
Insert INTO Luggage
(
LID,Luggage_weight,Luggage_Type,PID
)  
VALUES
--  Entry one
 (
 "L001",14,"Suit case","P001"
 ),
--  Entry two
 (
"LM01",13,"Suit Case","P002"
 ),
--  Entry three
 (
"L002",13,"Suit Case","P003"
 ),
--  Entry four
 (
"L003",13,"Suit Case","P004"
 );

SELECT * FROM booking;
ALTER TABLE booking
DROP COLUMN TICKET;

DROP TABLE booking