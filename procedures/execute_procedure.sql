CREATE OR REPLACE PROCEDURE greetings 
    AS 
BEGIN 
   dbms_output.put_line('Hello World!'); 
END; 
/


Declare
begin
greetings;
END;
/
    


execute greetings;