-- Active: 1747481365322@@127.0.0.1@5432@ph
create table employees1 (
    employee_id serial primary key,
    employee_name varchar(50) not null,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date date
)

INSERT INTO employees1 (employee_name, department_name, salary, hire_date) VALUES
('Abdul Karim', 'Sales', 35000.00, '2021-03-15'),
('Nusrat Jahan', 'Marketing', 42000.00, '2022-06-20'),
('Rakib Hasan', 'IT', 55000.00, '2020-09-10'),
('Mitu Akter', 'HR', 38000.00, '2019-11-25'),
('Fahim Rahman', 'Finance', 60000.00, '2021-01-05'),
('Sadia Islam', 'IT', 58000.00, '2023-02-14'),
('Tarek Aziz', 'Sales', 37000.00, '2022-04-30'),
('Shamima Nasrin', 'Marketing', 45000.00, '2020-08-01'),
('Nayeem Hossain', 'HR', 39000.00, '2021-07-22'),
('Lamia Haque', 'Finance', 61000.00, '2022-10-11'),
('Rezaul Karim', 'IT', 62000.00, '2021-12-19'),
('Asif Mahmud', 'Sales', 36000.00, '2018-06-13'),
('Jannatul Ferdous', 'Marketing', 43000.00, '2023-01-17'),
('Kamal Uddin', 'Finance', 59000.00, '2020-03-04'),
('Nadia Chowdhury', 'HR', 41000.00, '2022-05-09'),
('Mohsin Alam', 'IT', 57000.00, '2019-12-23'),
('Sumi Akter', 'Sales', 34000.00, '2020-07-28'),
('Zahidul Islam', 'Marketing', 46000.00, '2021-11-05'),
('Farhana Jahan', 'Finance', 63000.00, '2022-08-19'),
('Habibur Rahman', 'HR', 40000.00, '2021-04-12'),
('Shuvo Saha', 'IT', 56000.00, '2023-03-10'),
('Minhazul Abedin', 'Sales', 35500.00, '2020-10-30'),
('Tania Sultana', 'Marketing', 47000.00, '2019-09-18'),
('Jahirul Islam', 'Finance', 60500.00, '2021-06-06'),
('Popy Rani Das', 'HR', 39500.00, '2020-01-29');


--retrieve all employees whose salary is greater than the hights salary of the HR department

select max(salary) from employees1 where department_name ='HR';

select * from employees1 where salary > (select max(salary) from employees1 where department_name ='HR')

--sub query only one column can return
select *, (select  sum(salary) from employees1) from employees1

--slow all department also sum every department salary
select department_name, sum(salary) from employees1 GROUP BY department_name


--sub query te ja thakbe tai main query hote kaj korte parbo..
select * from --outer query/main query
 (select department_name, sum(salary) from employees1 GROUP BY department_name) -- sub query


select employee_name, salary,department_name from employees1 
WHERE department_name in (select department_name from employees1 where department_name LIKE '%R%')

 

select * from employees1