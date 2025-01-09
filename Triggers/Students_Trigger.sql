--------------------------------------------------------------------------------------------------
---------------creating trigggers-----

-------prevent student table from modifying----

create trigger prevent_student_from_modifying
on Students
for insert,update,delete
as
begin
	declare @current_login_name varchar(max)
	set @current_login_name=substring(SUSER_SNAME(),CHARINDEX('\',SUSER_SNAME())+1,LEN(suser_sname()));
	if @current_login_name='BG'
		begin
			return;
		end
	declare @count int 
	select @count=count(id)
	from [dbo].Managers
	where name= @current_login_name
	if @count=0
	begin
		 RAISERROR('Not allowed to modify students.', 16, 1);
		rollback transaction;
	end
end	

--drop trigger prevent_student_from_modifying

