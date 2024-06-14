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

INSERT INTO student VALUES 
(101, 'sumaiya', 56, 'C', 'dhaka'),
(102, 'rohan', 82, 'A+', 'dhaka'),
(103, 'saleh', 79, 'A', 'chittagong'),
(104, 'saif', 65, 'B', 'dhaka'),
(105, 'shahin', 57, 'C', 'chittagong'),
(106, 'vabna', 68, 'B', 'tangail'),
(107, 'chinu', 72, 'A', 'joshor');

SELECT * FROM student;

SELECT name, marks FROM student;
 
SELECT DISTINCT city FROM student; 
 
-- CLAUSES 
 -- 1)where clause -> condition
SELECT * 
FROM student 
WHERE marks > 60 AND city='dhaka';
 
   -- between operator 
SELECT * 
FROM student 
WHERE marks BETWEEN 60 AND 80;
 
   -- IN operator
SELECT *
FROM student 
WHERE city IN('dhaka', 'tangail');
              -- dhaka ar tangailer student info
 
  -- NOT IN operator
SELECT *
FROM student 
WHERE city NOT IN('dhaka', 'tangail'); 
                  -- dhaka ar tangail bade other student info

-- 2)limit clause -> first 3 ta value print korbe 
SELECT *
FROM student 
LIMIT 3;

SELECT *
FROM student
WHERE marks > 70
LIMIT 3;

-- aggretive function
SELECT max(marks)
FROM student;

SELECT count(roll)
FROM student;

-- 3)group by clause -> 
SELECT city, count(roll)  -- city diye group korle kore city and oi city te student count 
FROM student
GROUP BY city;

SELECT city,name, count(roll)  
FROM student
GROUP BY city, name;

-- 4)order by clause -> ascending or descending ordere shajay
SELECT city, name
FROM student
ORDER BY city;  -- ascendding

SELECT city, name
FROM student
ORDER BY city DESC;  -- descending
         
         
-- **  city wise group and order kore every city te kotojon student ace ta count
SELECT city, count(roll)
FROM student 
GROUP BY city
ORDER BY city; 

--  5)having clause -> condition to apply in every group
SELECT city, count(roll) AS count
FROM student
GROUP BY city
HAVING max(marks) > 70;

/*
 difference between where and having clause
   where clause each record/row er opor applicable hoy
   having clause each grouper opr applicable  
   group create korar pore where clause kaj korbe na
*/

/*
general order of commands

SELECT col_name
FROM  table_name
WHERE condition for records
GROUP BY col_name
HAVING  condition for groups
ORDER BY col_name ASC/DESC
*/ 

SELECT city 
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING max(marks) > 80
ORDER BY city ASC;

DROP TABLE student;
DROP DATABASE college;  
 

 

 
 
 
 
