CREATE DATABASE college;
USE college;

CREATE TABLE stu1(
id INT,
name VARCHAR(20),
CONSTRAINT PK_stu1 PRIMARY KEY (id)
);

INSERT INTO stu1 VALUES (1, 'sumaiya');
INSERT INTO stu1 VALUES (2, 'rohan');
INSERT INTO stu1 VALUES (3, 'saleh');
INSERT INTO stu1 VALUES (4, 'chinu');

CREATE TABLE stu2(
id INT,
name VARCHAR(20),
CONSTRAINT PK_stu2 PRIMARY KEY (id)
);

INSERT INTO stu2 VALUES (4, 'chinu');
INSERT INTO stu2 VALUES (3, 'saleh');
INSERT INTO stu2 VALUES (5, 'slona');
INSERT INTO stu2 VALUES (6, 'fatty');

-- 1) union -> shb record return korbe..duplicate repeat hbe na
SELECT * FROM stu1
UNION 
SELECT * FROM stu2; 

-- 2) union all -> duplicate gulao repeat hbe
SELECT * FROM stu1
UNION ALL
SELECT * FROM stu2;

-- 3) intersection -> only common record gula return korbe
SELECT * FROM stu1
INTERSECT
SELECT * FROM stu2;  -- error dekhacce still kaj korbe
 
DROP TABLE stu1;
DROP TABLE stu2;
DROP DATABASE college;





