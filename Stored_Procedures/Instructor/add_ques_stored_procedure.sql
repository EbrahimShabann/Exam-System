-- usp_addQues Allows Instructor To Add Question 
-- In Question Pool To His Courses Only
use ExamSystem
create procedure usp_addQues
	@question_type varchar(15),
	@question_body varchar(max),
	@correct_answer varchar(max),
	@course_id int,
	@instructor_id int
as
begin
	declare @check int
	select @check=count (*) 
	from [dbo].[instructor_courses] where course_id=@course_id and instructor_id=@instructor_id
	if @check >=1 
		begin
			insert into questions_pool 
			values(@question_type,@question_body,@correct_answer,@course_id)
		end
	else
		print'No Acess'
end

exec usp_addQues @question_type='MCQ' ,@question_body='OOP Stands For ?'
				,@correct_answer='a', @course_id=2,@instructor_id=2;
