CREATE DATABASE Tesla;
USE Tesla; 
CREATE TABLE Tesla_Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    department VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    location VARCHAR(50),
    manager_id INT
);

INSERT INTO Tesla_Employees 
(first_name, last_name, department, position, salary, hire_date, email, phone, location, manager_id)
VALUES
('Elon', 'Musk', 'Management', 'CEO', 1000000.00, '2010-07-01', 'elon.musk@tesla.com', '9876543210', 'Austin', NULL),
('Franz', 'von Holzhausen', 'Design', 'Chief Designer', 450000.00, '2012-04-15', 'franz.h@tesla.com', '9988776655', 'Los Angeles', 1),
('Drew', 'Baglino', 'Engineering', 'SVP of Powertrain', 400000.00, '2013-09-20', 'drew.b@tesla.com', '9123456789', 'Austin', 1),
('Kate', 'Smith', 'Finance', 'Financial Analyst', 120000.00, '2018-06-10', 'kate.s@tesla.com', '9001122334', 'Austin', 3),
('Ryan', 'Patel', 'HR', 'HR Manager', 150000.00, '2016-11-25', 'ryan.p@tesla.com', '9112233445', 'Austin', 1);

-- SELECT * FROM Tesla_Employees;
-- SELECT first_name FROM Tesla_Employees;
-- SELECT last_name FROM Tesla_Employees;
-- SELECT department FROM Tesla_Employees;
-- SELECT position FROM Tesla_Employees;
-- SELECT salary FROM Tesla_Employees;
-- SELECT hire_date FROM Tesla_Employees;
-- SELECT email FROM Tesla_Employees;
-- SELECT phone FROM Tesla_Employees;
-- SELECT location FROM Tesla_Employees;
-- SELECT manager_id FROM Tesla_Employees;

-- SELECT DISTINCT manager_id FROM Tesla_Employees;

-- SELECT * FROM Tesla_Employees
-- WHERE salary > 160000
-- WHERE manager_id = 1
-- LIMIT 3 ;

-- SELECT first_name , last_name  FROM Tesla_Employees 
-- WHERE email  IN ('elon.musk@tesla.com' , 'ryan.p@tesla.com' , 'kate.s@tesla.com')
-- WHERE salary > 160000 AND manager_id = 1 
-- WHERE salary > 160000 OR manager_id = 1
-- WHERE salary BETWEEN 150000.00 AND 1000000.00
-- ORDER BY first_name , last_name  ASC  ;


-- SELECT MAX(salary) FROM Tesla_Employees;
-- SELECT MIN(salary) FROM Tesla_Employees;
-- SELECT COUNT(salary) FROM Tesla_Employees;
-- SELECT AVG(salary) FROM Tesla_Employees;
-- SELECT SUM(salary) FROM Tesla_Employees;

-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE Tesla_Employees
-- SET salary = 500
-- WHERE manager_id = 1;
-- SELECT * FROM Tesla_Employees;

-- DELETE FROM Tesla_Employees
-- WHERE manager_id = 1 ;
-- SELECT * FROM Tesla_Employees;

-- ALTER TABLE Tesla_Employees
-- ADD COLUMN Religion VARCHAR(25);
-- SELECT * FROM Tesla_Employees;

-- ALTER TABLE Tesla_Employees
-- DROP COLUMN Religion;
-- SELECT * FROM Tesla_Employees;

-- ALTER TABLE SpaceX_Employees
-- RENAME TO Tesla_Employees;
-- SHOW TABLES;

-- ALTER TABLE Tesla_Employees 
-- CHANGE COLUMN emp_id Employee_id INT;

-- ALTER TABLE Tesla_Employees
-- MODIFY phone INT DEFAULT 5;
-- SELECT * FROM Tesla_Employees


