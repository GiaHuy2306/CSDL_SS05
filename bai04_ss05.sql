create database bai04_ss05;
use bai04_ss05;

create table Products (
	product_id int primary key,
    product_name varchar(255) not null,
    price decimal(10,2) check(price > 0),
    stock int,
    sold_quantity int,
    status enum('active', 'inactive') default('active')
);

insert into products (product_id, product_name, price, stock, sold_quantity, status)
values
(1, 'iPhone 14', 22000000, 10, 520, 'active'),
(2, 'Samsung Galaxy S23', 18500000, 15, 430, 'active'),
(3, 'Xiaomi Redmi Note 12', 5500000, 30, 680, 'active'),
(4, 'OPPO A58', 4200000, 40, 310, 'active'),
(5, 'Vivo Y20', 3500000, 50, 260, 'active'),
(6, 'Tai nghe Bluetooth Sony', 1200000, 25, 750, 'active'),
(7, 'Chuột không dây Logitech', 450000, 60, 840, 'active'),
(8, 'Bàn phím cơ DareU', 950000, 35, 620, 'active'),
(9, 'USB Kingston 64GB', 350000, 80, 910, 'active'),
(10, 'Sạc nhanh Anker', 650000, 70, 580, 'active'),
(11, 'Loa Bluetooth JBL', 2900000, 20, 490, 'active'),
(12, 'Tai nghe AirPods 2', 3200000, 18, 540, 'inactive'),
(13, 'Laptop Dell Inspiron', 16500000, 8, 210, 'active'),
(14, 'Laptop HP Pavilion', 17500000, 6, 190, 'active'),
(15, 'Màn hình LG 24 inch', 3900000, 12, 270, 'active');

select *from products 
order by sold_quantity desc
limit 10;

select *from products 
order by sold_quantity desc
limit 5 offset 10;

select *from products
where price < 2000000
order by sold_quantity desc;
