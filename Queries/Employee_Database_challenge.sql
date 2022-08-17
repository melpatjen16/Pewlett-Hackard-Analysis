--Create table employees information
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	t.title,
	t.from_date, 
	t.to_date
INTO Employees_Retire
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM employees_retire;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
