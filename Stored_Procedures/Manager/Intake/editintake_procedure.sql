USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_editintake]    Script Date: 1/7/2025 5:47:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--editing intake

ALTER procedure [dbo].[usp_editintake]

		@userName varchar(30),
		@password nvarchar(25),
		@intakeId int,
		@intake_name varchar(20)

as
begin
		if @userName='MohamedFotouh' and @password='0122'
		begin
			print 'Welcome ,Manager Mohamed'
			update intake
			set name=@intake_name
			where id=@intakeId
		end
		else
			print 'Username or Password is incorrect'
end

