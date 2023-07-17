-- Create the Titles table
CREATE TABLE Titles (
  title_id VARCHAR(10) PRIMARY KEY NOT NULL,
  title VARCHAR(30) NOT NULL
);

-- Create the Department table
CREATE TABLE Department (
  dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

-- Create the Employee table
CREATE TABLE Employee (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(10) NOT NULL REFERENCES Titles(title_id),
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex CHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);

-- Create the Salaries table
CREATE TABLE Salaries (
  emp_id INT PRIMARY KEY  NOT NULL REFERENCES Employee(emp_no),
  salary INT NOT NULL
);

-- Create the Dept_emp table
CREATE TABLE Dept_emp (
  emp_no INT NOT NULL REFERENCES Employee(emp_no),
  dept_no VARCHAR(4) NOT NULL REFERENCES Department(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

