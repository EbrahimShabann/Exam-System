-- usp_showMyQuess To Show To Instructor His Courses Questions Only

create procedure usp_showMyQuess
	@instructor_id int
as
begin
		select q.id,q.question_type,q.question_body,q.course_id,q.correct_answer
		from [dbo].questions_pool q 
		inner join courses c 
		on q.course_id=c.id
		inner join instructor_courses ic
		on c.id=ic.course_id
		inner join Instructors i 
		on ic.instructor_id=i.id
		where i.id=@instructor_id
end

exec usp_showMyQuess
@instructor_id=1