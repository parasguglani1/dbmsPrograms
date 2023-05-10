drop table student;
create table student(
id number(5),
full_name varchar2(30),
phone_number number(10)
);

   
insert into student values(8266, 'Aarzoo Rathaur', 8147281659);
insert into student values(8285, 'Kritika', 7462849156);
insert into student values(9108, 'Arti Rani', 6382916754);
insert into student values(9118, 'Khushi Verma', 9826743218);
insert into student values(9123, 'Kiara', 5678321567);

drop table details;
create table details(
id number(4),
department varchar(20),
section number(3));


insert into details values(8266, 'Computer Science', 801);
insert into details values(8285, 'Computer Science', 801);
insert into details values(9108, 'Biotechnology', 802);
insert into details values(9118, 'Biotechnology', 802);
insert into details values(9123, 'Mechatronics', 803);

CREATE or replace PACKAGE INFO AS
   PROCEDURE find_student(s_id student.id%type);
END INFO;
/






CREATE OR REPLACE PACKAGE BODY INFO AS
PROCEDURE find_student(s_id student.id%TYPE) IS
F_name student.full_name%TYPE;
p_num student.phone_number%TYPE;


BEGIN
SELECT full_name,phone_number   into F_name,P_num
FROM student
WHERE id = s_id;
dbms_output.put_line('name is ' || F_Name || ' phone number is ' || P_num);
END find_student;
END INFO;
/


execute INFO.find_student(8266);


