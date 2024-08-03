-- This script does the following:

-- 1) Creates a database named HospitalDB.
-- 2) Creates a Patients table with columns for patient information.
-- 3) Inserts 50 fictional patients into the Patients table.
-- 4) Creates a Diseases table with columns for disease reports, linked to the Patients table by PatientID. This tables aims to represent the medical
-- history of each patient in a simple way. 
-- 5) Inserts some fictional disease reports into the Diseases table.
-- 6) Creates a Consultations table with columns for consultation dates, also linked to the Patients table by PatientID.
-- 7) Inserts some fictional consultation dates (appointments) into the Consultations table.



-- 	#######################							1) Create the database 				     ##################################
DROP DATABASE IF EXISTS HospitalDB; -- In case you  already have a DB with this name, it will be delete 
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- ########################					2) Create the patients table					##############################
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    PatientName VARCHAR(100),
    BirthYear INT,
    Gender CHAR(1),
    BirthCountry VARCHAR(50)
);

-- #########################		  		 3)  Insert 50 fictional patients				   #############################
INSERT INTO Patients (PatientName, BirthYear, Gender, BirthCountry) VALUES
('John Doe', 1985, 'M', 'USA'),
('Jane Smith', 1990, 'F', 'Canada'),
('Mike Johnson', 1975, 'M', 'UK'),
('Emily Davis', 1988, 'F', 'Australia'),
('Michael Brown', 1982, 'M', 'New Zealand'),
('Sarah Wilson', 1995, 'F', 'Ireland'),
('David Martinez', 1980, 'M', 'Spain'),
('Laura Garcia', 1992, 'F', 'Mexico'),
('James Rodriguez', 1978, 'M', 'Colombia'),
('Linda Lopez', 1985, 'F', 'Argentina'),
('Robert Gonzalez', 1990, 'M', 'Chile'),
('Mary Hernandez', 1983, 'F', 'Peru'),
('Joseph Lee', 1989, 'M', 'South Korea'),
('Barbara Clark', 1977, 'F', 'Japan'),
('Christopher Walker', 1981, 'M', 'Germany'),
('Patricia Hall', 1994, 'F', 'France'),
('Daniel Young', 1976, 'M', 'Italy'),
('Nancy Allen', 1987, 'F', 'Netherlands'),
('Paul King', 1993, 'M', 'Belgium'),
('Karen Wright', 1984, 'F', 'Sweden'),
('Mark Scott', 1986, 'M', 'Norway'),
('Sandra Green', 1991, 'F', 'Denmark'),
('Steven Adams', 1979, 'M', 'Finland'),
('Jessica Baker', 1982, 'F', 'Iceland'),
('Andrew Nelson', 1988, 'M', 'South Africa'),
('Margaret Carter', 1995, 'F', 'Egypt'),
('Joshua Mitchell', 1983, 'M', 'Nigeria'),
('Dorothy Perez', 1992, 'F', 'Kenya'),
('Ryan Roberts', 1980, 'M', 'Ghana'),
('Rebecca Turner', 1989, 'F', 'India'),
('Jack Phillips', 1977, 'M', 'China'),
('Michelle Campbell', 1981, 'F', 'Russia'),
('Kevin Parker', 1994, 'M', 'Brazil'),
('Amanda Evans', 1976, 'F', 'Argentina'),
('Brian Edwards', 1987, 'M', 'Uruguay'),
('Melissa Collins', 1993, 'F', 'Paraguay'),
('Charles Stewart', 1984, 'M', 'Venezuela'),
('Ashley Sanchez', 1986, 'F', 'Bolivia'),
('Matthew Morris', 1991, 'M', 'Peru'),
('Kimberly Rogers', 1979, 'F', 'Ecuador'),
('Anthony Reed', 1982, 'M', 'Canada'),
('Donna Cook', 1988, 'F', 'USA'),
('Frank Bell', 1995, 'M', 'UK'),
('Emily Murphy', 1983, 'F', 'Australia'),
('Brandon Bailey', 1992, 'M', 'New Zealand'),
('Melissa Rivera', 1980, 'F', 'Ireland'),
('Jason Cooper', 1989, 'M', 'Spain'),
('Lisa Richardson', 1977, 'F', 'Mexico'),
('Benjamin Cox', 1981, 'M', 'Colombia'),
('Shirley Howard', 1994, 'F', 'Argentina');



-- ####################  					  4) Create the diseases table 						##########################
 -- This is focused on representing the patient's clinical history in a simplified way.
CREATE TABLE Diseases (
    DiseaseID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    ReportedDisease VARCHAR(100),
    ReportedTreatment VARCHAR(100),
    DiseaseType VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)); --  set the patient ID field of the Patients table as a foreign key to establish a reletionship between those 2 tables 


-- ######################## 						5)  Insert some fictional disease reports				####################
INSERT INTO Diseases (PatientID, ReportedDisease, ReportedTreatment, DiseaseType) VALUES
(1, 'Hypertension', 'Medication', 'Chronic'),
(2, 'Diabetes', 'Insulin', 'Chronic'),
(3, 'Flu', 'Rest and fluids', 'Acute'),
(4, 'Asthma', 'Inhaler', 'Chronic'),
(5, 'Migraine', 'Pain relief', 'Chronic'),
(6, 'Common Cold', 'Rest', 'Acute'),
(7, 'Allergies', 'Antihistamines', 'Chronic'),
(8, 'Back Pain', 'Physiotherapy', 'Chronic'),
(9, 'Depression', 'Therapy', 'Chronic'),
(10, 'Arthritis', 'Medication', 'Chronic');

-- ##################								6) Create the consultations table					######################
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    AppointmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)); --  set the patient ID field of the Patients table as a foreign key to establish a reletionship between those 2 tables 


-- #######################						 7) Insert some fictional appointment 					#####################
INSERT INTO Appointment (PatientID, AppointmentDate) VALUES
(1, '2024-01-10'),
(2, '2024-02-15'),
(3, '2024-03-20'),
(4, '2024-04-25'),
(5, '2024-05-30'),
(6, '2024-06-05'),
(7, '2024-07-10'),
(8, '2024-08-15'),
(9, '2024-09-20'),
(10, '2024-10-25');




