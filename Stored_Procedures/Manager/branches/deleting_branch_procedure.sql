USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deletebranch]    Script Date: 1/7/2025 5:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting branch procedure

ALTER procedure [dbo].[usp_deletebranch]
  
   @userName varchar(30),
   @password nvarchar(30),
   @branchName varchar(30)

as
begin
	if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,manager Mohamed'
			delete from branches 
			where [name]=@branchName
		end
	else
		print 'Username or Password is incorrect'
end