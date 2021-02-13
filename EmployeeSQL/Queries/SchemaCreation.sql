-- DROP TABLE departments CASCADE;
-- DROP TABLE titles CASCADE;
-- DROP TABLE salaries CASCADE;
-- DROP TABLE employees CASCADE;
-- DROP TABLE dept_emp CASCADE;
-- DROP TABLE dept_manager CASCADE;

-- CREATE TABLE departments (
-- 	dept_no TEXT PRIMARY KEY,
-- 	dept_name TEXT
-- );

-- CREATE TABLE titles (
-- 	title_id TEXT PRIMARY KEY,
-- 	title TEXT 
-- );

-- CREATE TABLE salaries (
-- 	emp_no INT PRIMARY KEY,
-- 	salary INT 
-- );

-- CREATE TABLE employees (
-- 	emp_no INT PRIMARY KEY,
-- 	emp_title_id TEXT ,
-- 	birth_date DATE,
-- 	first_name TEXT,
-- 	last_name TEXT,
-- 	sex TEXT,
-- 	hire_date DATE,
-- -- 	CONSTRAINT fk_emp_title_id
--  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
-- );


-- CREATE TABLE dept_emp (
-- 	emp_no INT,
-- 	dept_no TEXT,
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
-- -- 	CONSTRAINT fk_dept_no
--  	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
-- 	PRIMARY KEY(emp_no, dept_no)
-- );


-- CREATE TABLE dept_manager (
-- 	dept_no TEXT,
-- 	emp_no INT,
--     FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
--     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
-- 	PRIMARY KEY(dept_no, emp_no)
-- );