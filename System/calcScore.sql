select distinct sa.question_id,sa.exam_id,sa.answer,s.id, s.First_Name  from   
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
where  s.id=sa.student_id and e.id=sa.exam_id and sa.answer=qp.correct_answer
order by s.id

