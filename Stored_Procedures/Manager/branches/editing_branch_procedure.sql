USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editbranch]    Script Date: 1/7/2025 5:45:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Editing branch procedure
ALTER procedure [dbo].[usp_editbranch]

	@userName varchar(35),
	@password nvarchar(35),
	@oldName varchar(30),
	@newName varchar(30)

as
begin
	if  @userName='MohamedFotouh' and @password='0122'
		begin
			print'Welcome ,Manager Mohamed'
			update branches 
			set [name]=@newName
			where [name]=@oldName
		end
	else
		print 'UserName or Password is incorrect'
end