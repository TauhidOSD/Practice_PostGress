-- Active: 1747481365322@@127.0.0.1@5432@ph
SHOW timezone;

select now()

create table timeZ (ts TIMESTAMP WITHOUT TIME zone, tsz TIMESTAMP WITH TIME zone);

INSERT INTO timeZ VALUES ('2025-5-18 11:27:35', '2025-5-18 11:27:35' )

select * from timeZ;

select CURRENT_DATE

select now()::date

select now()::time

select to_char(now(), 'yyyy/mm/dd' )

select to_char(now(), 'dd/mm/yyyy' )

select to_char(now(), 'Month' )

select CURRENT_DATE - INTERVAL '1 month'

select CURRENT_DATE - INTERVAL '1 year'

select CURRENT_DATE - INTERVAL '1 year 2 month'

SELECT age(CURRENT_DATE, '2000-10-17' )

select *, age(CURRENT_DATE , dob) from students

select extract(day from  '2004-5-12'::date)

select extract(month from  '2004-5-12'::date)

select '1'::

select '0'::BOOLEAN

select 'n'::BOOLEAN

select 'y'::BOOLEAN
