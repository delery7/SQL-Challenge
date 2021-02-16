-- -- QUERY 1
SELECT 
 	e.emp_no as "employee number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, sex
	, s.salary
FROM employees e
LEFT JOIN salaries s on s.emp_no=e.emp_no
order by last_name asc;

-- QUERY 2
SELECT 
 	first_name as "First Name"
	, last_name as "Last Name"
	, hire_date
FROM employees e
WHERE extract(year from hire_date)=1986
order by hire_date asc;

-- QUERY 3
SELECT 
	mgr.dept_no as "Department Number"
	, dept_name as "Deparment Name"
 	, mgr.emp_no as "Employee Number"
	, first_name as "First Name"
	, last_name as "Last Name"
	
FROM dept_manager mgr
LEFT JOIN departments d on d.dept_no=mgr.dept_no
LEFT JOIN employees e on e.emp_no=mgr.emp_no
ORDER BY dept_name, last_name;

-- -- QUERY 4
SELECT 
	 emp.emp_no as "Employee Number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, dept_name as "Deparment Name"
	
FROM dept_emp emp
LEFT JOIN departments d on d.dept_no=emp.dept_no
LEFT JOIN employees e on e.emp_no=emp.emp_no
ORDER BY dept_name, last_name;

-- QUERY 5
SELECT 
 	first_name as "First Name"
	, last_name as "Last Name"
	, sex
	
FROM employees e
WHERE first_name LIKE 'Hercules'
	AND
	last_name LIKE ('B%');
	
-- QUERY 6
SELECT 
	 emp.emp_no as "Employee Number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, dept_name as "Deparment Name"
	
FROM employees e
LEFT JOIN dept_emp emp on e.emp_no=emp.emp_no
LEFT JOIN departments d on d.dept_no=emp.dept_no
WHERE emp.dept_no='d007'
ORDER BY dept_name, last_name;

-- QUERY 7
SELECT 
	 emp.emp_no as "Employee Number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, dept_name as "Deparment Name"
	
FROM employees e
LEFT JOIN dept_emp emp on e.emp_no=emp.emp_no
LEFT JOIN departments d on d.dept_no=emp.dept_no
WHERE emp.dept_no IN ('d007','d005')
ORDER BY dept_name DESC, last_name ;

-- QUERY 8
SELECT 
	last_name as "Last Name"
 	, COUNT(last_name) as "Last Name Count"
	
FROM employees e
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

-- Epilogue outcome
SELECT 
 	e.emp_no as "employee number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, sex
	, s.salary
FROM employees e
LEFT JOIN salaries s on s.emp_no=e.emp_no
WHERE e.emp_no = '499942'
order by last_name asc;

--Bonus Material Query
SELECT 
 	e.emp_no as "employee number"
	, last_name as "Last Name"
	, first_name as "First Name"
	, sex
	, s.salary
	, t.title
FROM employees e
LEFT JOIN salaries s on s.emp_no=e.emp_no
LEFT JOIN titles t on t.title_id=e.emp_title_id
order by last_name asc;





