USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_addtrack]    Script Date: 1/7/2025 5:09:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--adding track

ALTER procedure [dbo].[usp_addtrack]

		@userName varchar(30),
		@password nvarchar(25),
		@trackName varchar(35)
		

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			insert into tracks
			values(@trackName)
		end
		else
			print 'Username or Password is incorrect'
end

