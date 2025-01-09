--Create an instructor login & database user for it
create login prof_shaban
with password= '123456';

create user prof_shaban for login prof_shaban

----Create a training manager login & database user for it
create login MohamedFotouh
with password='0122';
create user MohamedFotouh for login MohamedFotouh

create login IbrahimShaban
with password='301002';
create user IbrahimShaban for login IbrahimShaban

--create a student login & database user for it
create login ebrahim_shaban 
with password ='301002';

create user student_ebrahim for login ebrahim_shaban
