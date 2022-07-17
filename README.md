# Employee Database Analysis  

## Overview Of Analysis 

In this Analysis we got assignments to determine the number of retiring employees per title, and identify employees who are eligible to participate in mentorship program. To analyze first we need to find out number of Retiring Employees by title and create ret_titles table,unique title table, retiring title table and finally we got Mentorship eligibility table.


## Results
	First steps I started to look both tables we have employees and titles and see what columns they each have after I look that dataset, I created first table ret_titles using join function on both employees and titles table primary key. And filtering the data using where function on birth date and order by employee number I got table created name ret_titles and I save that in retirement_titles.csv file and export and save in to my DATA folder this table look like as below.

![rat_titles](https://user-images.githubusercontent.com/103727169/179421196-c0010b0e-6665-41b3-9306-77ba5406a997.png)

	On second, I found out there are many employees are got promoted and their title got change so those employee duplicate title we got I remove these duplicates and keep only the most recent title of each employee creating unique_titles table and result comes as follow.

![unique_title](https://user-images.githubusercontent.com/103727169/179421219-4c40be55-6c7c-4bcd-b781-13b0848701ba.png)

	After getting result of unique titles, I started to retrieve the number of employees by their most recent job title who are about to retire. And I got result as follow

![retiring_titles](https://user-images.githubusercontent.com/103727169/179421249-c0720c05-bf6a-420b-bd74-e9dad72c422c.png)

	Finally I created mentorship eligibility table using three table join function where birth date is birthdate BETWEEN '1965-01-01'AND'1965-12-31 and order by employee number I got final result of who will be participate in mentorship program as follow.

![mentore_eligibility](https://user-images.githubusercontent.com/103727169/179421259-8666bd4a-a587-475e-a894-12406f535071.png)


### Summary: 

	In whole challenge we did not get information about how may employees are in mentorship program count by titles so I wrote queries and got that new table call count_titles_mentore using queries and got result as follow.
-- count by title who are eligible for mentorship program

![count_title](https://user-images.githubusercontent.com/103727169/179421368-35b1e483-3281-48f2-84cb-cd920eb1e574.png)


	Also there was not count for each departments so create queries aswell so we can see how may employees will be retiring in each deparments using dept_info table and created new table call count_dept_name and result as follow.

![count_deptname](https://user-images.githubusercontent.com/103727169/179421283-7cefe6b0-bad0-44e6-b101-ca8f1a2e8dbb.png)


