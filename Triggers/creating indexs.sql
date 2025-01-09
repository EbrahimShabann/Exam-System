----------- none clustered indexes----------------------------------
----------------index by student name---------------

create nonclustered index stud_index_byFname 
on Students(First_Name)

----------------index by instructor name---------------

create nonclustered index instr_index_byFname
on Instructors(First_Name)

----------------index by exam type---------------

create nonclustered index exam_index_byType
on exams(type)