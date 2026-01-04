CREATE DATABASE anna_univ;

USE anna_univ;

CREATE TABLE DEPARTMENTS
(
DEPARTMENT_ID INT PRIMARY KEY,
DEPARTMENT_NAME VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE STUDENTS
(
Student_id int primary key,
Student_name varchar(50) not null,
age int,
emailid varchar(100) Not null,
department_id int,
foreign key (department_id) references departments(department_id)
);

insert into departments 
values
(101, 'science'),
(102,'computer science'),
(103, 'accountancy'),
(104,'commerce');

insert into students
values
(1,'siva',18,'dfgg123@gmail.com',104),
(2,'priya',21,'priya006@gmail.com',102),
(3,'rithu',22,'rithu45@gmail.com',104),
(4,'gopi',23,'gopi23@gmail.com',103);

select * from departments d 
inner join students s on s.department_id=d.department_id;

select * from students s 
left join departments d on s.department_id=d.department_id;

select * from students s
right join departments d on s.department_id=d.department_id;

select * from departments
union  all
select department_id,student_name from students;


