-- retrieve columns from employees table 
-- retrieve columns from titles table and join tables on employee number (primary key)
-- perform join INTO a new table "retirement_titles"
-- only select employees born between 1952 and 1955
-- order by employee number ascending 
SELECT e.emp_no,
	   e.first_name, 
	   e.last_name, 
	   t.title, 
	   t.from_date, 
	   t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
				    emp_no, 
					first_name,
					last_name, 
					title
INTO unique_titles 
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

-- Retrieve the number of employees from each department who are about to retire 
-- retureive number of titles from the unique_titles table, group by those titles and sort 
-- in descending order based on number of employees per department 
SELECT COUNT (title), title
INTO retiring_titles 
FROM unique_titles 
GROUP BY title
ORDER BY COUNT DESC;

SELECT * FROM retiring_titles

-- order titles table by employee number & to_date into new table with most recent title info

SELECT emp_no, 
	   title, 
	   from_date, 
	   to_date
INTO titles_sorted
FROM titles
ORDER BY emp_no, to_date DESC

SELECT * FROM titles_sorted

-- use new table (titles_sorted) to combine necessary columns and get at employees who are eligible for mentorship 
-- program participation, and output their most recent titles

SELECT DISTINCT ON (emp_no)
					e.emp_no,
					e.first_name, 
					e.last_name,
					e.birth_date, 
					de.from_date, 
					de.to_date,
					ts.title
INTO mentorship
FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles_sorted as ts
ON (e.emp_no = ts.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, de.to_date DESC;

SELECT * FROM mentorship
