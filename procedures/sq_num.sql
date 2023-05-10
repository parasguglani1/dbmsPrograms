DECLARE
num number;

PROCEDURE sqNum(x IN OUT number) IS
BEGIN 
   x:= x*x;
END;
BEGIN
    num:= 9403;
    sqNum(num);
    dbms_output.put_line('Square of  9403 is ' || num);
END;
/
