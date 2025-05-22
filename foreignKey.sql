-- Active: 1747481365322@@127.0.0.1@5432@ph
create TABLE "user"(
 id SERIAL PRIMARY KEY,
 user_name VARCHAR(30) not NULL
)

create TABLE post(
 id SERIAL PRIMARY KEY,
 title text not NULL,
 user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2 --on DELETE set null  --on DELETE CASCADE
)


insert into "user" (user_name) VALUES ('akash'),('batas'),('sagor'),('nodi')

DELETE from "user" where id in (9,10,11,12);

select * from "user"


insert into post (title, user_id) VALUES ('sky is blue',1),('air can no see',2),('see has lot of ship',3),('river has lot of boat',4)

DELETE from "user"
where id = 4

DROP TABLE post;

DROP Table "user"

select * from post
 
select * from "user"