USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editstudent]    Script Date: 1/7/2025 5:47:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing student

ALTER procedure [dbo].[usp_editstudent]

		@userName varchar(30),
		@password nvarchar(25),
		@studentId int,
		@firstName varchar(25),
		@lastName varchar(25),
		@email varchar(50),
		@student_pass nvarchar(25)

as
begin

		if @userName='MohamedFotouh' and @password='0122'
			begin 
				print 'Welcome ,Manager Mohamed'
				update Students
				set First_Name=@firstName,
				Last_Name=@lastName,
				Email=@email,
				Password=@student_pass
				where id=@studentId
			end
		else
			print 'UserName or Password is incorrect'
end

