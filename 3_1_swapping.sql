DECLARE
number1 NUMBER;
number2 NUMBER;
temp number;
BEGIN
number1 := 9403;
number2 := 1436;

dbms_output.Put_line('Before Swapping');

dbms_output.Put_line('first number = ' || number1 ||' second number = ' || number2);
number1 := number1 +number2;
number2 := number1 -number2;
number1 := number1 -number2;
dbms_output.Put_line('After swapping without using temporary variable');

dbms_output.Put_line('first number = ' || number1 ||' second number = ' || number2);

    temp := number1;
    number1 := number2;
    number2 := temp;
dbms_output.Put_line('After swapping again using temporary variable');
dbms_output.Put_line('first number = ' || number1 ||' second number = ' || number2);

END;