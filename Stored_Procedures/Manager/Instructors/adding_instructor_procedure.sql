USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addinstructor]    Script Date: 1/7/2025 5:07:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--adding instructors 

ALTER procedure [dbo].[usp_addinstructor]

	@userName varchar(30),
	@password varchar(30),
	@firstName varchar(20),
	@lastName varchar(20),
	@email varchar(50),
	@instructor_pass nvarchar(30)

as
begin
		
		if @userName='MohamedFotouh' and @password='0122'
			begin
				print 'Welcome , manager Mohamed'
				insert into Instructors
				values(@firstName,@lastName,@email,@instructor_pass)
			end
		else
			print 'UserName or Password is in correct'
end