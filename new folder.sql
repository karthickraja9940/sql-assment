create database employeedb;
use employeedb;

create table if not exists departmentdb(
department_id int primary key,
department_name varchar(100)
);
create table if not exists locationdb(
location_id int primary key,
location_name varchar(30)
);
create table if not exists employeedb(
employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1),
    age INT,
    hire_date DATE,
    designation VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    location_id INT,
    foreign key(department_id)references departmentdb(department_id),
    foreign key(location_id)references locationdb(location_id)
    );
    
    alter table employeedb add column email  varchar (100);
    
    alter table employeedb modify column designation  varchar(100);
    
    alter table employeedb drop column age ;
    
    alter table employeedb rename column hire_date to date_of_joining;
    
  rename table   departmentdb to departments_info;
  
  rename table locationdb to locations;
  
  drop database employeedb;

 truncate table employees;
  

 
 create database employee;
 use employee;
 create table if not exists departmentdb(
department_id int primary key,
department_name varchar(100)
);
create table if not exists locationdb(
location_id int primary key,
location_name varchar(30)
);
create table if not exists employeedb(
employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1),
    age INT,
    hire_date DATE,
    designation VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    location_id INT,
    foreign key (department_id) references departmentdb (department_id),
    foreign key (location_id) references locationdb (location_id)
    );
CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100) NOT NULL UNIQUE
);
ALTER TABLE Departments
MODIFY department_name VARCHAR(100) NOT NULL;
ALTER TABLE Departments
ADD UNIQUE (department_name);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (location_id)
);

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL,
    age INT NOT NULL,
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    location_id INT,

    PRIMARY KEY (employee_id),

    CHECK (gender IN ('M', 'F')),
    CHECK (age >= 18),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);