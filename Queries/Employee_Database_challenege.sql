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
-- Select current employees and titles
SELECT DISTINCT ON (er.emp_no) er.emp_no,
er.first_name,
er.last_name,
er.title
INTO unique_titles
FROM employees_retire AS er
WHERE er.to_date = '9999-01-01'
ORDER BY er.emp_no, er.to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(DISTINCT u.emp_no) AS "count", u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

--Create table employees information
-- Mentorship elibility
SELECT DISTINCT ON(e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date, 
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01'
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')	
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;