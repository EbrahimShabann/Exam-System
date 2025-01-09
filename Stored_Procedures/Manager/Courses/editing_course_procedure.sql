USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editcourse]    Script Date: 1/7/2025 5:45:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing course procedure

ALTER procedure [dbo].[usp_editcourse]

		@userName varchar(30),
		@password nvarchar(30),
		@course_id int,
		@courseName varchar(30),
		@description varchar(max),
		@maxdegree float,
		@mindegree float

as
begin
	
	if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,manager Mohamed'
			update courses
			set course_name=@courseName,
			description=@description,
			max_deg=@maxdegree,
			min_deg=@mindegree
			where id=@course_id
		end
	else
		print 'Username or Password is in correct'
end

--exec usp_editcourse @userName='eng_mohamed',@password='0122',@course_id=5,
--					@courseName='Python',@description='AI programming language',
--					@maxdegree=100,@mindegree=60