-- Active: 1747481365322@@127.0.0.1@5432@ph
CREATE table employees (
    emo_id int,
    emp_name varchar(50),
    dept_id int
)

create Table departments (
    dept_id int,
    dept_name varchar(50)
)

INSERT into employees values (1,'Tauhid hossen', 101),(2,'Amir Hossain',102)

insert into departments VALUES(101,'physics'),(102,'Math')


select * from employees
CROSS join departments

select * from employees
NATURAL join departments

select * from employees

select * from departments