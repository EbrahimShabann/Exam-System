USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deletecourse]    Script Date: 1/7/2025 5:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting course procedure

ALTER procedure [dbo].[usp_deletecourse]

		@userName varchar(30),
		@password nvarchar(30),
		@courseName varchar(30)
		

as
begin
	
	if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,manager Mohamed'
			delete from courses
			where course_name=@courseName
		end
	else
		print 'Username or Password is in correct'
end

--exec usp_editcourse @userName='eng_mohamed',@password='0122',@course_id=5,
--					@courseName='Python',@description='AI programming language',
--					@maxdegree=100,@mindegree=60