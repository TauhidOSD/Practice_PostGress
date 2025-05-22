-- Active: 1747481365322@@127.0.0.1@5432@ph
create TABLE "user"(
 id SERIAL PRIMARY KEY,
 user_name VARCHAR(30) not NULL
)

create TABLE post(
 id SERIAL PRIMARY KEY,
 title text not NULL,
 user_id INTEGER REFERENCES "user"(id) 
)

insert into "user" (user_name) VALUES ('akash'),('batas'),('sagor'),('nodi')

insert into post (title, user_id) VALUES ('sky is blue',1),('air can no see',2),('see has lot of ship',3),('river has lot of boat',4)


select * from post
 join "user" on post.user_id = "user".id


select * from post
left JOIN "user" on post.user_id = "user".id

select * from "user"
right join post on "user".id = post.user_id

select * from "user"
FULL join post on "user".id =  post.user_id

insert into post (id, title, user_id) VALUES (5,'this is the test post title', null);


select title, user_name ,p.id from post as p
 join "user" on p.user_id = "user".id




DROP TABLE post;

DROP Table "user"

select * from post
 
select * from "user"