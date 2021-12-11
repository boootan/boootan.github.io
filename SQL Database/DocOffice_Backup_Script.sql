use doctoroffice;

DROP TABLE IF EXISTS Person_bak;
CREATE TABLE Person_bak AS SELECT * FROM Person;

DROP TABLE IF EXISTS Doctor_bak;
CREATE TABLE Doctor_bak AS SELECT * FROM Doctor;

DROP TABLE IF EXISTS Prescription_bak;
CREATE TABLE Prescription_bak AS SELECT * FROM Prescription;

DROP TABLE IF EXISTS Patient_bak;
CREATE TABLE Patient_bak AS SELECT * FROM Patient;

DROP TABLE IF EXISTS Med_Test_bak;
CREATE TABLE Med_Test_bak AS SELECT * FROM Med_Test;

DROP TABLE IF EXISTS Appointment_bak;
CREATE TABLE Appointment_bak AS SELECT * FROM Appointment;

DROP TABLE IF EXISTS DoctorSpecialty_bak;
CREATE TABLE DoctorSpecialty_bak AS SELECT * FROM DoctorSpecialty;

DROP TABLE IF EXISTS Audit_bak;
CREATE TABLE Audit_bak AS SELECT * FROM Audit;

DROP TABLE IF EXISTS checkPrescription_bak;
CREATE TABLE checkPrescription_bak AS SELECT * FROM checkPrescription;

DROP TABLE IF EXISTS checkTest_bak;
CREATE TABLE checkTest_bak AS SELECT * FROM checkTest;




