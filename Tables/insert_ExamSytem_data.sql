use ExamSystem

insert into Students(First_Name,Last_Name,Email,[Password])
values('Ebrahim' ,'Shaban','ebrahim@gmail.com','123456'),
('Karima','Magdey','karema@gmail.com','132664'),
('Mohamed','Shaban','mohamed@gmail.com','10223')

insert into Instructors(First_Name,Last_Name,Email,[Password])
values('Ahmed','Shaban','ahmed@gmail.com','120212'),
('Shaban','Mosa','shaban@gmail.com','021232'),
('Nahed','Mohamed','nahed@gmail.com','123001')

insert into branches([name])
values('Mansoura'),('Cairo'),('Alexandria')

insert into intake([name])
values('intake11'),('intake12'),('intake13'),('intake14')

insert into tracks(track_name)
values('Full stack .Net '),
('Full stack Php'),
('Full stack node .js'),
('Full stack python')

insert into courses(course_name,[description],max_deg,min_deg)
values('C#','Learn about c# programming language',100,55),
('Html','web pahe structure',100,55),
('Api','backend apllication program interace',100,55),
('Oop','programming paradigm',100,55)

insert into exams([type],start_time,end_time,degree,instructor_id)
values('MSQ',2025-02-01-12-00,2025-03-01-13-00,20,1),
('Written',2025-02-15-11-00,2025-03-20-12-00,15,3),
('T|F',2025-03-01-10-00,2025-04-01-11-00,20,2),
('MSQ',2025-04-01-09-00,2025-05-20-10-00,20,1)

insert into class(branch_id,student_id,intake_id,track_id,instructor_id)
values(1,1,1,2,1),(2,2,3,3,2),(2,3,3,4,3)

insert into instructor_courses(instructor_id,course_id)
values(1,1),(2,2),(3,3)