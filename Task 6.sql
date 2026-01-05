Create Database Employment;

use employment;

Create TABLE Department
(
department_id Int Primary Key,
department_name varchar(100) not null
);
Create TABLE Location
(
Location_id Int auto_increment primary key,
location varchar(30) not null 
);

 create table Employees_e
 (
employee_id Int primary key,
employee_name varchar(50) unique,
gender enum('m','F') check (gender in ('m','F')),
age int check (age >=18),
hire_date Date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key(department_id) references Department(department_id),
foreign key(location_id) references Location(Location_id)	
);

INSERT INTO department (department_id,department_name) values 
(11,'Software Development'),
(12,'Marketing'),
(13,'Data Science'),
(14,'Human Resources'),
(15,'Product Management'),
(16,'Content Cretion'),
(17,'Finance'),
(18,'Design'),
(19,'Reseaech and Development'),
(20,'Customer Support'),
(21,'Business Development'),
(22,'IT'),
(23,'Operations');

INSERT INTO location (location) values 
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees_e (employee_id,employee_name,gender,age,hire_date,designation,department_id,location_id,salary) values 
(5001 , 'Vihaan Singh', 'M' , 27 , '2015-01-20' , 'Data Analyst' , 13 , 4 , 60000),
(5002 , 'Reyansh Singh', 'M' , 31 , '2015-03-10' , 'Network Engineer' , 12 , 1 , 80000),
(5003 , 'Aaradhya Iyer', 'F' , 26 , '2015-05-20' , 'Customer Support Exective' , 20 , 2, 45000),
(5004 , 'Kiara Malhotra', 'F' , 29 , '2015-07-05' , Null , 18 , 3 , 70000),
(5005 , 'Anvi Chaudhary', 'F' , 25 , '2015-09-11' , 'Business Development Executive' , 21, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 18, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 12, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 18, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 21, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 22, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 12, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 23, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 20, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 20, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 17, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 14, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 19, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 14, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 11, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 17, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 14, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 12, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 15, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 13, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 13, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 16, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 16, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 22, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 15, 1, 90000);

Select * from department;
Select * from location;
Select * from employees_e;

Select upper(employee_name) from employees_e;
select lower(designation) from employees_e;
select substring(hire_date,6,2) from employees_e;
Select concat(employee_name," ",designation) from employees_e;

select curdate();
select now();
select year(hire_date) from employees_e;
select datediff(curdate(),hire_date) join_period from employees_e;

Delimiter $$
Create function getemployee(empl_name varchar(50),design varchar(100))
returns varchar(250)
deterministic
begin
return concat(empl_name,'- ',design);
end $$
Delimiter ;

Select getemployee(employee_name,designation) as fullname from employees_e;





