USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_deleteintake]    Script Date: 1/7/2025 5:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--deleting intake

ALTER procedure [dbo].[usp_deleteintake]

		@userName varchar(30),
		@password nvarchar(25),
		@intakeId int
		

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			delete from intake
			where id=@intakeId
		end
		else
			print 'Username or Password is incorrect'
end

