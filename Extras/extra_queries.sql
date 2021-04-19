-----------------------------------------------------------------
-- Sort titles_sorted further by providing only most up to date unique titles
SELECT DISTINCT ON (emp_no)
	   emp_no, 
	   title, 
	   to_date
INTO titles_retiring
FROM titles_sorted
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date ASC;

-- join to_date and birth_date columns to unique title table using 
-- new titles_retiring table 
SELECT ut.emp_no, 
	   ut.first_name, 
	   ut.last_name, 
	   ut.title, 
	   tr.to_date, 
	   e.birth_date
INTO unique_birthdate
FROM unique_titles as ut
LEFT JOIN titles_retiring as tr
ON ut.emp_no = tr.emp_no
LEFT JOIN employees as e
ON ut.emp_no = e.emp_no
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_birthdate

---------------------------------------------------------------------------------

-- Create bins to group employees by the year they were born to reference counts
-- in future queries 

SELECT '1952' as BirthDateRange,
birth_date as BirthDate,
title as Title
INTO retiring_birthdate
FROM unique_birthdate
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31'
UNION ALL 
(
SELECT '1953' as BirthDateRange,
birth_date as BirthDate,
title as Title
FROM unique_birthdate
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31'
	)
UNION ALL 
(
SELECT '1954' as BirthDateRange,
birth_date as BirthDate,
title as Title
FROM unique_birthdate
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31'
)
UNION ALL 
(
SELECT '1955' as BirthDateRange,
birth_date as BirthDate, 
title as Title
FROM unique_birthdate
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31'
	)
ORDER BY BirthDateRange ASC;

SELECT * FROM retiring_birthdate

-- Group by bins and determine counts of how many employees in each bin (i.e how many retiring based
-- on the year they were born)
-- (Displaying 2 different queries to arrive at the same conclusion)

--#1

SELECT birthdaterange,
COUNT (birthdate)
INTO birthdate_counts
FROM retiring_birthdate
GROUP BY birthdaterange
ORDER BY birthdaterange ASC;

-- OR 

SELECT '1952' as BirthDateRange,
COUNT(birth_date) as Count
--INTO birthdate_counts
FROM unique_birthdate
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31'
UNION
(
SELECT '1953' as BirthDateRange,
COUNT(birth_date) as Count
FROM unique_birthdate
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31'
	)
UNION
(
SELECT '1954' as BirthDateRange,
COUNT(birth_date) as Count
FROM unique_birthdate
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31'
)
UNION
(
SELECT '1955' as BirthDateRange,
COUNT(birth_date) as Count
FROM unique_birthdate
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31'
	)
ORDER BY BirthDateRange ASC;

SELECT * FROM birthdate_counts
--------------------------------------------------------------------------------

-- Create seperate tables for each birthday year, and group by titles to see how 
-- many employees of each title/dept are up for retire based on the year they were 
-- born

SELECT title,
COUNT(birthdate) as FiftyTwo
INTO fifty_two
FROM retiring_birthdate
WHERE birthdaterange = '1952'
GROUP BY title

SELECT title,
COUNT (birthdate) as FiftyThree
INTO fifty_three
FROM retiring_birthdate
WHERE birthdaterange = '1953'
GROUP BY title

SELECT title,
COUNT (birthdate) as FiftyFour
INTO fifty_four
FROM retiring_birthdate
WHERE birthdaterange = '1954'
GROUP BY title

SELECT title,
COUNT (birthdate) as FiftyFive
INTO fifty_five
FROM retiring_birthdate
WHERE birthdaterange = '1955'
GROUP BY title

SELECT * FROM fifty_two
SELECT * FROM fifty_three
SELECT * FROM fifty_four
SELECT * FROM fifty_five
-----------------------------------------------------------------------------
-- Group the number of employees eligible for mentorship by title/department 
-- to determine what departments may need the most help

SELECT title,
COUNT (emp_no) as Employees
INTO mentorship_titles
FROM mentorship 
GROUP BY title
ORDER BY Employees DESC

SELECT * FROM mentorship_titles