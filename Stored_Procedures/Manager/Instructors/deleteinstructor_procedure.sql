USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deleteinstructor]    Script Date: 1/7/2025 5:11:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting instructors 

ALTER procedure [dbo].[usp_deleteinstructor]

	@userName varchar(30),
	@password varchar(30),
	@instruvtorId int
	

as
begin
		
		if @userName='MohamedFotouh' and @password='0122'
			begin
				print 'Welcome , manager Mohamed'
				delete from Instructors
				where id=@instruvtorId
			end
		else
			print 'UserName or Password is in correct'
end

