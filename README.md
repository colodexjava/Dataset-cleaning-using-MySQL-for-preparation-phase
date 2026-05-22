# Dataset-cleaning-using-MySQL-for-preparation-phase
This project shows the peculiarity in utilizing MySQL system for data cleaning and preparation for analysis.
## Outline
- [Project Overview](#project-overview)

- [Data Source](#data-source)

- [Tools](#tools)

- [Clinical Problem](#clinical-problem)

- [Dataset Description](#dataset-description)

- [Skills Demonstrated](#skills-demonstrated)

- [Data Preparation](#data-preparation)

- [Key Questions](#key-questions)

- [Key Findings](#key-findings)

- [Skills Learnt](#skills-learnt)

- [Recommendations](#recommendations)

- [Limitations](#limitations)

- [Next Step](#next-step)

  
## Project Overview

This project depicts the steps taken in cleaning a dataset using MySQL Server. The data summarizes the percentage of employee at different stages laid off from different companies in different location


## Data Source
Github-layoffs.cvs

## Tools
MySQL Workbench

## Clinical Problem
A global employment industry in charge of recruiting workers and ensuring proper welfare for employee has decided to look into the exodus of their clients from various countries across the world. They want to see if there is a pattern. However, this has been met with difficulty as the data is not analysable due to the unstandardized dataset

## Dataset Description
The data set contains simulated company record from a global employment industry showing the exodus of their clients from different companies in different companies across the world.
Columns included in the dataset:
- Company: the company where the clients were laid off
-	Location: the state the company is located
-	 Industry: the main purpose of the company 
-	Total_laid_off: the total number of employees laid off from work 
-	Percentage_laid_off: the percentage of workers laid off in relation to the total number of workers in that company
-	Date: the date this layoff was issued.  
-	Stage: the level the employees laid off belonged to
-	Country: the country the company is located 
-	Fund_raised_millions: the total amount generated from laying off those employees.


## Skills Demonstrated
Efficient use and understanding of the SQL language, transferring of data from external sources into SQL, creating and managing database, creating of temporary tables, removal of duplicates, use of window functions, standardization of data using the string and date editing syntax, use of UPDATE, ALTER, DELETE and DROP functions, understanding of JOINS, repopulating of missing data and finally, cleaning NULL values and blank spaces.

## Data preparation
the dataset was obtained from Github specifically for the purpose of showcasing my data cleaning ability. It was then transferred into MySQL server using the “data table import wizard”. Each column was then studied carefully and plan drawn to better understand the dataset and best way it can be approached to fit the analysis required. This is a crucial part of Data analysis.


## Key Questions
-	Were there any duplicate in the dataset?
-	Are the columns matching their data type?
-	Are there any wrong spellings or duplicate?
-	How did you standardize the data set?
-	What is the proper format for the Date?
-	Which columns can be repopulated?
-	How can the NULL values and BLANK SPACES be removed?


## Key Findings
1.	It is always important to check every work for duplicate. They can create outliers or give false result which may distort your analysis and recommendations. In this dataset, I encountered few duplicates using the WINDOWS function.
2.	The date column which might be a very useful tool for time trend analysis, was in a string format. This would have greatly affected the analysis process.
3.	There were few spellings error found in the “industry” column; ‘crypto, cryptocurrency, crypto currency’. This will create an error in trying to use this for a descriptive analysis like distribution, averages, max and min per industry. 
4.	Not much work needed to be done with the casing and spaces. So, using TRIM was enough in the standardization. Then, the date format was converted to match the universally accepted format for date “YYYY-MM-dd”. 
5.	Repopulating columns is quite tricky, requiring an indebt understanding of the dataset and what each column represent. When there is a pattern between several column, it is easier to use such column to repopulate the missing data. However, if there are none, it’s safer to replace it with ‘not provided’. 
6.	For Integer type data with arithmetical relationship, it is possible to derive the missing data from the already existing data, although this was not our case. 
7.	 Null values and blank spaces can be eliminated by either repopulating them or updating the table to a new widely accepted value. The exception here is if you intend to do an exploratory analysis on this data, null value is easily avoided with coding than string values added to the column. 


## Skills learnt
1.	Use of table statement to create new tables, create new columns and populating columns using windows function
2.	Deleting of duplicate from a table not having unique ID, which if present, would have made it a lot easier. 
3.	Better understanding of the Table Import and Export wizard
4.	Repopulating missing data sets using SELF JOIN in the UPDATE syntax  


## Recommendations
1.	Always take out time to understand your dataset before commencing cleaning
2.	Never make the mistake of working directly on your original table. Create a temporary table or a duplicate to work on. 
3.	Data type is a crucial part of data cleaning. Simply because a date looks like the standardised format doesn’t mean it is actually a date. Always look at the data types in the schema information to be sure that each column has their expected data type.
4.	Being overly judicious with editing a dataset might create more trouble than solution. To avoid such, have in mind, the essence of the work and what it is intended for.
5.	Keep practicing on variable data set and format to understand data dynamics.



## Limitations
•	MySQL is slightly different from other Relational Database Management System (RDBMS) like PostgreSQL. The use of CTE in creating a temporary column for analysis and filtering to fast-track identification and updating of the entire table is not available.

•	The use of “ILIKE” in the “WHERE” clause to filter rows is also unavailable in the MySQL.


## Next step
•	Advancing to steps in exploring the data

•	Try out more complex data cleaning exercises. 
