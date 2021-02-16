#### Data Engineering

Employees ERD.pgn is a visual of the schema required
EmployeeSQL Folder - houses the raw data and SQL files
SchemaCreation.sql - found in the EmployeeSQL folder.  Used to create the Postgress tables
DataExploration.sql - found in the EmployeeSQL folder.  Used to answer the data analysis questions below
data folder - found in EmployeeSQL folder.  Raw data imported into the Schema created in the sql file above
SQL Alchemy.ipynb - Jupyter notebook that used SQLAlchemy to import a data set from the postgress database and then provide a couple of visuals for the data

#### Data Analysis

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Using pandas and data from the postgress database:

1. Create a histogram to visualize the most common salary ranges for employees.

2. Create a bar chart of average salary by title.


