CREATE DATABASE college3;
USE college3;

CREATE TABLE student(
cour_id INT,
name VARCHAR(40),
CONSTRAINT PK_student PRIMARY KEY (cour_id)
);

INSERT INTO student VALUES 
(101, 'sumaiya'),
(102, 'rohan'),
(103, 'vabna');

SELECT * FROM Student;

CREATE TABLE course(
cour_id INT,
course VARCHAR(20),
CONSTRAINT PK_sourse PRIMARY KEY (cour_id)
);

INSERT INTO course VALUES 
(102, 'CSE'),
(103, 'EEE'),
(105, 'IPE'),
(107, 'CSE');

SELECT * FROM course;

-- 1)Inner join 
  -- i)theta join -> common col cour_id er basis e duita table join korbo
SELECT * 
FROM student INNER JOIN course
ON student.cour_id = course.cour_id; 

  -- ii)equi join -> common col more than one hbe
SELECT *
FROM student INNER JOIN course
ON student.cour_id=course.cour_id AND student.name = course.course;

-- 2)natural join -> condition dite hbe na..same attribute repeat hbe na 
SELECT *
FROM student NATURAL JOIN course;


SELECT  cour_id, course
FROM student NATURAL JOIN course
WHERE course = 'CSE';

-- 3)outer join
  -- i) left join -> lefter pura data
SELECT *
FROM student LEFT JOIN course
ON student.cour_id = course.cour_id;

  -- ii) right join -> righter pura data
SELECT *
FROM student RIGHT JOIN course
ON student.cour_id = course.cour_id;
  
  -- iii) full join -> left righter shb data
SELECT *
FROM student LEFT JOIN course
ON student.cour_id = course.cour_id
UNION
SELECT *
FROM student RIGHT JOIN course
ON student.cour_id = course.cour_id; 

-- **exclusive joins
  -- i)left exclusive join -> only lefte ace righte nai
SELECT *
FROM student LEFT JOIN course
ON student.cour_id = course.cour_id
WHERE course.cour_id IS NULL;  

  -- right exclusive join -> only righte ace lefte nai 
SELECT *
FROM student RIGHT JOIN course
ON student.cour_id = course.cour_id
WHERE student.cour_id IS NULL; 


DROP TABLE student;
DROP TABLE course;
DROP DATABASE college3;
