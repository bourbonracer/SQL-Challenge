drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles;

create table departments (
	dept_no varchar,
	primary key (dept_no),
	dept_name varchar
);

select * from departments

create table titles (
	title_id varchar,
	primary key(title_id),
	title varchar
);

select * from titles

create table employees (
	emp_no int,
	primary key(emp_no),
	emp_title_id varchar,
	foreign key (emp_title_id) references titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

select * from employees

create table dept_emp (
	emp_no int,
	foreign key(emp_no) references employees(emp_no),
	dept_no varchar (20),
	foreign key(dept_no) references departments(dept_no),
	primary key(dept_no, emp_no)
);

select * from dept_emp

create table dept_manager (
	dept_no varchar,
	foreign key(dept_no) references departments(dept_no),
	emp_no int,
	foreign key(emp_no) references employees(emp_no),
	primary key(dept_no, emp_no)
);

select * from dept_manager

create table salaries (
	emp_no int,
	foreign key(emp_no) references employees(emp_no),
	salary int,
	primary key(emp_no, salary)
);

select * from salaries