USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_assignInstructorToCourse]    Script Date: 1/7/2025 5:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--assigning instructor to course

ALTER procedure [dbo].[usp_assignInstructorToCourse]

	@userName varchar(30),
	@password varchar(30),
	@instructorId int,
	@courseId int

as
begin
		
		if @userName='MohamedFotouh' and @password='0122'
			begin
				print 'Welcome , manager Mohamed'
				insert into instructor_courses
				values(@instructorId,@courseId)
			end
		else
			print 'UserName or Password is in correct'
end