USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_answeringQues]    Script Date: 1/3/2025 3:33:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--student answers the questions
ALTER procedure [dbo].[usp_answeringQues]
	@student_id int,
	@exam_id int,
	@question_id int,
	@answer varchar(max)

as
begin
	insert into [dbo].students_answers(student_id,exam_id,question_id,answer)
	values(@student_id,@exam_id,@question_id,@answer)
end

