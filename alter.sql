-- Active: 1747481365322@@127.0.0.1@5432@ph
select * from person2;


alter table person2
add CONSTRAINT unique_person2_age UNIQUE (age);

alter table person2
DROP CONSTRAINT unique_person2_age;

CREATE TABLE person2 (
id serial ,
user_name VARCHAR(20) NOT NULL,
age INTEGER CHECK (age >=18),
PRIMARY KEY (id, user_name),
UNIQUE(user_name, age)
)

INSERT INTO person2 VALUES (1, 'ruksana', 19), (2,'fatema',20),(3,'tauhid',21),(4,'amir',22);
alter table person2
ADD CONSTRAINT unique_person2_age UNIQUE(age); 

alter Table person2
alter column user_age DEFAULT 'blank' NOT NULL;

alter table person2 
alter column user_age DROP NOT NULL
 
alter Table person2
alter column user_name type VARCHAR(50)

ALTER Table person2
 ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

Alter table person2
add column id INTEGER 

 ALTER  TABLE person2 
 DROP COLUMN id
 

 alter TABLE person2 
 RENAME COLUMN age to user_age;

 INSERT into person2 VALUES (1, 'likhon',20, 'likhon@gmail.com');