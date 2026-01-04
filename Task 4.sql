CREATE DATABASE ECOMMERCE;

USE Ecommerce;

CREATE TABLE product
(
product_id int primary key,
product_name varchar(75) unique,
Price decimal(10,2) not null,
stock_quantity int check(stock_quantity > 0)
);

CREATE TABLE orders
(
order_id int primary key,
product_id int,
first_name varchar(100) not null,
last_name varchar(20) not null,
phone_num int unique
);

alter table orders
add city varchar(75) not null;

alter table orders
add foreign key(product_id) References product(product_id);

INSERT INTO product (product_id,product_name, price, stock_quantity) 
VALUES
(1,'Laptop', 60000.00, 60),
(2,'mobile', 25000.00, 25),
(3,'Pencil', 1500.00, 50),
(4,'Chair', 3000.00, 10),
(5,"Pen", 100.00, 2);

INSERT INTO orders 
(order_id, product_id,first_name,last_name,phone_num,city) 
VALUES
(201, 2, 'Arun Kumar','sv',98789,'Chennai'),
(202, 2,'Meena R', 'Kumar',98781,'Bangalore'),
(203, 4,'siva', 'prakasam',45113,'kerala'),
(204, 2, 'Kumar','siva',98711,'Bangalore'),
(205, 2, 'Riva', 'Kumar',78885,'Bangalore'),
(206, 5,'Meena ', 'Kumar',98229,'pune'),
(207, 2,'Meena R', 'Kumar',894511,'Bangalore'),
(208, 1,'priya', 'Kumari',942113,'pune'),
(209, 2,'gopi', 'arulr',987894,'Bangalore'),
(210, 4,'mira', 'Kumar',987890,'Bangalore'),
(211, 3,'rithu', 'gopi',988894,'Bangalore'),
(212, 4,'swathi', 'Kumar',945000,'chennai');



select * from orders
order by order_id desc
Limit 3;
 
select count(order_id) from orders;
select sum(price) from product;
select avg(price) from product;
select max(stock_quantity) from product;
select min(stock_quantity) from product;

select city,count(order_id) as totalcount
from orders
group by city
having totalcount>10;





 
 

