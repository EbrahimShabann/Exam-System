
create table Students(
id int primary key Identity(1,1),
First_Name varchar(10) not null,
Last_Name varchar(10) not null,
Email varchar(30) unique not null,
constraint student_chk_validEmail check (Email like '%@%.%_'),
[Password] varchar(30) not null
)
 create table Instructors(
 id int primary key Identity(1,1),
First_Name varchar(10) not null,
Last_Name varchar(10) not null,
Email varchar(30) unique not null,
constraint instructor_chk_validEmail check (Email like '%@%.%_'), 
[Password] varchar(30) not null
 )
 create table Managers(
id int primary key identity(1,1),
Name varchar(50) not null,
Email varchar(50) not null,
[Password] nvarchar(35) not null
)

 create table branches(
 id int primary key identity(1,1),
 [name] varchar(20)  )

 create table intake(
 id int primary key identity(1,1),
 [name] varchar(10) not null)

 create table tracks(
 id int primary key identity(1,1),
 track_name varchar(20) not null)

 create table courses(
 id int primary key identity(1,1),
 course_name varchar(20) not null,
 [description] varchar(max),
 max_deg float not null,
 min_deg float not null)

 create table exams(
 id int primary key identity(1,1),
 [type] varchar(15) not null,
 start_time datetime not null,
 end_time datetime not null,
 total_time as end_time-start_time,
 degree float not null,
 constraint Exam_chk_validDegree check(degree<100),
 instructor_id int foreign key references Instructors(id) )

 create table questions_pool(
 id int primary key identity(1,1),
 question_type varchar(15) not null,
 question_body varchar(max) not null,
correct_answer varchar(max) not null,
course_id int foreign key references courses(id))

create table exam_questions(
question_id int primary key references questions_pool(id),
exam_id int foreign key references exams(id))

create table student_exam(
student_id int,
exam_id int,
student_score float 
constraint student_exam_pk primary key (student_id , exam_id),
constraint student_id_fk foreign key(student_id) references Students(id),
constraint exam_id_fk foreign key(exam_id) references exams(id) )

create table class(
branch_id int foreign key references branches(id),
student_id int foreign key references Students(id),
intake_id int foreign key references intake(id),
track_id int foreign key references tracks(id),
instructor_id int foreign key references Instructors(id),
constraint class_pk primary key (student_id , branch_id))

create table instructor_courses(
instructor_id int foreign key references Instructors(id),
course_id int foreign key references courses(id),
constraint instructor_courses_pk primary key (instructor_id))

create table students_answers(
id int primary key identity(1,1),
student_id int foreign key references Students(id),
exam_id int foreign key references exams(id),
question_id int foreign key references questions_pool(id),
answer varchar(max))