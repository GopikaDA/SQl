CREATE DATABASE University;

USE University;

CREATE TABLE DEPARTMENT
(
DEPARTMENT_ID INT PRIMARY KEY,
DEPARTMENT_NAME VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE STUDENT
(
Student_id int primary key,
Student_name varchar(50) not null,
age int,
emailid varchar(100) Not null,
department_id int,
foreign key (department_id) references department(department_id)
);

insert into department 
values
(101, 'science'),
(102,'computer science'),
(103, 'accountancy'),
(104,'commerce');

insert into student
values
(1,'siva',18,'dfgg123@gmail.com',104),
(2,'priya',21,'priya006@gmail.com',102),
(3,'rithu',22,'rithu45@gmail.com',104),
(4,'gopi',23,'gopi23@gmail.com',103);

select* from student,department;

select distinct s.department_id,s.student_name,d.department_name
from student s
join department d on s.department_id=d.department_id;

select distinct department_id
from student;

Select * from student where emailid is not null; 
select * from student where student_name in ('siva','gopi');
Select * from student where age between 20 and 25;
select * from student where age not between 20 and 25;
  
 
 










