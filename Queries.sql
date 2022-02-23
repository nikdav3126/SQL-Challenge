---List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employees.emp_no As "Employee Number", employees.last_name As "Last Name", employees.first_name As "First Name", 
employees.sex As "Sex", salaries.salary As "Salary"
From employees 
Join salaries On
employees.emp_no = salaries.emp_no;

---List first name, last name, and hire date for employees who were hired in 1986.

Select last_name As "Last Name", first_name As "First Name", hire_date "Hire Date" From employees
Where hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

---List the manager of each department with the following information: department number, 
---department name, the manager's employee number, last name, first name.

Select departments.dept_no As "Department Number", departments.dept_name As "Department Name", 
dept_manager.emp_no As "Employee Number", employees.last_name As "Last Name", employees.first_name As "First Name"
From departments
Join dept_manager on 
departments.dept_no = dept_manager.dept_no
Join employees on
employees.emp_no = dept_manager.emp_no;

---List the department of each employee with the following information: 
---employee number, last name, first name, and department name.

Select departments.dept_name As "Department Name", employees.emp_no As "Employee Number", 
employees.last_name As "Last Name", employees.first_name As "First Name"
From dept_emp
Join departments on 
departments.dept_no = dept_emp.dept_no
Join employees on
employees.emp_no = dept_emp.emp_no;

---List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select employees.last_name, employees.first_name, employees.sex
From employees
Where first_name = 'Hercules' 
And last_name Like 'B%';

---List all employees in the Sales department, including their employee number, 
---last name, first name, and department name

Select employees.emp_no As "Employee Number", employees.last_name As "Last Name", 
employees.first_name As "First Name", departments.dept_name As "Department Name"
From employees
Join dept_emp on
employees.emp_no = dept_emp.emp_no
Join departments on 
departments.dept_no = dept_emp.dept_no;

---List all employees in the Sales and Development departments, 
---including their employee number, last name, first name, and department name.

Select employees.emp_no As "Employee Number", employees.last_name As "Last Name", 
employees.first_name As "First Name", departments.dept_name As "Department Name"
From employees
Join dept_emp on
employees.emp_no = dept_emp.emp_no
Join departments on 
departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales' or
departments.dept_name = 'Development';

---In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select last_name As "Last Name", Count(last_name) As "Frequency"
From employees
Group by last_name
Order by "Frequency" Desc;

