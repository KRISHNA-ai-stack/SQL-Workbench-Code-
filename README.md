-- CREATE DATABASE College; 
CREATE DATABASE InstaGram;
-- CREATE DATABASE Company;
USE Instagram;


-- USE InstaGram;
-- USE College;


-- CREATE TABLE Student (
-- 	roll_number INT , 
--     student_name VARCHAR(30) , 
--     age INT 
-- );

-- INSERT INTO Student
-- VALUES
-- (109 , "Alex" , 20), 
-- (110 , "Sham" , 24),
-- (111 , "Bob" , 28);

-- SELECT * FROM Student;
-- SHOW DATABASES;
-- SHOW TABLES;


CREATE TABLE Users (
	id INT PRIMARY KEY , 
    age INT ,
    User_Name VARCHAR (30) NOT NULL , 
    Email VARCHAR (50) UNIQUE  , 
    Followers INT DEFAULT 25000 , 
    User_Following INT ,
    CONSTRAINT CHECK ( age >= 18 ) 
) ;

-- CREATE TABLE Post (
-- 	id INT PRIMARY KEY , 
--     content VARCHAR ( 100 ) , 
--     User_id INT ,
--     FOREIGN KEY ( User_id ) REFERENCES Users(id) 
-- ) ;

INSERT INTO Users ( id , age , User_Name , Email , Followers , User_Following ) 
VALUES 
(1 , 10 , "Bro" , "Bro1@gmail.com" , 100 , 120 ) ,
(3 , 60 , "Alex" , "Bro2@gmail.com" , 400 , 125 ) , 
(5 , 20 , "Blop" , "Bro3@gmail.com" , 300 , 130 ) , 
(9 , 30 , "Gork" , "Bro4@gmail.com" , 200 , 135 ) ;

-- SELECT age , id FROM Users ; 

-- SELECT * FROM Users ;

-- SELECT DISTINCT age FROM Users ; 

SELECT * FROM Users
WHERE Followers >= 200;

SELECT 
    name, Followers, age
FROM
    Users
WHERE
    age >= 18;
    
SELECT name , age , Followers , email 
FROM Users
-- WHERE age > 15 AND Followers > 200 ;
-- WHERE age > 15 OR Followers > 200 ; 
-- WHERE age BETWEEN 15 AND 17 ; 
-- WHERE email IN ("Bro4@gmail.com" , "Bro3@gmail.com")
-- WHERE age IN ( 14 , 16 )
-- WHERE age NOT IN ( 14 , 16 )  
LIMIT 2 ;  


SELECT name , age , Followers
FROM Users 
ORDER BY Followers ASC  ;
-- ORDER BY Followers DESC 

SELECT MAX(Followers) ;
SELECT MAX(age)
FROM Users ; 

SELECT COUNT(age)
FROM Users
WHERE age = 14 ; 

SELECT AVG(avg) ;
SELECT MIN(avg) ;
SELECT SUM(age) 





