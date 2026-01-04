create database bai06_ss05;
use bai06_ss05;

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
(101, 'Tai nghe Bluetooth JBL T205', 1200000, 40, 520, 'active'),
(102, 'Tai nghe Sony WI-C100', 1500000, 35, 610, 'active'),
(103, 'Chuột gaming Logitech G102', 1100000, 50, 780, 'active'),
(104, 'Bàn phím cơ DareU EK87', 1900000, 25, 430, 'active'),
(105, 'Loa Bluetooth Anker Soundcore', 2500000, 20, 390, 'active'),

(106, 'Tai nghe Bluetooth Baseus WM01', 1300000, 55, 510, 'active'),
(107, 'Ổ cứng SSD Kingston 256GB', 2300000, 30, 470, 'active'),
(108, 'Webcam Logitech C270', 1700000, 22, 310, 'active'),
(109, 'Router Wifi TP-Link Archer C6', 2900000, 18, 260, 'active'),
(110, 'Pin sạc dự phòng Xiaomi 20000mAh', 1400000, 45, 690, 'active'),

(111, 'Tai nghe Bluetooth Remax', 1000000, 60, 580, 'active'),
(112, 'Chuột không dây Logitech M331', 1600000, 48, 450, 'active'),
(113, 'Bàn phím Logitech K380', 2100000, 28, 320, 'active'),
(114, 'Loa Bluetooth Xiaomi', 1800000, 33, 410, 'active'),
(115, 'USB Kingston 128GB', 1250000, 70, 860, 'active'),

(116, 'Tai nghe Bluetooth Havit', 1450000, 52, 540, 'inactive'),
(117, 'Chuột gaming DareU EM908', 1950000, 40, 370, 'active'),
(118, 'Bàn phím cơ Redragon K552', 2600000, 26, 290, 'active'),
(119, 'Loa Bluetooth JBL Go 3', 2800000, 24, 340, 'active'),
(120, 'Tai nghe Marshall Minor', 3000000, 15, 220, 'active');

select *from products
where status ='active'
and price between 1000000 and 3000000
order by price asc
limit 10 offset 0;

select *from products
where status ='active'
and price between 1000000 and 3000000
order by price asc
limit 10 offset 10;