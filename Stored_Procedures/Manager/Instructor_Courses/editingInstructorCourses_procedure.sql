USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editingInstructorCourses]    Script Date: 1/7/2025 5:46:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing Instructor Courses

ALTER procedure [dbo].[usp_editingInstructorCourses]

	@userName varchar(30),
	@password varchar(30),
	@instructorId int,
	@courseId int

as
begin
		
		if @userName='MohamedFotouh' and @password='0122'
			begin
				print 'Welcome , manager Mohamed'
				update instructor_courses
				set course_id=@courseId
				where instructor_id=@instructorId
			end
		else
			print 'UserName or Password is in correct'
end

--exec usp_editingInstructorCourses @userName='eng_mohamed' ,@password='0122',
--								  @instructorId=4,@courseId=4