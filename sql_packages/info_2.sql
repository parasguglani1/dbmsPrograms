CREATE OR REPLACE PACKAGE INFO AS 
  PROCEDURE stu_info(s_id student.id%type); 
END INFO; 
/

CREATE OR REPLACE PACKAGE BODY INFO AS 
  PROCEDURE stu_info(s_id student.id%type) IS 
  s_fname student.fname%TYPE;
  s_p_no student.p_no%TYPE;
  BEGIN 
    SELECT fname INTO s_fname FROM student WHERE id = s_id; 
    dbms_output.put_line('NAME : '|| s_fname); 
    SELECT p_no INTO s_p_no FROM student WHERE id = s_id; 
    dbms_output.put_line('PHONE NO : '|| s_p_no); 
  END stu_info; 
END INFO; 
/

CREATE OR REPLACE PACKAGE stu1 AS 
 PROCEDURE stu_dept(s_dept DEPT.dept_no%type); 
END stu1; 
/

CREATE OR REPLACE PACKAGE BODY stu1 AS 
  PROCEDURE stu_dept(s_dept DEPT.dept_no%type) IS 
  no DEPT.dept_no%type;
  BEGIN 
    no := 0;
    SELECT dept_no INTO no FROM DEPT WHERE dept_no = s_dept;
    if no = 0 then
      dbms_output.put_line('FALSE'); 
    else
      dbms_output.put_line('TRUE');
    end if;
  END stu_dept; 
END stu1; 
/

declare
  sid number;
begin
  sid:=102;
  INFO.stu_info(sid);
end;
/

declare
  sdept number;
begin
  sdept:=20;
  stu1.stu_dept(sdept);
end;
/