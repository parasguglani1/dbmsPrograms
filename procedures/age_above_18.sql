declare
age number;
procedure checkage(x in number) is
begin 
if x < 18 then
dbms_output.put_line('age is less than 18');
else
dbms_output.put_line('age is more than 18');
end if;
end;
begin
age := 15;
checkage(age);
end;