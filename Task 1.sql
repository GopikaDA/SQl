CREATE DATABASE CityHospital;

USE Cityhospital;

CREATE TABLE Patients
(
Patient_id int,
Patient_name varchar(25),
Age int,
Gender enum('M','F'),
Admissiondate Date
);
alter Table patients
add DoctorAssigned varchar(50);

alter table patients
modify Patient_name varchar(100);

Rename table Patients to patient_info;
TRUNCATE table Patient_info;
Drop table Patient_info;

