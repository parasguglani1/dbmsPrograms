declare
 s VARCHAR(10);
 l VARCHAR2(20); 
 t VARCHAR2(10);
 
PROCEDURE palindrome(s varchar) 
is
begin
    FOR i IN REVERSE 1..Length(s) LOOP 
        l := Substr(s, i, 1);   
  -- here || are used for concatenation of string. 

    t := t ||'' ||l; 
    END LOOP; 
  
    IF t = s THEN 
      dbms_output.Put_line(s ||'' ||' is palindrome'); 
    ELSE 
      dbms_output.Put_line(s ||'' ||' is not palindrome'); 
    END IF; 
END; 
-----------------
 begin
 s :='abba';
 palindrome(s);

 end;
