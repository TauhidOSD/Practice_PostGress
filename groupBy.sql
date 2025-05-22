-- Active: 1747481365322@@127.0.0.1@5432@ph
select country, count(*), avg(age) from students
 GROUP BY country
 HAVING avg(age) > 20


 select extract(year from dob) as birth_year, count(*) from students
   GROUP BY birth_year