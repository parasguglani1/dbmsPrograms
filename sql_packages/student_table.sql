drop table student;
create table student(
rollno number(5),
sname varchar2(30),
age number(5) 
);


insert into student values(9403, 'Paras', 20);
insert into student values(9500, 'Manav', 21);
insert into student values(9510, 'Rohan', 22);
insert into student values(1111, 'Shivam', 25);



CREATE OR REPLACE PACKAGE pkg_student IS
PROCEDURE updateRecord(sno student.rollno%type);
FUNCTION deleteRecord(snm student.sname%type) RETURN boolean;
END pkg_student;
/

CREATE OR REPLACE PACKAGE BODY pkg_student IS
	PROCEDURE updateRecord(sno student.rollno%type) IS
		BEGIN
			Update student set age=18 where rollno=sno;
			IF  SQL%FOUND THEN
				dbms_output.put_line('RECORD UPDATED');
			ELSE
				dbms_output.put_line('RECORD NOT FOUND');
			END IF;
		END updateRecord;

	FUNCTION deleteRecord(snm student.sname%type) RETURN boolean IS
		BEGIN
			Delete from student where sname=snm;
			RETURN SQL%FOUND;
		END deleteRecord;
END pkg_student;
/

DECLARE
	sno student.rollno%type;
	s_age student.age%type;
	snm student.sname%type;
BEGIN
	sno := 9403;
	snm := 'Paras';
	pkg_student.updateRecord(sno);
	IF pkg_student.deleteRecord(snm) THEN
		dbms_output.put_line('RECORD DELETED');
	ELSE
		dbms_output.put_line('RECORD NOT FOUND');
	END IF;
END;


select * from student;
