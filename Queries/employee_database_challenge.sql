--Retrieve the three coloumn from employee table

SELECT emp_no,first_name,last_name
FROM employees;

--Retreve the three coloumn- from title table

SELECT title,from_date,to_date
FROM titles;

--JOIN BOTH TABLES WITH PRIMARY KEY

SELECT e.emp_no,
     e.first_name,
     e.last_name,
     t.title,
	 t.from_date,
	 t.to_date
INTO ret_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

select * from ret_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title

INTO unique_titles
FROM ret_titles as r
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * from unique_titles;

--retrieve the number of employees by their most recent job title who are about to retire.

SELECT count(ut.emp_no),ut.title
INTO retiring_titles
from unique_titles as ut
GROUP BY title
ORDER BY COUNT (title) DESC;

select * from retiring_titles;
--MENTORSHIP ELIGIBILITY TABLE

SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title 
INTO mentoreship_eligibily

FROM employees as e
INNER JOIN dept_emp as de on (e.emp_no = de.emp_no)
INNER JOIN titles as t on (e.emp_no=t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01'AND'1965-12-31')
ORDER BY emp_no;

SELECT *
FROM mentoreship_eligibily;

-- count by title who are eligible for mentorship program

SELECT count(mt.emp_no),mt.title
INTO count_titles_mentore
from mentoreship_eligibily as mt
GROUP BY title
ORDER BY COUNT (title) DESC;

SELECT * FROM count_titles_mentore;

-- retiring employee count by departments

SELECT COUNT(de.emp_no),de.dept_name
INTO count_dept_name
FROM dept_info as de
GROUP BY dept_name
ORDER BY count(dept_name) DESC;

SELECT * FROM count_dept_name;

