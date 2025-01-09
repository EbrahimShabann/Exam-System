--------------------------------------------------------------------------------------------------
---------------creating trigggers-----

-------prevent student table from modifying----

create trigger prevent_student_from_modifying
on Students
for insert,update,delete
as
declare @current_login_name varchar(max)
set @current_login_name=substring(SUSER_SNAME(),CHARINDEX('\',SUSER_SNAME())+1,LEN(suser_sname()));
declare @count int 
select @count=count(id)
from [dbo].Managers
where name= @current_login_name
if @count=0
print ' Not allowed for modifying'
rollback;

