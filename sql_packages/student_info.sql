drop table student;
create table student(
stu_id number(5),
full_name varchar2(30),
phone_number number(10) 
);


insert into student values(8266, 'Aarzoo Rathaur', 8147281659);
insert into student values(8285, 'Kritika', 7462849156);
insert into student values(9108, 'Arti Rani', 6382916754);
insert into student values(9118, 'Khushi Verma', 9826743218);
insert into student values(9123, 'Kiara', 5678321567);

create table details(
    id number(4), 
    department varchar(20),
    section number(3));
    
insert into student values(8266, 'Computer Science', 801);
insert into student values(8285, 'Computer Science', 801);
insert into student values(9108, 'Biotechnology', 802);
insert into student values(9118, 'Biotechnology', 802);
insert into student values(9123, 'Mechatronics', 803);

CREATE PACKAGE INFO AS 
   PROCEDURE find_student(stu_id student.id%TYPE); 
END INFO; 
/

CREATE OR REPLACE PACKAGE BODY INFO AS 

PROCEDURE find_student(stu_id student.id%TYPE) IS 

BEGIN 
SELECT full_name, phone_number INTO details 
FROM student
WHERE id = stu_id; 
dbms_output.put_line(details); 
END find_student; 
END INFO; 
/