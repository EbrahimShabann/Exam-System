USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addstudent]    Script Date: 1/7/2025 5:09:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--adding student

ALTER procedure [dbo].[usp_addstudent]

		@userName varchar(30),
		@password nvarchar(25),
		@firstName varchar(25),
		@lastName varchar(25),
		@email varchar(50),
		@student_pass nvarchar(25)

as
begin

		if @userName='MohamedFotouh' and @password='0122'
			begin 
				print 'Welcome ,Manager Mohamed'
				insert into Students
				values(@firstName,@lastName,@email,@student_pass)
			end
		else
			print 'UserName or Password is incorrect'
end