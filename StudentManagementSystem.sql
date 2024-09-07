create schema librarymanagementsystem;
use librarymangementsystem;

create table students(
student_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
gender char,
dateofbirth date,
address varchar(100),
phone_number int
);
select*from students;
create table courses(
Course_id int primary key auto_increment,
course_name varchar(100),
insrucor varchar(100)
);
select*from courses;
create table enrollement(
enrollement_id int primary key,
student_id int,
course_id int,
foreign key(student_id)references students (student_id),
foreign key(course_id)references courses (course_id)
);
select*from enrollement;
create table grades(
grade_id int primary key,
grade varchar(100) not null,
student_id int,
course_id int,
foreign key(student_id)references students (student_id),
foreign key(course_id)references courses (course_id)
);
create table attendance(
attendance_id int primary key,
course_id int,
student_id int,
attendance_date date,
status varchar(100),
foreign key(student_id)references students (student_id),
foreign key(course_id)references courses (course_id)
);
select*from attendance;

insert into students(first_name,last_name,gender,dept,address,phone_number)
values ('Mamtha','Udaykumar','F','IT','99 Karnur',123456),
('Aleena','Raphel','F','IT','7 Navadhi',91234),
('Rose','Raphel','F','IT','77 Netaji nagar',74184),
('Ganesh','Kumar','M','B.com','3 MG Road',80568);

insert into courses (course_name,instructor)
values('English','Prof.Adams'),
('STA','Dr.Johnson'),
('OOPS','Dr.Mary'),
('Human Values and Ethics','prof.Deepak');

insert into enrollement(enrollement_id,student_id,course_id)
values (1,1,1),
(2,2,2),
(3,3,3),
(4,4,4);

insert into Grades(grade_id,grade,student_id,course_id)
values(1,'A',1,1),
(2,'A+',2,2),
(3,'U',3,3),
(4,'B',4,4);

insert into attendance(attendance_id,course_id,student_id,attendance_date,status)
values(1,1,1,'2023-09-10','present'),
(2,2,2,'2023-09-10','present'),
(3,3,3,'2023-09-10','absent'),
(4,4,4,'2023-09-10','present');

select s.first_name,s.last_name,c.course_name from students s join enrollement e on s.student_id =e.student_id join courses c on e.course_id= c.course_id where c.course_name="English";

