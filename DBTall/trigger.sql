

drop procedure if exists pro1;
delimiter $
create trigger insertstudent
after insert on student
for each row
begin
    insert into log (date, time, message)
    values (curdate(), curtime(), 'record inserted successfully');
end $

delimiter 