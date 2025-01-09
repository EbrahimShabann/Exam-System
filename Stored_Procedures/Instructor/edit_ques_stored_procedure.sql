-- usp_editQues Allows Instructor To Edit Question 
-- In Question Pool In His Courses Only

create procedure usp_editQues
	@course_id int,
	@instructor_id int,
	@question_id int,
	@question_type varchar(15),
	@question_body varchar(max),
	@correct_answer varchar(max)

as 
begin
	declare @check int
	select @check=count(*) 
	from [dbo].instructor_courses
	where course_id=@course_id and instructor_id=@instructor_id
	if @check>=1
		begin
			update [dbo].questions_pool
			set question_type=@question_type,
			question_body=@question_body,
			correct_answer=@correct_answer
			where id=@question_id
		end
	else
		PRINT'No Access'
end

EXEC usp_editQues  @question_type = 'T|F',
	@question_body = 'SQL Stands For Structure Query Language',
	@correct_answer = 'T', @course_id = 1, 
	@instructor_id = 1 ,@question_id = 2