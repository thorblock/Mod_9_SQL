#sql-challenge
Sample data is a mock-up of employees at a company. The database was covered using pgAdmin4; table creation aims to emulate data engineering and analysis within SQL.

## EmployeeSQL folder
Includes a Resources folder that holds all the original tables in CSV form. pgAdmin had a tough time reading some of the CSVs, so I created an R script that converted the CSVs into insert statements, hence why there is an Rmd file. The schema code covers table creation, and employee_queries contains the prompts and queries for the assignment. supp_data_insert is the manufactured product of the data_insert_generation R script.
An entity relation diagram that probably has too many connections is included now, but ultimately, the outcome remains the same.
