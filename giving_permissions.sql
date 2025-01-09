--giving permissions (insert & update & delete ) on tables(branches,courses,Instructors,
--intake,tracks,Students,instructor_courses) to training manager end_mohamed 
use ExamSystem
grant insert,update,delete on branches to MohamedFotouh;  
grant insert,update,delete on courses to MohamedFotouh;  
grant insert,update,delete on Instructors to MohamedFotouh;
grant insert,update,delete on intake to MohamedFotouh; 
grant insert,update,delete on tracks to MohamedFotouh;  
grant insert,update,delete on Students to MohamedFotouh;  
grant insert,update,delete on instructor_courses to MohamedFotouh;
grant insert,update,delete on Managers to MohamedFotouh;


grant exec on object :: [dbo].usp_addbranch to MohamedFotouh;
grant exec on object :: [dbo].usp_editbranch to MohamedFotouh;
grant exec on object :: [dbo].usp_deletebranch to MohamedFotouh;
grant exec on object :: [dbo].usp_addcourse to MohamedFotouh;
grant exec on object :: [dbo].usp_editcourse to MohamedFotouh;
grant exec on object :: [dbo].usp_deletecourse to MohamedFotouh;
grant exec on object :: [dbo].usp_addinstructor to MohamedFotouh;
grant exec on object :: [dbo].usp_editinstructor to MohamedFotouh;
grant exec on object :: [dbo].usp_deleteinstructor to MohamedFotouh;
grant exec on object :: [dbo].usp_addintake to MohamedFotouh;
grant exec on object :: [dbo].usp_editintake to MohamedFotouh;
grant exec on object :: [dbo].usp_deleteintake to MohamedFotouh;
grant exec on object :: [dbo].usp_addtrack to MohamedFotouh;
grant exec on object :: [dbo].usp_edittrack to MohamedFotouh;
grant exec on object :: [dbo].usp_deletetrack to MohamedFotouh;
grant exec on object :: [dbo].usp_addstudent to MohamedFotouh;
grant exec on object :: [dbo].usp_editstudent to MohamedFotouh;
grant exec on object :: [dbo].usp_deletestudent to MohamedFotouh;
grant exec on object :: [dbo].usp_assignInstructorToCourse to MohamedFotouh;
grant exec on object :: [dbo].usp_editingInstructorCourses to MohamedFotouh;
grant exec on object :: [dbo].usp_unAssignInstructorFromCourse to MohamedFotouh;

--giving permissions (add & update & delete) on tables 
--(exams, exam_questions , questions_pool) to instructor prof_shaban

grant insert,update,delete on exams to prof_shaban;
grant insert,update,delete on exam_questions to prof_shaban;
grant insert,update,delete on questions_pool to prof_shaban;
revoke insert,update,delete on schema :: dbo to prof_shaban;

grant exec on object :: [dbo].usp_addQues to  prof_shaban;
grant exec on object :: [dbo].usp_editQues to  prof_shaban;
grant exec on object :: [dbo].usp_deleteQues to  prof_shaban;
grant exec on object :: [dbo].usp_selectQuesManually to  prof_shaban;
grant exec on object :: [dbo].usp_selectRandomQues to  prof_shaban;
grant exec on object :: [dbo].usp_showMyQuess to  prof_shaban;





