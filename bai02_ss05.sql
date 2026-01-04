create database bai02_ss05;
use bai02_ss05;

create table customers (
	customers_id int primary key,
    full_name varchar(255) not null,
    email varchar(255) unique,
    city varchar(255),
    status enum('active', 'inactive') default('inactive')
);

insert into customers
values
(1, 'Nguyễn Văn An', 'an.nguyen@gmail.com', 'Hà Nội', 'active'),
(2, 'Trần Thị Bình', 'binh.tran@gmail.com', 'TP.HCM', 'active'),
(3, 'Lê Văn Cường', 'cuong.le@gmail.com', 'Đà Nẵng', 'inactive'),
(4, 'Phạm Thị Dung', 'dung.pham@gmail.com', 'Hà Nội', 'active'),
(5, 'Hoàng Văn Em', 'em.hoang@gmail.com', 'TP.HCM', 'inactive'),
(6, 'Vũ Thị Hoa', 'hoa.vu@gmail.com', 'Hà Nội', 'inactive');

select *from customers;

select *from customers
where city = 'TP.HCM';

select *from customers
where status = 'active'
and city ='Hà Nội';

select *from customers
order by full_name asc;