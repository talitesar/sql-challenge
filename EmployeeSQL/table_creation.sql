
CREATE TABLE titles
(title_id varchar(10) PRIMARY KEY,
title varchar(30)); 

CREATE TABLE departments 
(dept_no varchar(10) PRIMARY KEY NOT NULL,
dept_name varchar(30) NOT NULL);

CREATE TABLE employees
(emp_no int PRIMARY KEY NOT NULL,
emp_title_id varchar(10),
birth_date varchar(10),
first_name varchar(30),
last_name varchar(30),
sex varchar(10),
hire_date varchar(10),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

CREATE TABLE dept_emp 
(emp_no int NOT NULL,
dept_no varchar(10) NOT NULL,
PRIMARY KEY(emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

CREATE TABLE salaries 
(emp_no int PRIMARY KEY,
salary int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_manager
(dept_no varchar(10) NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY(dept_no, emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no));