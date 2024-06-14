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

-- 1) add any col in student table
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 21; 

-- 2) drop any col from table
ALTER TABLE student
DROP COLUMN age; 

-- 3) coler data type change korar jonno
ALTER TABLE student 
MODIFY age VARCHAR(2);

-- 4) col name change korar jonno
ALTER TABLE student
CHANGE age stu_age INT;

-- 5) table name change korar jonno
ALTER TABLE student 
RENAME TO stu;

-- 6) table create korar pore primary key change korte hole
ALTER TABLE student
DROP PRIMARY KEY,
ADD PRIMARY KEY (roll, name);

SELECT * FROM stu;

