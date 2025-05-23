-- Active: 1747481365322@@127.0.0.1@5432@ph
create table my_user(
    user_name VARCHAR(50),
    email VARCHAR(50)
)

insert into my_user VALUES('Mizba','mezba@gmail.com'),('Mir','mir@gmail.com')

select * from my_user

create table delete_user(
    del_user_name varchar(50),
    deleteAt TIMESTAMP
)

select * from delete_user


create or REPLACE function save_deleted_function()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
insert into delete_user VALUES(OLD.user_name, now());
RAISE NOTICE 'deleted user audit log created';
RETURN OLD;
END;
$$;

create or replace TRIGGER save_deleted_user_trigger
BEFORE DELETE
on my_user
for EACH ROW
EXECUTE FUNCTION save_deleted_function();


DELETE from my_user where user_name ='Mir';