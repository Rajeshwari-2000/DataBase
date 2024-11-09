/*drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	select 'Hello World' R1;
end $

delimiter ;*/



/*
drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
	declare x int default 100;
	set @z:=now();
	select x,@a;
end $

delimiter ;
*/



/*
drop procedure if exists pro1;
delimiter $
create procedure pro1(x int, in y int)
begin 
	select x+y;
end $

delimiter ;
*/




/*
DROP PROCEDURE IF EXISTS pro1;
DELIMITER $
CREATE PROCEDURE pro1(IN x INT, IN y INT, OUT z INT)
BEGIN 
    SET z := x + y;  
END $
DELIMITER ;
*/



/*
drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int, in y int, out z int, out z1 int)
begin 
	set z := x+y;
	set z1 := x*y;
end $
delimiter ;
*/



/*
drop procedure if exists pro1;
delimiter $
create procedure pro1(in x int)
begin 
	if x = 100 THEN
		select  'Good';
	ELSE
		select 'Not Good';
	end  if;
end $
delimiter ;
*/

drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin 
declare x int default 1;
l:LOOP
select x;
set x:= x+1;			
if x=6 THEN
leave l;
end if;
end loop l;
end $
delimiter ;