-- Active: 1747481365322@@127.0.0.1@5432@ph
create table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) not NULL,
    last_name VARCHAR(50) not NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('Tauhid', 'Hossen', 20, 'A+', 'Bangla', 'tau@gmail.com', '2004-01-01', 'B+', 'Bangladesh'),
('Mehedi', 'Hasan', 21, 'B', 'Math', 'mehedi21@gmail.com', '2003-02-11', 'O+', 'Bangladesh'),
('Sadia', 'Akter', 22, 'A', 'English Literature', 'sadia22@gmail.com', '2002-05-23', 'A-', 'Bangladesh'),
('Rafi', 'Ahmed', 23, 'A-', 'Physics Advanced', 'rafi23@gmail.com', '2001-07-19', 'B+', 'Bangladesh'),
('Nusrat', 'Jahan', 24, 'B+', 'Biochemistry', 'nusrat24@gmail.com', '2000-03-09', 'O-', 'Bangladesh'),
('Hasib', 'Rahman', 25, 'C+', 'Organic Chemistry', 'hasib25@gmail.com', '1999-09-12', 'AB+', 'Bangladesh'),
('Tania', 'Islam', 26, 'A', 'Information Technology', 'tania26@gmail.com', '1998-11-02', 'B-', 'Bangladesh'),
('Arman', 'Khan', 27, 'B-', 'World History', 'arman27@gmail.com', '1997-12-25', 'A+', 'Bangladesh'),
('Shila', 'Begum', 28, 'A+', 'Development Economics', 'shila28@gmail.com', '1996-06-15', 'O+', 'Bangladesh'),
('Rashed', 'Mia', 29, 'A', 'Corporate Accounting', 'rashed29@gmail.com', '1995-08-30', 'AB-', 'Bangladesh'),
('Farhana', 'Kabir', 30, 'B', 'Sociology and Culture', 'farhana30@gmail.com', '1994-10-10', 'B+', 'Bangladesh');

select * from students;

select blood_group, email, age from students

select email as " student email", age as "boyos" from students

select first_name from students ORDER BY first_name ASC

select * from students ORDER BY age DESC

select DISTINCT blood_group from students 

select * from students
where grade = 'A' and course ='English Literature'

select * from students
where (blood_group = 'A+' or blood_group = 'B+') and age>=20


select * from students
where age>20 

select * from students
where grade <> 'A+' and grade <> 'B+'

select  upper(first_name) as first_name_in_upper_case, * from students

select concat (first_name,' ', last_name), * from students

select first_name, length(first_name),last_name ,length(last_name)   from students

select avg(age) from students

select avg(length(last_name)) from  students

select max(age) from students

select min(age) from students

select sum(age) from students

select count(*) from students

select * from students

where email is not NULL

select coalesce(email,  'not provided') from students

--age integer value tai null hole output ta string a rakhte parbo nh 
select coalesce(age, 404) as "bosoy" from students

select coalesce (grade, 'grade not provide') as "result" from students

--this code is too much long repeat or every time
select * from students
 where country= 'USA' or country ='London' or country ='America'
--more easer without use or use IN

select * from students 
where country IN('USA','London','America')

select * from students
 where country not in('USA','London')


select * from students
 where age BETWEEN 18 and 23

 select * from students
 where dob BETWEEN '2002-01-01' and '2005-01-01' ORDER BY dob

--kono letter diya suro hole
select * from students
 where first_name LIKE 'T%'

--sase hoicha kono letter diya
 select * from students
 where first_name LIKE '%d'

 select * from students
 where first_name LIKE '___r%';


--ILine ta case insensitive mane boro choto matter kore nh..
 select * from students
 where first_name ILIKE 't%'


 --limit 
 select * from students LIMIT 3;
-- 1st 3 ta data dibe
 select * from students
 where country = 'Bangladesh' LIMIT 3
-- OFFSET use korle limit er porer gulo dekhabe
 select * from students
 where country = 'Bangladesh' OFFSET 5

-- use limit and offset create a pagination

select * from students LIMIT 2 OFFSET 2*0

select * from students LIMIT 2 OFFSET 2*1

select * from students LIMIT 3 OFFSET 2*2

DELETE from students
where country = 'test'


--update

UPDATE students
set email = 'tauhid@gmail.com', age = 23, course ='physics'
WHERE student_id = 1

select * from students

insert into students (first_name, last_name, country) VALUES('test','email','test')--,('robat', 'hook', 'America'),('Donal','Tramp','London')