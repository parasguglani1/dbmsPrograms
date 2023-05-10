drop table student;
CREATE TABLE student ( 
S_UID     NUMBER (5)  , 
FNAME VARCHAR2 (20),
LNAME VARCHAR2 (20)
);

CREATE OR REPLACE PROCEDURE insertstudent(
    p_id IN number(5),
    p_fname IN VARCHAR2(20),
    p_lname IN VARCHAR2(20))
    
IS
BEGIN
INSERT INTO Student ("S_UID", "FNAME","LNAME") 
VALUES (p_id, p_fname, p_lname);
END;
/   

BEGIN
insertstudent(9403,'paras','guglani');
insertstudent(0001,'AAA', 'BBB');
insertstudent(0002,'CCC', 'DDD');
insertstudent(0003,'EEE', 'FFF');
insertstudent(0004,'GGG', 'HHH');
insertstudent(0005,'III', 'JJJ');

END;
/

select * from student;

