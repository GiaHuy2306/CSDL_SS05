create database bai05_ss05;
use bai05_ss05;

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
(2, 2, 7800000, '2024-12-02', 'completed'),
(3, 3, 1500000, '2024-12-03', 'pending'),
(4, 4, 9200000, '2024-12-04', 'completed'),
(5, 5, 4500000, '2024-12-05', 'cancelled'),

(6, 1, 6100000, '2024-12-06', 'completed'),
(7, 2, 2800000, '2024-12-07', 'pending'),
(8, 3, 12000000, '2024-12-08', 'completed'),
(9, 4, 3300000, '2024-12-09', 'pending'),
(10, 5, 5100000, '2024-12-10', 'completed'),

(11, 1, 2700000, '2024-12-11', 'pending'),
(12, 2, 8600000, '2024-12-12', 'completed'),
(13, 3, 4100000, '2024-12-13', 'completed'),
(14, 4, 6900000, '2024-12-14', 'pending'),
(15, 5, 9800000, '2024-12-15', 'completed'),

(16, 1, 2300000, '2024-12-16', 'completed'),
(17, 2, 5400000, '2024-12-17', 'cancelled'),
(18, 3, 7600000, '2024-12-18', 'completed');

select *from orders
where status != 'cancelled'
order by order_date desc
limit 5 offset 0;

select *from orders
where status != 'cancelled'
order by order_date desc
limit 5 offset 5;

select *from orders
where status != 'cancelled'
order by order_date desc
limit 5 offset 10;




