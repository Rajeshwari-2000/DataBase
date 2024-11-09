
/*
drop procedure if exists temp;
delimiter $
create procedure temp()

begin
  declare message varchar(30);
  declare curr_date date;
  
  set message = 'my first pl/sql program';
  set curr_date = curdate();
  
  select message,curr_date;
  
end $
delimiter ;
*/



drop procedure if exists dept;
delimiter $
create procedure dept()

begin
declare deptno int;

select deptno = max(deptno)
from dept;

if deptno is not null
begin
    print 'the maximum department number is ' + cast(deptno as varchar);
end
else
begin
    print 'error: no department numbers found';
end
end $
delimiter ;