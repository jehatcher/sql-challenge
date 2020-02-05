select  employees.emp_no,
        employees.last_name,
        employees.frist_date,	
        employees.gender,
        salaries.salary
from employees
	left join salaries
    on (employees.emp_no = salaries.emp_no)
order by employees.emp_no;

select frist_date, last_name
from employees
where hire_date between '1986-01-01' and '1986-12-21'

select  dept_manager.dept_no,
        departments.dept_name,
        dept_manager.emp_no,
        employees.last_name,
        employees.frist_date,
        dept_manager.from_date,
        dept_manager.to_date
from dept_manager
    inner join departments
        on (dept_manager.dept_no = departments.dept_no)
    inner join employees
        on (dept_manager.emp_no = employees.emp_no);
		
select employees.emp_no,
        employees.last_name,
        employees.frist_date,
       departments.dept_name
from employees
    inner join dept_emp
        on (employees.emp_no = dept_emp.emp_no)
    inner join departments
        on (dept_emp.dept_no = departments.dept_no)
order by employees.emp_no;

select *
from employees
where frist_date = 'Hercules'
and last_name like 'B%';

select  employees.emp_no,
        employees.last_name,
        employees.frist_date,
        departments.dept_name
from employees 
    inner join dept_emp 
    	on (employees.emp_no = dept_emp.emp_no)
    inner join departments 
        on (dept_emp.dept_no = departments.dept_no)
where departments.dept_name = 'Sales'
order by employees.emp_no;

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;