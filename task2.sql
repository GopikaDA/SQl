CREATE DATABASE OnlineBookstore;

USE OnlineBookstore;

CREATE TABLE Books
(
Book_id int primary key);

CREATE TABLE Orders
(
Order_id int Primary key,
Customer_name varchar(25) not null,
Age int,
Book_id int,
Price decimal(10,2) not null,
 Foreign Key (book_id) References Books(Book_id)
 );
 
 alter table books
 add Book_name_iSbn varchar(13) unique;
 
 delete from orders
 where price>500;
 
 truncate table orders;
 
 
 
 