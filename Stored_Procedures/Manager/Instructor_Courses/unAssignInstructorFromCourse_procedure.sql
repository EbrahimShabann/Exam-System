USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_unAssignInstructorFromCourse]    Script Date: 1/7/2025 5:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--unAssign Instructor From Course

ALTER procedure [dbo].[usp_unAssignInstructorFromCourse]

		@userName varchar(30),
		@password nvarchar(25),
		@instructorId int 

as
begin
		if @userName='MohamedFotouh' and @password='0122'
			begin 
				print 'Welcome .manager Mohamed'
				delete from instructor_courses
				where instructor_id=@instructorId
			end
		else
			print 'Username or Password is incorrect'
end