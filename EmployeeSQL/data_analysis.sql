--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM Employees as e
JOIN Salaries as s on e.emp_no=s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date like '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name
FROM dept_manager as dm
JOIN departments as d on dm.dept_no=d.dept_no
JOIN employees as e on dm.emp_no=e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, de.emp_no, last_name, first_name, dept_name
FROM dept_emp as de
JOIN employees as e on de.emp_no=e.emp_no
JOIN departments as d on d.dept_no=de.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.emp_no, last_name, first_name
FROM departments as d
JOIN dept_emp as de on d.dept_no=de.dept_no
JOIN employees as e on de.emp_no=e.emp_no
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, last_name, first_name, dept_name
FROM departments as d
JOIN dept_emp as de on d.dept_no=de.dept_no
JOIN employees as e on de.emp_no=e.emp_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT COUNT(*) as count, last_name
FROM employees
GROUP BY last_name
ORDER BY count desc;
