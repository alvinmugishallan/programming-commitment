create table doctor(
    Did int not null primary key,
    Dname VARCHAR(50),
    Specialty VARCHAR(100)
);
insert into doctor(did,dname,specialty) VALUES 
("001","JOHN K","RADIOLOGY"),
("002","MARIA M","PATERNITY"),
("003","ALLEN I", "PEDIATRICS")

SHOW TABLES;

Alter table doctor
ADD COLUMN Salary INT;
update doctor set salary = 400000 where did=001;