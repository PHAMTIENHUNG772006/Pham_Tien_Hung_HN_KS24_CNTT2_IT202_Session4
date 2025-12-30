drop database mini_project;
create database mini_project;
use mini_project;

create table student (
	student_id int primary key not null,
    student_name varchar(255) not null,
    email varchar(255) not null unique,
    phone char(10) not null
);

create table course (
	course_id char(3) primary key not null,
    course_name varchar(255) not null,
    credits int not null
);

create table enrollment (
	student_id int,
    course_id char(3),
    
    primary key(student_id , course_id),
    
    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(course_id) on delete cascade,
    grade decimal(4,2) not null check(grade >= 0) default (0)
);

insert into student 
values (1,'Nguyen Van A','vana@gmai.com','0738462727'),
(2,'Nguyen Van B','vanb@gmai.com','0973437364'),
(3,'Nguyen Van C','vanc@gmai.com','0874836592'),
(4,'Nguyen Van D','vand@gmai.com','0738354545'),
(5,'Nguyen Van E','vane@gmai.com','0738658567');



insert into course 
values ('101','Lập trình hướng đối tuọng',2),
('102','React',3),
('103','Đại số tuyến tính',2),
('104','Lập trình java',1),
('105','Lập trình PHP',2);


insert into enrollment 
values (1,'101',7),
(2,'105',8),
(3,'102',7),
(2,'103',5),
(5,'104',10);

update  enrollment 
set grade = 9.0
where student_id = 2;

select student_name `Tên Sinh Viên`, email , phone `Số điện thoại` from student;


delete from course  where course_id = '101';

select * from course;
select * from enrollment;











