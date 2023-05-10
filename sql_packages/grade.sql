-- Create a package which contains function to ask the user to enter the student’s marks and determine the GRADE according to the following criteria.

-- >90 A

-- >80AND <90 B

-- >70AND <80 C

-- >60 AND<70 D

-- <60 F


create or replace package STUDENT as function MARKS(mark in number) return number;
end;
/
create or replace package body STUDENT AS function MARKS(mark in number) return number IS
c number;
begin
IF( mark >= 90) THEN
RETURN 1;
ELSIF(mark >= 80 AND mark < 90) THEN
RETURN 2;
ELSIF(mark >= 70 AND mark < 80) THEN
RETURN 3;
ELSIF(mark >= 60 AND mark < 70) THEN
RETURN 4;
ELSIF(mark < 60) THEN
RETURN 5;
END IF;
end MARKS;
end STUDENT;
/

declare
i number;
k number := 65;
begin
i:= STUDENT.MARKS(k);
dbms_output.put_line('Marks of the Student : ' || k);
IF( i=1) THEN
dbms_output.put_line('Grade A');
ELSIF(i=2) THEN
dbms_output.put_line('Grade B');
ELSIF(i=3) THEN
dbms_output.put_line('Grade C');
ELSIF(i=4) THEN
dbms_output.put_line('Grade D');
ELSIF(i=5) THEN
dbms_output.put_line('Grade F');
end if;
end;

