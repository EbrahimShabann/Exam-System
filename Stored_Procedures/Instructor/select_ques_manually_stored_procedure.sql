-- usp_selectQuesManually To Allows Instructor	To Select Questions 
--Manually From His Course Only

create procedure usp_selectQuesManually
	@instructor_id int,
	@course_id int,
	@question_id int
as
begin
	set nocount on;

	select q.question_type,q.question_body,q.course_id,q.correct_answer,q.id
	from [dbo].questions_pool q inner join courses c on q.course_id=c.id
	inner join instructor_courses ic on ic.course_id=c.id
	inner join Instructors i on i.id=ic.instructor_id
	where i.id=@instructor_id
	and c.id=@course_id
	and q.id=@question_id
end

exec usp_selectQuesManually
@instructor_id=1,@course_id=1,@question_id=1