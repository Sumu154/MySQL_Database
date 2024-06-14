CREATE DATABASE college;
USE college;

CREATE TABLE student(
roll INT,
name VARCHAR(50),
CONSTRAINT PK_student PRIMARY KEY (roll)
);

-- only table structure with attribute dekhabe
SELECT * FROM student;

-- value insert
INSERT INTO student VALUES (101, 'sumaiya') ;
INSERT INTO student VALUES (102, 'rohan');

-- value insert korar por table dekhbo
SELECT * FROM student;  -- eta barbar na lkhe oporer line thekeo execute kora jabe 

 DROP TABLE student;
 DROP DATABASE college;






