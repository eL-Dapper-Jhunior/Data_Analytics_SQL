create database Jerry_school_management_db;
show databases;
use Jerry_school_management_db;
create table students (
student_id int auto_increment primary key,
stud_Sname varchar(255),
stud_Fname varchar(255),
email varchar(255),
stud_DOB date,
phone varchar(20)
 );
 show tables
 
 
 create table courses (
 course_id int auto_increment primary key,
 course_name varchar(255),
 credits int
 );
 
 create table grades (
 grade_id int auto_increment primary key,
 student_id int,
 course_id int,
 grade decimal(5,2),
 foreign key (student_id) references students(student_id),
 foreign key (course_id) references courses(course_id)
 );
 
 insert into students (stud_Sname, stud_Fname, email,stud_DOB, phone) 
 values ('John','Doe', 'john.doe@example.com', '2000-10-20', '123-456-7890'),
 ('Jane', 'Smith', 'jane.smith@example.com','2001-06-06', '987-654-3210'),
 ('Bob', 'Johnson', 'bob.johnson@example.com', '1998-01-15', '555-123-4567'),
 ('Alice', 'Williams', 'alice.williams@example.com', '2000-06-25', '555-987-6543'),
('John', 'Smith', 'john.smith@example.com', '1999-03-12', '555-456-7890'),
('Emma', 'Brown', 'emma.brown@example.com', '2001-09-30', '555-234-5678'),
('Michael', 'Davis', 'michael.davis@example.com', '1997-12-05', '555-876-5432'),
('Sophia', 'Miller', 'sophia.miller@example.com', '1998-07-22', '555-321-6789'),
('William', 'Anderson', 'william.anderson@example.com', '2002-04-18', '555-765-4321'),
('Olivia', 'Martinez', 'olivia.martinez@example.com', '1996-11-08', '555-678-9012')
;
 
 desc students;
 select *
 from students;
 
 
 insert into courses (course_name,credits)
 values ('Mathematics', 3), ('Science',4), ('English',3), ('History', 3),  ('Computer Science', 4),  ('Physics', 4),  
('Chemistry', 4),  ('Biology', 3),  ('Economics', 3),  ('Psychology', 3) ;
select *
from courses;




insert into grades( student_id, course_id, grade) values
(1,1,85.00), (1,2,90.00), (2,1,78.00), (2,3,92.00), (3,2,88.00), (3,4,76.50),  
(4,1,89.00),  (5,2,94.50),  (6,3,81.00),  (7,5,87.75),  (8,6,79.25),  (9,7,91.50) ;

select *
from grades;


select s.stud_Fname, s.stud_Sname , c.course_name, g.grade
from grades g
inner join students s on g.student_id = s.student_id
inner join courses c on g.course_id = c.course_id ;

select s.stud_Fname, s.stud_Sname , c.course_name, g.grade
from students s
left join grades g on s.student_id = s.student_id
left join courses c on g.course_id = c.course_id ;

select s.stud_Fname, s.stud_Sname , c.course_name, g.grade
from students s
right join grades g on g.student_id = s.student_id
right join courses c on g.course_id = c.course_id ;