USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deletetrack]    Script Date: 1/7/2025 5:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting track

ALTER procedure [dbo].[usp_deletetrack]

		@userName varchar(30),
		@password nvarchar(25),
		@trackId int
		
		

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			delete from tracks
			where id=@trackId
		end
		else
			print 'Username or Password is incorrect'
end

