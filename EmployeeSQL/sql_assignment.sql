-- Create table schemas
-- Departments Table
CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL, 
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
)
-- Employees Table
CREATE TABLE employees (
	emp_no INT,
	birth_date DATE NOT NULL, 
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
)

-- Department Employee Table 
CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR(30) NOT NULL, 
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
-- Department Manager Table 
CREATE TABLE dept_managers(
	emp_no INT,
	dept_no VARCHAR(30) NOT NULL, 
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
-- Salaries Table
CREATE TABLE salaries(
	emp_no INT, 
	dept_no VARCHAR(30) NOT NULL,
	salary INT,
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

-- Employee Title Table
CREATE TABLE titles(
	emp_no INT, 
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)
	
-------QUERIES-------
/*
List the following details of each employee
	employee number
	last name
	first name 
	sex
	salary


List first name, last name, and hire date for employees who were hired in 1986


List the manager of each department with the following information: 
	department number
	department name
	the manager's employee number
	last name
	first name


List the department of each employee with the following information: 
	employee number
	last name
	first name
	department name

List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


List all employees in the Sales department, including their employee number, last name, first name, and department name.


List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/