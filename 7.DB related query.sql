CREATE DATABASE college;
USE college;

CREATE TABLE student(
id INT,
name VARCHAR(50),
age INT NOT NULL,
CONSTRAINT PK_student PRIMARY KEY (id)
);

INSERT INTO student VALUES(1, 'sumaiya', 21);
INSERT INTO student VALUES(2, 'rohan', 21);

SELECT * FROM student;

-- table and database show korbe 
 SHOW DATABASES;
 SHOW TABLES;
 
 -- drop -> all delete with table structure
 -- truncate -> tabler value delete kintu table structure thakbe
 TRUNCATE TABLE student;
 DROP TABLE student;
 DROP DATABASE college;
 
 
  
 


