USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_edittrack]    Script Date: 1/7/2025 5:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing track

ALTER procedure [dbo].[usp_edittrack]

		@userName varchar(30),
		@password nvarchar(25),
		@trackId int,
		@trackName varchar(35)
		

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			update tracks
			set track_name = @trackName
			where id=@trackId
		end
		else
			print 'Username or Password is incorrect'
end

