USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addcourse]    Script Date: 1/7/2025 5:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--adding course procedure

ALTER procedure [dbo].[usp_addcourse]

		@userName varchar(30),
		@password nvarchar(30),
		@courseName varchar(30),
		@description varchar(max),
		@maxdegree float,
		@mindegree float

as
begin
	
	if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,manager Mohamed'
			insert into courses
			values(@courseName,@description,@maxdegree,@mindegree)
		end
	else
		print 'Username or Password is in correct'
end