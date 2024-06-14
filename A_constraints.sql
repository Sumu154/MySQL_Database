CREATE DATABASE college;
USE college;

-- 1) null/ not null

-- 2) default -> oi col er value insert na dile default value set korbe
CREATE TABLE emp( 
id INT,
salary INT DEFAULT 250000
); 

INSERT INTO emp(id) VALUES (101);

SELECT * FROM emp;

-- 3) check -> value insert korar somoy check kore insert korbe
CREATE TABLE person(
age INT,
CONSTRAINT age_check CHECK (age >= 18)
);  

INSERT INTO person VALUES (14);   -- insert hbe na
INSERT INTO person VALUES (20);

SELECT * FROM person;

DROP TABLE emp;
DROP TABLE person;
DROP DATABASE college; 


  
 