USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[usp_calcScore]    Script Date: 1/4/2025 2:50:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--calculate student score
ALTER procedure [dbo].[usp_calcScore]

		@student_id int,
		@exam_id int,
		@min_degree float

as 
begin

	declare @score float ,@status varchar(30)
	select @score=(count(*) * 100.0 ) / (select sum(exam_id) from exam_questions where exam_id=@exam_id)
	from
	Students s inner join 
	students_answers sa 
	on s.id=sa.student_id
	inner join 
	exams e 
	on sa.exam_id=e.id
	inner join
	exam_questions ex 
	on e.id=ex.exam_id
	inner join questions_pool qp
	on sa.question_id=qp.id
	where  s.id=@student_id and e.id=@exam_id and sa.answer=qp.correct_answer
	if @score> @min_degree
		begin
		print 'Congrats you have passed the exam';
		insert into student_exam
		values (@student_id,@exam_id,@score,'Success')
		end
	else
		begin
		print 'Sorry! you have failed the exam'
		insert into student_exam
		values (@student_id,@exam_id,@score,'Fail')
		end
end

					