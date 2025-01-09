-- usp_deleteQues Allows Instructor To Deletee Question 
-- From Question Pool In His Courses Only

create procedure usp_deleteQues
	
	@question_id int,
	@course_id int,
	@instructor_id int
	 
as
begin
	declare @check int
	select @check= count(*) 
	from [dbo].[instructor_courses]
	where course_id=@course_id and instructor_id=@instructor_id
	if @check>=1 
		begin
		delete from [dbo].[questions_pool] 
		where id=@question_id
		end
	else
		print 'Not Found'
end

exec [dbo].usp_deleteQues @question_id=1,@course_id=1,@instructor_id=1;
