# Pewlett-Hackard-Analysis
## Purpose 
Using PostgreSQL to determine the number of employees in Pewlett Hackard who are either up for or close to retirement. These tools were also then used to determine how many senior employees there are in the company who are eligible to participate in an employee mentorship program to help train future employees.

## Results
Results revealed that:

- There are a total of 90,398 employees ready to retire at Pewlett Hackard (see image below)

<img width="100" alt="total_retiring" src="https://user-images.githubusercontent.com/79600550/115166812-0af63680-a083-11eb-9ed6-372d1df0abac.png">

- 44,397 or ~50% of those employees, as of most recently, are in engineering positions - 29,414 as senior engineers, 14,222 as regular engineers, and 1,761 as assistant engineers. (see image below or reference Data folder/retiring_titles.csv)
- An extremely small proportion of employees ready for retire are in management positions -  a total of 2 employees (see below). 

<img width="246" alt="retiring_titles" src="https://user-images.githubusercontent.com/79600550/115166507-98d12200-a081-11eb-8ad1-ac2b7cb99e11.png">

- There are 1,549 employees eligible to participate in the mentorship program to help train upcoming employees following a large retirement wave.

<img width="138" alt="mentorship" src="https://user-images.githubusercontent.com/79600550/115166861-455fd380-a083-11eb-8fe7-b5ac0d25cc80.png">

## Summary 
### Roles to Fill 
Given the above information, there will be a total of 90,398 roles to fill in the given years ahead, assuming that all employees ready to retire will, indeed, retire. 

Further analysis, however, could provide more in-depth insight as to how many roles and which roles by department will need to be filled at different given times. In the table below, employees ready to retire were categorized by the year they were born. 
Not all employees will retire at the same exact time, and knowing how many employees at what ages are ready, can provide us with greater information on how many individuals will be retiring at a given time, with a general assumption that those who are older may be more likely to retire sooner (see image below or reference the extras folder/birthdate_counts.csv).

<img width="224" alt="groupby_birthyear" src="https://user-images.githubusercontent.com/79600550/115167313-28c49b00-a085-11eb-8d40-0d65e52ab7b0.png">

The table above shows that employees ready to retire are distributed fairly equally across the four ages. As each year roughly contains 20,000 or so employees ready to retire, one can use this number as a baseline to try and predict how large these retirement waves will be. Although there is definitely no guarantee that employees will retire in chronological order according to their age, this information provides one with some form of insight for future preparation, rooted in solidifed data. 

To further the depth of this analysis, four seperate tables were created for each birth year, and sorted by specific department/title of each employee. (See tables below or reference extras folder/fiftytwo.csv, fiftythree.csv, fiftyfour.csv, and fiftyfive.csv)

<img width="255" alt="fiftytwo" src="https://user-images.githubusercontent.com/79600550/115167635-552ce700-a086-11eb-8090-8d420e861b8f.png">

<img width="265" alt="fiftythree" src="https://user-images.githubusercontent.com/79600550/115167666-6bd33e00-a086-11eb-9507-47f6dae6a12c.png">

<img width="258" alt="fiftyfour" src="https://user-images.githubusercontent.com/79600550/115167688-77bf0000-a086-11eb-918e-78a4171218bd.png">

<img width="255" alt="fiftyfive" src="https://user-images.githubusercontent.com/79600550/115167717-8b6a6680-a086-11eb-87ca-e4bed0376533.png">




