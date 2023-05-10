DECLARE
num1 number;
num2 number;
num3 number;
PROCEDURE findMin(x IN number, y IN NUMBER, z OUT Number) IS
BEGIN 
    if x< y THEN
        z:= x;
    ELSE
        z:= y;
    END IF;
END;
BEGIN
    num1:= 94;
    num2:= 85;
    findMin(num1, num2, num3);
    dbms_output.put_line('Minimum of : ' ||num1 || ' and ' || num2 ||' is ' || num3);
END;
/
