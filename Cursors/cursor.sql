------cursor------------
----  display all questions body using cursor -----

declare display_quesbody cursor
	for select question_body
	from questions_pool
	where question_body is not null
	for read only

declare @body varchar(max),@all_quesbody varchar(max)=''
open display_quesbody
	fetch display_quesbody  into @body
	while @@FETCH_STATUS=0
		begin
			set @all_quesbody=CONCAT(@all_quesbody,',',@body);
			fetch display_quesbody into @body
		end
	select @all_quesbody
close display_quesbody
deallocate display_quesbody