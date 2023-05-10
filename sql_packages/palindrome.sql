create or replace package palindrom as procedure palindrome(s varchar,l in out varchar, t in out varchar); 
end palindrom;
/


create or replace package body palindrom 
as 

procedure palindrome(s varchar,l in out varchar, t in out varchar) is  

begin
    FOR i IN REVERSE 1..Length(s) LOOP 
        l := Substr(s, i, 1); 

    
        t := t ||'' || l; 
    END LOOP; 

    IF t = s THEN 
    dbms_output.Put_line(s ||'' ||' is palindrome'); 
    ELSE 
    dbms_output.Put_line(s ||'' ||' is not palindrome'); 
    END IF; 
END; 
end palindrom;
/

-----------------
declare
s VARCHAR(10);
l VARCHAR2(20); 
t VARCHAR2(10);

begin
s :='malayalam';
palindrom.palindrome(s,l,t);

end;
/