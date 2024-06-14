CREATE DATABASE college;
USE college;

-- 1)primary key
  -- when create the table
CREATE TABLE student(
roll INT,
name VARCHAR(50),
CONSTRAINT PK_student PRIMARY KEY (roll)
);

-- 2)foreighn key
  -- when create the table
CREATE TABLE department(
id INT,
name VARCHAR(50),
CONSTRAINT PK_dept PRIMARY KEY (id)
);

INSERT INTO department VALUES (1, 'CSE');
INSERT INTO department VALUES (2, 'EEE');

SELECT * FROM department;

CREATE TABLE teacher(
id INT,
name VARCHAR(20),
dept_id INT,
CONSTRAINT PK_teacher PRIMARY KEY (id),
CONSTRAINT FK_teacher FOREIGN KEY (dept_id) REFERENCES department (id)
ON UPDATE CASCADE
ON DELETE CASCADE 
);
         -- dept table er id = teacher table er dept_id

INSERT INTO teacher VALUES (101, 'sumaiya', 1);
INSERT INTO teacher VALUES (102, 'rohan', 2);
INSERT INTO teacher VALUES (103, 'saleh', 1);

SELECT * FROM teacher;

-- cascade -> parent table e value change hole child table eo change hbe
UPDATE department
SET id = 3
WHERE id = 1; 


DROP TABLE student;
DROP TABLE department;
DROP TABLE teacher;
DROP DATABASE college;
  
  


 