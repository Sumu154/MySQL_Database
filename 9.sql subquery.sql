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
(106, 'vabna', 68, 'B', 'tangail');

SELECT * FROM student;

/*
nested query used in 3 ways
   1) SELECT
   2) IN
   3) FROM	
*/   

-- jadr marks avg theke beshi tadr name and roll retuen
SELECT roll, name 
FROM student
WHERE marks > (
   SELECT AVG(marks) 
	FROM student
	);

-- jadr roll even number tadr roll find 
SELECT name, roll
FROM student
WHERE roll IN(
	SELECT roll 
    FROM student
    WHERE roll%2 = 0    -- [102, 104, 106]
    );
    
-- dhakar joto student ace tadr modhhe heighest marks find
SELECT max(marks)
FROM (SELECT * 
	  FROM student
      WHERE city = 'dhaka') AS temp;
     




