--------------------------------------------------------------------------------------------------
---------------creating trigggers-----

-------prevent instructors table from modifying except manager----


create trigger prevent_instructor_from_modifying
on Instructors
for insert,update,delete
as
begin
	declare @current_login_name varchar(max)
	set @current_login_name=substring(SUSER_SNAME(),CHARINDEX('\',SUSER_SNAME())+1,LEN(suser_sname()));
	declare @count int 
	select @count=count(id)
	from [dbo].Managers
	where name= @current_login_name
	if @count=0
	begin
		 RAISERROR('Not allowed to modify instructors.', 16, 1);
		rollback transaction;
	end
end	

