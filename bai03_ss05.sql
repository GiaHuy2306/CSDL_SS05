create database bai03_ss05;
use bai03_ss05;

create table orders (
	order_id int primary key,
    customer_id int not null,
    total_amount decimal(10,2) check(total_amount >= 0),
    order_date date,
    status enum ('pending', 'completed', 'cancelled') default('pending')
);

insert into orders (order_id, customer_id, total_amount, order_date, status)
values
(1, 1, 3200000, '2024-12-01', 'completed'),
(2, 2, 7800000, '2024-12-03', 'completed'),
(3, 3, 1500000, '2024-12-05', 'pending'),
(4, 1, 9200000, '2024-12-07', 'completed'),
(5, 4, 4500000, '2024-12-10', 'cancelled'),
(6, 2, 6100000, '2024-12-12', 'completed'),
(7, 5, 2800000, '2024-12-14', 'pending'),
(8, 3, 12000000, '2024-12-15', 'completed');

select *from orders
where status = 'completed';

select *from orders
where total_amount > 5000000;

select *from orders
order by order_date desc
limit 5;

select *from orders
where status = 'completed'
order by total_amount desc;
