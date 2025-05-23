-- Active: 1747481365322@@127.0.0.1@5432@ph
--create count function
CREATE function emp_count()
RETURNS int 
language SQL
as
$$
select count(*) from employees1
$$

select emp_count()

select * from employees1

--create a delete function

CREATE function emp_delete()
returns void
language SQL
as
$$
delete from employees1 where employee_id =25

$$

select emp_delete()


-- delete employee use by parameter on a function
create function det_emp_by_id(emp_id int)
returns void
language SQL
AS
$$
delete from employees1 where employee_id = emp_id
$$

SELECT det_emp_by_id(24)

select * from employees1