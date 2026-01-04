create database bai01_ss05;
use bai01_ss05;

create table Products (
	product_id int primary key,
    product_name varchar(255) not null,
    price decimal(10,2) check(price > 0),
    stock int,
    status enum('active', 'inactive') default('active')
);

insert into Products
values
(1, 'iPhone 14', 22000000, 10, 'active'),
(2, 'Samsung Galaxy S23', 18000000, 15, 'active'),
(3, 'Xiaomi Redmi Note 12', 5500000, 30, 'active'),
(4, 'Laptop Dell Inspiron', 16500000, 5, 'inactive'),
(5, 'Tai nghe Bluetooth Sony', 1200000, 25, 'active'),
(6, 'Chuột không dây Logitech', 450000, 50, 'inactive');

select *from Products;

select *from Products
where status = 'active';

select *from Products
where price > 1000000;

select *from Products
where status = 'active'
order by price asc;
