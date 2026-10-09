CREATE DATABASE Employee_Database_schema;
USE Employee_Database_schema;
CREATE TABLE Departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(100)
);
CREATE TABLE location(location_id INT PRIMARY KEY,location VARCHAR(30));
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
gender ENUM('m','f'),
age INT,hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id)
);
ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE employees
MODIFY designation VARCHAR(255);

ALTER TABLE employees
DROP COLUMN age;
DESCRIBE employees;

ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO departments_info;

SELECT * FROM location;
RENAME TABLE location TO locations;

TRUNCATE TABLE employees;

DROP TABLE employees;

DROP DATABASE employee_database_schema;


CREATE DATABASE Employee_Database_schema;

USE Employee_Database_schema;

CREATE TABLE department(
department_id INT PRIMARY KEY,
department_name VARCHAR(100));

CREATE TABLE location(
location_id INT PRIMARY KEY,
location VARCHAR(30));

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
gender ENUM('m','f'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
FOREIGN KEY (department_id) REFERENCES department(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id)
);

ALTER TABLE	department
MODIFY department_name VARCHAR(100) NOT NULL UNIQUE;


ALTER TABLE employees
DROP FOREIGN KEY employees_ibfk_2;

ALTER TABLE location
MODIFY location_id INT AUTO_INCREMENT;

ALTER TABLE employees
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id) REFERENCES location(location_id);

DESCRIBE employees;

ALTER TABLE location
MODIFY location VARCHAR(30) NOT NULL UNIQUE;

ALTER TABLE employees
MODIFY employee_name VARCHAR(100) NOT NULL;

ALTER TABLE employees
ADD CONSTRAINT chk_age CHECK (age>=18);

ALTER TABLE employees
ALTER COLUMN hire_date SET DEFAULT (current_date);

