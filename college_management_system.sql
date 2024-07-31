create database college_management_system;
use college_management_system;
create table Students (
student_id int primary key auto_increment,
student_name varchar(50),
department_id int,
course_id int,
current_semester int,
date_of_birth date,
gender enum('male','female','other'),
CGPA enum('A+','A','B','C','D') NOT NULL,
overall_percentage varchar(10),
phoneno bigint,
address varchar(100)
);
create table faculty(
faculty_id int primary key auto_increment,
faculty_name varchar(50),
department varchar(50),
subject_handling varchar(150),
gender enum('male','female','other'),
salary decimal(10,5),
phone_no bigint
);
create table department(
department_id int primary key auto_increment,
department_name varchar(75),
department_head int
);
create table courses(
course_id int primary key auto_increment,
course_name varchar(100)unique,
department_id int,
course_duration int,
total_semester int
);
CREATE TABLE Fees (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    total_amount decimal(10,2),
    pay_amount DECIMAL(10, 2),
    due_date DATE,
    status ENUM('Paid', 'Unpaid')
);
create table hostel(
student_id int,
department_id int,
course_id int,
total_fees int ,
pay_of_fees int
);
create table transportation(
student_id int,
vahicel_type enum('college_bus','own_vahical'),
college_bus_no varchar(10),
own_vahical_type varchar(50)
);
create table examcell(
student_id int,
reg_no int,
department_id int,
course_name varchar(100)
);


