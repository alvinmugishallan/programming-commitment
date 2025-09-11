CREATE DATABASE MOH;
USE MOH;
CREATE TABLE patients_table(
patient_id VARCHAR(50) PRIMARY KEY,
patient_name VARCHAR (50),
arrival_time time,
age INT,
dob date
);
CREATE TABLE medication(
patient_id VARCHAR(50) PRIMARY KEY,
description VARCHAR(70),
medication VARCHAR(59),
doctor_name VARCHAR(70)
);
CREATE TABLE payment(
patient_id VARCHAR(50) PRIMARY KEY,
patient_name VARCHAR (50),
payment VARCHAR(50),
FOREIGN KEY (patient_id) REFERENCES patients_table(patient_id),
FOREIGN KEY (patient_id) REFERENCES medication(patient_id)
);
CREATE TABLE labtests (
patient_id VARCHAR(50)primary key ,
date DATE NOT NULL,
test_results VARCHAR(255),
FOREIGN KEY (patient_id) REFERENCES patients_table(patient_id)
);

CREATE VIEW viewone AS SELECT * FROM patients_table;
CREATE VIEW viewtwo AS SELECT patient_id, patientz_name FROM patients_table;
CREATE VIEW viewthree AS SELECT COUNT(*) AS total_patients FROM patients_table;
CREATE VIEW viewfour AS SELECT * FROM patients_table WHERE patientz_name LIKE 'M%';
CREATE VIEW viewfive AS SELECT * FROM patients_table WHERE age < 35;
CREATE VIEW viewsix AS SELECT  patientz_name, age FROM patients_table;
CREATE VIEW viewseven AS SELECT * FROM patients_table WHERE patientz_name LIKE 'J%';

CREATE VIEW vieweight AS
SELECT p.patient_id, t.test_results,m.medication,m.doctor_name
FROM patients_table p
JOIN labtests t ON p.patient_id = t.patient_id
JOIN medication m ON p.patient_id = m.patient_id;
