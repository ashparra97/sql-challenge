-------QUERIES-------

--List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT  e.emp_no, 
		e.last_name, 
		e.first_name, 
		e.sex,
		s.salary
FROM employees AS e
INNER JOIN salaries AS s 
	ON s.emp_no=e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT  first_name, 
		last_name, 
		hire_date
FROM employees 
WHERE hire_date >= '19860101' AND hire_date <= '19861231';
		

--List the manager of each department with the following information: 
SELECT  ma.dept_no,
		d.dept_name,
		e.emp_no,
		e.last_name,
		e.first_name
FROM departments AS d
INNER JOIN dept_managers AS ma
	ON ma.dept_no = d.dept_no
INNER JOIN employees as e
	ON e.emp_no = ma.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, department name
SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees AS e
INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
INNER JOIN departments AS d
	ON d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT  first_name, 
		last_name, 
		sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT  de.emp_no,
		e.last_name, 
		e.first_name,
		d.dept_name
FROM dept_emp as de
INNER JOIN employees as e
	ON de.emp_no = e.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  de.emp_no,
		e.last_name, 
		e.first_name,
		d.dept_name
FROM dept_emp as de
INNER JOIN employees as e
	ON de.emp_no = e.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
	COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;