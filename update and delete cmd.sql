CREATE DATABASE college;
USE college;

CREATE TABLE student(
roll INT,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(20),
CONSTRAINT PK_student PRIMARY KEY (roll)
);

INSERT INTO student VALUES (101, 'sumaiya', 56, 'C', 'dhaka');
INSERT INTO student VALUES (102, 'rohan', 82, 'A+', 'dhaka');
INSERT INTO student VALUES (103, 'saleh', 79, 'A', 'chittagong');
INSERT INTO student VALUES (104, 'saif', 65, 'B', 'dhaka');
INSERT INTO student VALUES (105, 'shahin', 57, 'C', 'chittagong');
INSERT INTO student VALUES (106, 'vabna', 68, 'B', 'tangail');
INSERT INTO student VALUES (107, 'chinu', 72, 'A', 'joshor');

SELECT * FROM student;

SET SQL_SAFE_UPDATES = 0;  -- safe mood off

-- UPDATE -> specific records change korte chaile
UPDATE student 
SET marks = marks + 1;

UPDATE  student
SET grade = 'O'
WHERE grade = 'A';

-- DELETE -> specific records delete korte chaile
DELETE FROM student
WHERE marks < 60; 


DROP TABLE student;
DROP DATABASE college;


