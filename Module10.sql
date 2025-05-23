-- Active: 1747481365322@@127.0.0.1@5432@ph
create table orders (
    order_id serial primary key,
    customer_id int,
    order_date DATE,
    total_amount DECIMAL(10,2)
)

-- Insert 10 random rows into 'orders' table
insert into orders (customer_id,order_date,total_amount) VALUES
(1, '2021-03-10', 1500.75),
(2, '2021-01-10', 1500.75),
(1, '2024-02-12', 2399.99),
(3, '2022-03-15', 499.50),
(2, '2024-01-16', 1250.00),
(3, '2023-02-17', 845.25),
(1, '2021-05-18', 3000.00),
(2, '2025-05-19', 1525.90),
(3, '2023-06-20', 210.75),
(1, '2020-07-21', 999.99),
(3, '2020-07-22', 1750.10);

drop table orders

--find customer who have placed more than 2 orders and calculate the total amount those customer
select customer_id, sum(total_amount) as total_amount, count(*)as orders from orders
GROUP BY customer_id 
HAVING count(order_id) >2

--find the total amount of orders placed each month in the year 2021
select extract(month from order_date) as months, count(*), sum(total_amount) from orders where extract(year from order_date)= 2021
GROUP BY months 