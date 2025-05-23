-- Active: 1747481365322@@127.0.0.1@5432@ph
select * from employees1


select * from avg_salary


CREATE VIEW dept_average_salary
AS
SELECT department_name, AVG(salary) 
FROM employees1
GROUP BY department_name;

select * from dept_average_salary

select department_name, avg(salary) from employees1
GROUP  BY department_name

create view test
AS
select employee_name, salary,department_name from employees1 
WHERE department_name in (select department_name from employees1 where department_name LIKE '%R%')

select * from test