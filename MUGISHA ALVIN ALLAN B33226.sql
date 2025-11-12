CREATE DATABASE STUDENT;
USE STUDENT;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Programme;


CREATE TABLE STUDENT (
    Regno VARCHAR(20) PRIMARY KEY,
    Fname VARCHAR(50) CHECK (Fname = LOWER(Fname)),
    Lname VARCHAR(50),
    Course VARCHAR(4) CHECK (LENGTH(Course) = 4),
    DISTRICT VARCHAR(50),
    Date_of_JOIN DATE NOT NULL,
    Mobileno VARCHAR(15),
    Email_Address VARCHAR(100),
    Fees DECIMAL(10,2),
    Prog_ID VARCHAR(10)
);


INSERT INTO STUDENT VALUES 
('BSIT/987', 'peter', 'Okello', 'MSIS', 'Kampala', CURDATE(), '256782845678', 'pokello@gmail.com', 20000, 'BSIT'),
('BSCS/657', 'mary', 'Nambi', 'MICT', 'Mukono', CURDATE(), '256772770557', 'mnambi@gmail.com', 30000, 'BSCS');


CREATE TABLE Programme (
    Prog_name VARCHAR(100),
    Prog_ID VARCHAR(10) PRIMARY KEY,
    Campus VARCHAR(50)
);


INSERT INTO Programme VALUES 
('Information Technology', 'BSIT', 'Lubaga'),
('Computer Science', 'BSCS', 'Mukono');


ALTER TABLE STUDENT 
ADD CONSTRAINT chk_mobile_length 
CHECK (LENGTH(Mobileno) = 12);


ALTER TABLE STUDENT 
ADD CONSTRAINT chk_email_format 
CHECK (Email_Address LIKE '%@%');


ALTER TABLE STUDENT 
ADD CONSTRAINT chk_fees_range 
CHECK (Fees BETWEEN 10000 AND 50000);


ALTER TABLE STUDENT 
ADD CONSTRAINT chk_regno_format 
CHECK (Regno LIKE 'BSIT/%' OR Regno LIKE 'BSCS/%');

ALTER TABLE STUDENT 
ADD Hall_Residence VARCHAR(100);

ALTER TABLE STUDENT 
DROP CONSTRAINT chk_email_format;


SHOW CREATE TABLE STUDENT;


ALTER TABLE STUDENT 
ADD CONSTRAINT fk_student_programme 
FOREIGN KEY (Prog_ID) REFERENCES Programme(Prog_ID);


DESCRIBE STUDENT;
DESCRIBE Programme;


SELECT * FROM STUDENT;
SELECT * FROM Programme;