-- Table Schema, treating employees table as a junction
-- tagging titles and departments first, such that
-- focus is on employees.emp_no, constraint should be many to one
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(100) UNIQUE
);

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(100) UNIQUE
);

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(100),
	birth_date TIMESTAMP,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(10),
	hire_date TIMESTAMP,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- key references for employees and departments, same ref for dept_manager
CREATE TABLE dept_emp (
	emp_no INT NOT NULL PRIMARY KEY,
	dept_no VARCHAR(100) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


