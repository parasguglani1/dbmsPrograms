
  DROP TABLE student;
  CREATE TABLE student (ID INTEGER,FNAME VARCHAR(20),LNAME VARCHAR(20),GENDER CHAR(1),dept number(20),p_no number(10));
  INSERT INTO student VALUES(101,'Paras','Guglani','M',20,8630539308);
  INSERT INTO student VALUES(102,'Manav','Guglani','M',21,8909505243);
  INSERT INTO student VALUES(103,'Rohan','Ghosh','M',22,9080706050);
  INSERT INTO student VALUES(104,'Ruchi','SINHA','F',23,9192939495);
  INSERT INTO student VALUES(105,'Harsh','Rana','M',24,8765432198);

  select * from student;

  
  CREATE OR REPLACE PACKAGE stu AS 
    PROCEDURE stu_info(s_id student.id%type); 
    PROCEDURE stu_dept(s_dept student.dept%type); 
  END stu; 
  /

  --------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY stu AS 
    
    PROCEDURE stu_info(s_id student.id%type) IS 
    s_fname student.fname%TYPE;
    s_p_no student.p_no%TYPE;
    
    BEGIN 
        
      SELECT fname INTO s_fname
      FROM student 
      WHERE id = s_id; 
      dbms_output.put_line('NAME : '|| s_fname); 
      SELECT p_no INTO s_p_no
      FROM student 
      WHERE id = s_id; 
      dbms_output.put_line('PHONE NO : '||  s_p_no); 


    END stu_info; 
  PROCEDURE stu_dept(s_dept student.dept%type) IS 
    
    s_fname student.fname%TYPE;
    
    BEGIN 
        
      if s_dept=10 then
      dbms_output.put_line('TRUE '); 
      else
    dbms_output.put_line(' FALSE ');
  end if;

    END stu_dept;


  END stu; 
  /
  ----------------find department exist or not------------------------------



  -----------------student info------------------------------------
  declare
  sid number;
  begin
  sid:=102;
  stu.stu_info(sid);
  end;
  /

  -----------department----------
  declare
  sdept number;
  begin
  sdept:=20;
  stu.stu_dept(sdept);
  end;
  /
