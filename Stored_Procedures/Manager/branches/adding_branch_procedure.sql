USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addbranch]    Script Date: 1/7/2025 5:06:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--create adding branch procedure 
ALTER procedure [dbo].[usp_addbranch]

		@userName varchar(35),
		@password nvarchar(35),   --password may be in any language
		@branchName varchar(30)

as
begin
	if @userName='MohamedFotouh' and @password='0122'
	begin
		print 'Welcome ,Manager Mohamed'
		insert into branches 
		values(@branchName);
	end
	else
		print 'UserName or Password is incorrect'
end