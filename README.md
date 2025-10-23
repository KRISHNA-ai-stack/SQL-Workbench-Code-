# 🚀 TESLA EMPLOYEE DATABASE *PROJECT*

This project demonstrates how to create and manage a structured employee database for a fictional company named **Tesla** using **MySQL**.  
It includes examples of DDL, DML, and DCL-related SQL commands for creating tables, inserting records, updating data, and modifying the database schema.

---

## 📁 *DATABASE OVERVIEW*

**Database Name:** `Tesla`  
**Primary Table:** `Tesla_Employees`

This database stores employee information such as personal details, job roles, department, salary, and reporting structure.

---

## 🧱 Step 1: CREATE DATABASE | TABLE  

```sql
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

