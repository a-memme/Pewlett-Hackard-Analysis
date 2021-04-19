# Pewlett-Hackard-Analysis
## Purpose 
Using PostgreSQL to determine the number of employees in Pewlett Hackard who are either up for or close to retirement. These tools were then used to determine how many senior employees there are in the company who are eligible to participate in an employee mentorship program to help train future employees. Insights are provided as to whether there are sufficient candidates for this program to help support the upcoming "silver tsnuami" retirement wave.

## Results
Results revealed that:

- There are a total of 90,398 employees ready to retire at Pewlett Hackard (see first image below)
- 44,397 or ~50% of those employees, as of most recently, are in engineering positions - 29,414 as senior engineers, 14,222 as regular engineers, and 1,761 as assistant engineers. (see second image below or reference Data folder/retiring_titles.csv)
- An extremely small portion of employees ready for retire are in management positions -  a total of 2 employees (see below).
- There are 1,549 employees eligible to participate in the mentorship program to help train upcoming employees following a large retirement wave (see last image below).

<img width="100" alt="total_retiring" src="https://user-images.githubusercontent.com/79600550/115166812-0af63680-a083-11eb-9ed6-372d1df0abac.png"> 

<img width="246" alt="retiring_titles" src="https://user-images.githubusercontent.com/79600550/115166507-98d12200-a081-11eb-8ad1-ac2b7cb99e11.png">

<img width="138" alt="mentorship" src="https://user-images.githubusercontent.com/79600550/115166861-455fd380-a083-11eb-8fe7-b5ac0d25cc80.png">

*Reference Employee_Database_challenge.sql in the Queries folder for all code used to provide the above analysis/tables*

## Summary 
### Roles to Fill 
Given the above information, there will be a total of 90,398 roles to fill in the given years ahead, assuming that all employees ready to retire will, indeed, retire. 

Further analysis, however, could provide more in-depth insight as to how many roles and which roles by department will need to be filled at different given times. In the table below, employees ready to retire were categorized by the year they were born. 
Not all employees will retire at the same exact time, and knowing how many employees at what ages are ready, can provide us with greater information on how many individuals will be retiring at a given time, with a general assumption that those who are older may be more likely to retire sooner (see image below or reference the extras folder/birthdate_counts.csv).

<img width="224" alt="groupby_birthyear" src="https://user-images.githubusercontent.com/79600550/115167313-28c49b00-a085-11eb-8d40-0d65e52ab7b0.png">

*Reference eextra_queries.sql in Extras folder for all code used to create tables regarding further analysis*

The table above shows that employees ready to retire are distributed fairly equally across the four ages. As each year roughly contains 20,000 or so employees ready to retire, one can use this number as a baseline to try and predict how large these retirement waves will be. Although there is definitely no guarantee that employees will retire in chronological order according to their age, this information provides one with some form of insight for future preparation, rooted in solidifed data. 

To further the depth of this analysis, four seperate tables were created for each birth year, and sorted by specific department/title of each employee. (See tables below or reference extras folder/fiftytwo.csv, fiftythree.csv, fiftyfour.csv, and fiftyfive.csv)

<img width="255" alt="fiftytwo" src="https://user-images.githubusercontent.com/79600550/115167635-552ce700-a086-11eb-8090-8d420e861b8f.png">

<img width="265" alt="fiftythree" src="https://user-images.githubusercontent.com/79600550/115167666-6bd33e00-a086-11eb-9507-47f6dae6a12c.png">

<img width="258" alt="fiftyfour" src="https://user-images.githubusercontent.com/79600550/115167688-77bf0000-a086-11eb-918e-78a4171218bd.png">

<img width="255" alt="fiftyfive" src="https://user-images.githubusercontent.com/79600550/115167717-8b6a6680-a086-11eb-87ca-e4bed0376533.png">

From these tables we can see that: 
- Engineers of all types (predictably) make up roughly 50% of each group (quite similarily to the overall numbers)
  -  10,670 or ~50% ready to retire in the 1952 group 
  -  11,353 or ~49% ready to retire in the 1953 group 
  -  11,641 or ~50% ready to retire in the 1954 group 
  -  11,733 or ~51% ready to retire in the 1955 group 
- General staff positions (staff/senior staff) make up the second largest portion of each group and are generally equally proportioned across ages
  - 9,475 or ~45% ready to retire in the 1952 group 
  -  10,331 or ~45% ready to retire in the 1953 group
  -  10,430 or ~45% ready to retire in the 1954 group 
  -  10,260 or ~44% ready to retire in the 1955 group 

The generally even distribution of department types across age groups, once again, makes future preparation somewhat easier here when looking to determine what roles will need to be filled and when. 

### Support from Mentorship 
From the above information, one can make the assumption to prepare for retirement waves occuring in chunks of 20,000 or so employees. Based on the extended analysis, somewhere around 50% of each retirement wave will consist of engineering positions to fill, followed by general staff positions. 

Given that there are 1,549 employees eligible to participate in the program, the company is looking at one mentorship trainer for every 12-13 or so new employees. This is given the assumption that the participation rate from employees eligible for the mentorship program is 100%, and that cycling through groups of new employees as the senior employees retire can happen somewhat seamlessly without much overlap. If we consider a 50% participation rate, there is roughly 1 mentorship trainer for every 25-26 or so new employees. The acceptable ratio of mentor to new employee will be influenced by a number of factors (i.e department, trainer, etc) however, unless the mentorship is mandatory, it may be advisable to look at increasing the number of eligible employees for the program given the unknown nature of participation.

In addtion, further analysis regarding the mentorship program was also conducted here, grouping individuals eligible for the program into departments/titles once again to compare to that of the ready-to-retire groups (See table below or reference extras folder/mentorship_titles.csv)

<img width="280" alt="mentorship_titles" src="https://user-images.githubusercontent.com/79600550/115169552-56611280-a08c-11eb-9fee-e6746ccf1b32.png">

The data here reveals that the proprotions of mentorship employees in specific departments matches that of the ready-to-retire age groups, as well as the overall numbers of employees ready to retire in different positions. This consistent nature provides confidence that there will be sufficient employees in each department to participate in the mentorship program once the silver tsunami begins to take its toll, given the current total numbers.

