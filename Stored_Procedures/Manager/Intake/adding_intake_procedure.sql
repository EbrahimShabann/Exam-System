USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addintake]    Script Date: 1/7/2025 5:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--adding intake

ALTER procedure [dbo].[usp_addintake]

		@userName varchar(30),
		@password nvarchar(25),
		@intake_name varchar(20)

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			insert into intake
			values(@intake_name)
		end
		else
			print 'Username or Password is incorrect'
end