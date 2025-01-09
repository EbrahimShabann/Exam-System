-- usp_selectRandomQues To Allows Instructor To Select Questions Randomly
--From His Course Only

create procedure usp_selectRandomQues
	@question_type varchar(15),
	@course_id int, @instructor_id int,
	@numberOfQuestions int
as 
begin

	select top(@numberOfQuestions) q.id,q.question_type,q.question_body,q.correct_answer,q.course_id
	from [dbo].questions_pool q inner join courses c on q.course_id=c.id
	inner join instructor_courses ic on c.id=ic.course_id
	inner join Instructors i on ic.instructor_id=i.id
	where q.question_type=@question_type 
	and c.id =@course_id 
	and i.id=@instructor_id
	order by NEWID()
end

exec usp_selectRandomQues
@question_type='T|F',@course_id=1
,@instructor_id=1,@numberOfQuestions=5