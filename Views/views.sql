--Student View

create view student_personalData
as
select * from Students

go 
select * from student_personalData

----Instructo view
create view instructor_personalData
as
select * from Instructors

go 
select * from instructor_personalData


--Instructor Courses view

create view show_instructor_courses
as
select First_Name,Last_Name,course_name,description
from Instructors , instructor_courses ic ,courses
where Instructors.id=ic.instructor_id and ic.course_id=courses.id

go 
select * from show_instructor_courses