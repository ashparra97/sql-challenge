-------Create table schemas-------

-- Departments Table
CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL, 
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Employee Title Table
CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL, 
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

-- Employees Table
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL, 
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Department Manager Table 
CREATE TABLE dept_managers(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Department Employee Table 
CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Salaries Table
CREATE TABLE salaries(
	emp_no INT, 
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

