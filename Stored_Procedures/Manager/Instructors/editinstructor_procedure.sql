USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editinstructor]    Script Date: 1/7/2025 5:46:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing instructors 

ALTER procedure [dbo].[usp_editinstructor]

	@userName varchar(30),
	@password varchar(30),
	@instruvtorId int,
	@firstName varchar(20),
	@lastName varchar(20),
	@email varchar(50),
	@instructor_pass nvarchar(30)

as
begin
		
		if @userName='MohamedFotouh' and @password='0122'
			begin
				print 'Welcome , manager Mohamed'
				update Instructors
				set First_Name=@firstName,
				Last_Name=@lastName,
				Email=@email,
				Password=@instructor_pass
				where id=@instruvtorId
			end
		else
			print 'UserName or Password is in correct'
end
