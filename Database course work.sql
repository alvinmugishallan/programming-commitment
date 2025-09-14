CREATE DATABASE UCUdatabase; 
USE UCUdatabase;
DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
    Gender ENUM ('Male','Female')NOT NULL,
    DateofBirth DATE NOT NULL,
    Gmail VARCHAR(100) NOT NULL,
    Program VARCHAR(100) NOT NULL,
    Year_of_study INT NOT NULL
    );

SHOW TABLES;
DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses (
Course_ID INT PRIMARY KEY AUTO_INCREMENT,
Course_name VARCHAR(50) NOT NULL,
Credit_units VARCHAR(50) NOT NULL ,
Instructor VARCHAR(50) NOT NULL
);

CREATE TABLE Registrations(
 registration_id INT PRIMARY KEY,
 student_id INT NOT NULL, 
 course_id INT NOT NULL , 
 academic_year INT NOT NULL , 
 semester ENUM('Semester 1','Semester 2')NOT NULL,
 FOREIGN KEY(student_id) REFERENCES Student (StudentID),
 FOREIGN KEY(course_id) REFERENCES Courses(Course_id)
 );
 
 CREATE TABLE Grades(
 grade_id INT PRIMARY KEY AUTO_INCREMENT,
 registration_id INT,
 marks INT,
 grade VARCHAR(1),
 FOREIGN KEY(registration_id)REFERENCES Registrations(registration_id)
 );

SHOW TABLES;
INSERT INTO Student (FirstName,LastName,Gender,DateofBirth,Gmail,Program,Year_of_study)VALUES
('Grace','Najjuka','Female','2006-03-06','grace@gmail.com','computer science',2),
('James','Mugisha','Male','2005-06-08','james@gmail.com','Law',3),
('Brian','Kwizera','Male','2003-04-10','brize@gmail.com','business management',1),
('Brenda','Mbabazi','Female','2004-02-02','brenda@gmail.com','information technology',2),
('Brandon','Luwande','Male','2003-10-01','brandon@gmail.com','law',1),
('Janet','Nalujja','Female', '2002-12-12','janet@gmail.com','data science',3),
('Mary','Nabirye','Female','2003-12-01','mary@gmail.com','law',2),
('Alice','Mbabazi','Female','2004-05-03','alice@gmail.com','law',1),
('Micheal','Mugisha','Male','2000-12-13','micheal@gmail.com','data science',3),
('David','Tumusime','Male','2006-02-21','david@gmail.com','civil engineering',4);

INSERT INTO Courses(course_id,course_name,Credit_units,Instructor)VALUES
(101,'Law',3,'Dr.Janet'),
(102,'Data science',4,'Prof.Lule'),
(103,'business management',2,'Dr.Nansubuga'),
(104,'computer science',3,'Ms.Ayesiga'),
(105,'civil engineering',5,'Mr Kagimu');

INSERT INTO Registrations(registration_id,student_id,course_id,academic_year,semester)VALUES 
(1,2,101,2025,'Semester 1'),
(2,3,103,2025,'Semester 1'),
(3,4,103,2025,'Semester 1'),
(4,1,104,2025,'Semester 1'),
(5,8,105,2025,'Semester 2'),
(6,6,102,2025,'Semester 1'),
(7,2,101,2025,'Semester 1'),
(8,7,103,2025,'Semester 2'),
(9,10,104,2025,'Semester 1'),
(10,9,105,2025,'Semester 2'),
(11,5,102,2025,'Semester 1'),
(12,3,103,2025,'Semester 2'),
(13,4,105,2025,'Semester 1'),
(14,1,101,2025,'Semester 1'),
(15,8,103,2025,'Semester 2'),
(16,6,104,2025,'Semester 1'),
(17,2,103,2025,'Semester 1'),
(18,7,105,2025,'Semester 2'),
(19,10,104,2025,'Semester 1'),
(20,9,103,2025,'Semester 2');


INSERT INTO Grades (grade_id,registration_id,marks,grade) VALUES
(1,1,80,'A'),
(2,2,88,'A'),
(3,3,70,'B'),
(4,4,67,'C'),
(5,5,50,'D'),
(6,6,39,'F'),
(7,7,80,'A'),
(8,8,70,'B'),
(9,9,100,'A'),
(10,10,60,'C');

SELECT *
FROM Student
WHERE StudentID IN(
SELECT student_id
FROM Registrations
Group BY student_id
HAVING COUNT(*)>2
);

SELECT
StudentID,
FirstName,
LastName,
Course_name,
marks,
grade
FROM Student
JOIN Registrations r ON StudentID =r.student_id
JOIN Courses c ON r.course_id = c.course_id
JOIN Grades g ON r.registration_id = g.registration_id;

SELECT
  Course_name,
  ROUND(AVG(marks),2) AS average_mark
FROM Grades
Join Registrations r ON r.registration_id = r.registration_id
JOIN COURSES c ON r.course_id = c.course_id 
Group BY Course_name;

SELECT
c.course_name,
g.grade_id,
g.registration_id,
g.marks,
g.grade
From Grades g
JOin Registrations r ON g.registration_id = r.registration_id
JOIN Courses c ON r.course_id = c.course_id
WHERE marks< 50 ;

CREATE VIEW StudentsPerformance AS
 SELECT
 s.StudentID,
 FirstName,
 LastName,
 program,
 academic_year,
 semester,
 c.course_name,
 c.Credit_units,
 g.marks,
 g.grade
 FROM Student s
 JOIN Registrations r ON s.StudentID = r.student_id
 JOIN Courses c ON r.course_id = c.Course_ID
 JOIN Grades g ON r.registration_id = g.registration_id;
 
 SELECT
 StudentID,
 FirstName,
 LastName,
 Program,
 academic_year,
 semester,
 COUNT(course_name) AS Total_Courses,
 AVG(marks) AS Average_mark
 FROM StudentsPerformance
 WHERE marks IS NOT NULL
 GROUP BY StudentID,FirstName,Program,academic_year,semester
 Order by academic_year,semester,FirstName,LastName;
 
 SELECT
 Course_name,
 semester,
 COUNT(*) AS total_Enrollments
 FROM StudentsPerformance
 GROUP BY Course_name,semester
 ORDER BY Course_name,semester;
 
 
 














 
 

         