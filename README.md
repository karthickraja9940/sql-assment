Employee Database Management Using MySQL
Project Overview

This project demonstrates the design and implementation of an Employee Database Management System using MySQL DDL commands.

The database is designed to manage information related to:

Employees
Departments
Locations

The project focuses on:

Database creation
Table relationships
Primary and Foreign Keys
Data integrity constraints
Auto-increment functionality
Default values and validation rules
Database Schema
Departments Table
SQL
CREATE TABLE Departments (
department_id INT AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE
);
Location Table
SQL
CREATE TABLE Location (
location_id INT AUTO_INCREMENT PRIMARY KEY,
location_name VARCHAR(100) NOT NULL UNIQUE
);
Employees Table
SQL
CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(100) NOT NULL,
gender CHAR(1) NOT NULL,
age INT NOT NULL,
hire_date DATE DEFAULT (CURRENT_DATE),
designation VARCHAR(100),
salary DECIMAL(10,2),
department_id INT,
location_id INT,
 
CONSTRAINT chk_gender
CHECK (gender IN ('M','F')),
 
CONSTRAINT chk_age
CHECK (age >= 18),
 
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),
 
FOREIGN KEY (location_id)
REFERENCES Location(location_id)
);
Constraints Implemented
Constraint	Description
PRIMARY KEY	Unique identification for each record
AUTO_INCREMENT	Automatically generates IDs
NOT NULL	Prevents null values
UNIQUE	Prevents duplicate values
FOREIGN KEY	Maintains referential integrity
CHECK	Validates gender and age
DEFAULT	Sets current date for hire_date
Business Rules
Each employee must have a unique Employee ID.
Employee Name cannot be NULL.
Gender can only be 'M' or 'F'.
Employee Age must be 18 or above.
Hire Date defaults to the current date if not provided.
Each employee belongs to a department.
Each employee is assigned to a location.
Duplicate department and location names are not allowed.
Technologies Used
MySQL
SQL DDL Commands
GitHub
Author

Karthick Raja
 Aspiring Data Analyst

To update your GitHub repository:

Shell
git add README.md
git commit -m "Updated README with Employee Database project details"
git push origin main

This README will look professional for a Data Analyst SQL assignment portfolio.
