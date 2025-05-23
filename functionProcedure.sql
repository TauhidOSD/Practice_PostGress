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

-- create procedure 

CREATE procedure remove_emp()
LANGUAGE plpgsql
AS
$$
BEGIN
 DELETE from employees1 where employee_id = 23;
END
$$;


call remove_emp();

--add variable on 
CREATE Procedure remove_emp_var(p_remove_id int)
LANGUAGE plpgsql
AS
$$
DECLARE
test_var int;

BEGIN
select employee_id into test_var from employees1 WHERE employee_id = p_remove_id;
delete from employees1 where employee_id = test_var;

RAISE NOTICE 'employee remove successfully'
END
$$;

call remove_emp_var(21);

select * from employees1