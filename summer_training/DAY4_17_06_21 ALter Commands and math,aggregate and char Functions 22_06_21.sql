--------------------------------------------------DAY4 ALter Commands and math,aggregate and char Functions 22_06_21 

create table student(
s_name    char(10),
roll      int,              
city      varchar(10),
section    varchar(10),
bal_due    float(5)
);
 
insert all
 into student VALUES('joe',1, 'Delhi','20B', 10000)
  into student VALUES('Rock',2, 'Mumbai','20B', 12000)
  into student VALUES('chandler',3, 'Mumbai','20B', 100)
  select 1 from dual;

select * from student;
desc student;
---ALTER COMMAND
--used to change the scheme of the table
alter table student
add BAL_DUE NUMBER
 
alter table student
ADD (
       PHONE VARCHAR(10),
       FOOD   CHAR(1)

);

--modify command
--use to change data type or length of data type

ALTER TABLE STUDENT 
MODIFY SECTION DECIMAL(4);
 
ALTER TABLE STUDENT 
MODIFY (
PHONE VARCHAR(12),  FOOD CHAR(3)
);
 
ALTER TABLE STUDENT 
RENAME COLUMN FOOD TO MESS;

--Drop collumn to delete a collumn 
ALTER TABLE STUDENT
DROP COLUMN MESS;
ALTER TABLE STUDENT
DROP ( HOSTEL, PHONE);
 
-------number/ math functions
 
SELECT ABS(-100.45) FROM DUAL;
SELECT ABS(-15) "RESULT" FROM DUAL;
 
SELECT CEIL(3.65) FROM DUAL;
SELECT FLOOR(3.65) FROM DUAL;
 
SELECT ROUND(15.2369,3)FROM DUAL;
 
SELECT MOD(10,3) "REMAINDER" FROM DUAL;
 
SELECT POWER(2,2), SQRT(5) FROM DUAL;
 
SELECT SIGN(-11), SIGN(15), SIGN(0) FROM DUAL;
 
SELECT TRUNC(115.2369,3), ROUND(115.2369,3) FROM DUAL;
 
-----CHARACTER FUNCTIONS
SELECT LOWER('JANITOR') "RESULT" FROM DUAL;
 
SELECT UPPER('abcg') FROM DUAL;
 
select UPPER(S_NAME)
FROM STUDENT;
 
SELECT *FROM STUDENT;
 
UPDATE STUDENT
SET S_NAME = UPPER(S_NAME);
 --to capitalize only First letter i.e initial letter
UPDATE STUDENT
SET S_NAME = INITCAP(S_NAME);
 
SELECT LENGTH('MY NAME') "LENGTHY" FROM DUAL;
 
SELECT SUBSTR('HELLOTHERE',1,5) "SUB-STR" FROM DUAL; 
--gives substring from starting position 1 TO ending position 5  
 
SELECT INSTR('VICKHAM','A') "OCCURENCE" FROM DUAL;
SELECT INSTR('VICKHAM','C') "OCCURENCE" FROM DUAL;
--tells position of the letter
 
-----aggeregate function
SELECT AVG(BAL_DUE) "AVERAGE" FROM STUDENT;
 
SELECT MAX(BAL_DUE) "MAXIMUM" FROM STUDENT;
 

SELECT MIN(BAL_DUE) FROM STUDENT;
 
SELECT SUM(BAL_DUE) "TOTAL" FROM STUDENT;
 --count number of rows in table
SELECT COUNT(*) FROM STUDENT;
 --count number of names in table
SELECT COUNT(S_NAME) FROM STUDENT;