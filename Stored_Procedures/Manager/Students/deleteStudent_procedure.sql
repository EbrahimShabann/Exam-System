USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deletestudent]    Script Date: 1/7/2025 5:12:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting student

ALTER procedure [dbo].[usp_deletestudent]

		@userName varchar(30),
		@password nvarchar(25),
		@studentId int
		
as
begin

		if @userName='MohamedFotouh' and @password='0122'
			begin 
				print 'Welcome ,Manager Mohamed'
				delete from Students
				where id=@studentId
			end
		else
			print 'UserName or Password is incorrect'
end

