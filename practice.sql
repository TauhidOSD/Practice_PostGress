-- Active: 1747481365322@@127.0.0.1@5432@ph
CREATE table employees(
    employee_id SERIAL primary key,
    employee_name varchar(50),
    department_id int REFERENCES departments(department_id),
    salary decimal(10,2),
    hire_date DATE
)

create table departments (
    department_id SERIAL primary KEY,
    department_name varchar(50)
);


insert into departments (department_name) VALUES 
('HR'),('Marketing'),('Finance'),('IT'),('Sales'),('Engineering'),('Customer Support'),('Administration'),('Research'),('Quality Assurance')


INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES 
('Ariana Gomez', 1, 75000.00, '2020-01-15'),
('Rifat Hossain', 2, 42000.00, '2019-03-22'),
('Tanisha Rahman', 3, 88000.50, '2021-11-05'),
('Jonathan Ray', 4, 115000.00, '2018-07-19'),
('Zara Ali', 5, 52000.00, '2023-02-10'),
('Farhan Kabir', 1, 64000.25, '2020-09-01'),
('Nayla Siddiqua', 2, 91000.00, '2022-05-13'),
('Md. Sohel Rana', 3, 57000.75, '2021-08-30'),
('Emily Carter', 6, 103000.00, '2019-06-21'),
('Salman Khan', 7, 46000.00, '2020-12-11'),
('Mehjabeen Chowdhury', 8, 78000.00, '2022-01-25'),
('Robert Downey', 9, 155000.00, '2017-04-09'),
('Mahira Khan', 10, 68500.00, '2021-10-14'),
('Shahid Kapoor', 5, 49500.50, '2020-03-19'),
('Maliha Sultana', 4, 72000.00, '2023-06-03'),
('Chris Evans', 3, 98000.00, '2019-01-29'),
('Nusrat Faria', 2, 60000.00, '2020-08-18'),
('Arnob Das', 6, 85000.00, '2021-07-07'),
('Priya Saha', 7, 55000.00, '2022-09-16'),
('Tariq Hasan', 8, 102500.00, '2018-11-11');

select * from departments

select * from employees

--2 ta table inner join kore sob gulo data dekhbo..ABORT
select * from employees
 join departments on employees.department_id = departments.department_id


--uporer join ta aro easily korer jonno 

select * from employees
join departments USING(department_id)


--show department_name with average salary
Select department_name, round(avg(salary)) as average_salary from employees
join departments using(department_id)
GROUP by department_name;

-- count employee from each dept
select * from departments

select * from employees

select department_name, count(employee_id) from employees
join departments using (department_id)
GROUP by department_name;


--find department name with hight salary
select department_name, round(avg(salary)) as avg_salary from employees
join departments using(department_id)
GROUP BY department_name
ORDER BY avg_salary desc
LIMIT 1; 

--count employee hired in each year

select extract(year from hire_date) as hire_year, count(*) from employees
GROUP by hire_year





drop Table employees