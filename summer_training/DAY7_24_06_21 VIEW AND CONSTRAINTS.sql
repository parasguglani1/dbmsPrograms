create table employee
(
f_name  char(10),
last_name  char(10),
emp_id    int,
salary    int,
department  char(3),
loc        varchar(10),
yos        float
);
insert into employee values('Joe','mac',101,10000,'CSE','Delhi',10);    
insert into employee values('John','robinson',12,25000,'CSE','UK',8);
insert into employee values ('Mon','mark',10,50000,'AR','Mumbai',5.5);
insert into employee values('Rach','Tom',131,36000,'IT','Delhi',1.2);
insert into employee (f_name, emp_id,salary,department,loc) values ('Mark',110,5000,'CIV','Ludhiana');
insert into employee (f_name,last_name,emp_id,salary,department) values ('richie','evans',110,5000,'IT');

select *from employee;
UPDATE EMPLOYEE SET F_NAME=INITCAP(F_NAME),DEPARTMENT=UPPER(DEPARTMENT),LOC=INITCAP(LOC);

---VIEW
 
CREATE VIEW EMP_INFO AS
SELECT F_NAME || LAST_NAME  "EMP_NAME" , EMP_ID, DEPARTMENT,LOC
FROM EMPLOYEE
WHERE DEPARTMENT IN('CSE', 'IT','AR') AND SALARY>1000
ORDER BY EMP_ID;
 
SELECT * FROM EMP_INFO;
 
---GIVE THE COUNT OF EMPLOYEES UNDER EACH DEPARTMENT
 
SELECT  DEPARTMENT, COUNT(DEPARTMENT) "HEADCOUNT"
FROM Emp_info
GROUP BY DEPARTMENT
ORDER BY DEPARTMENT DESC;
 
---ALTER THE VIEW
 
CREATE OR REPLACE VIEW  EMP_INFO AS
SELECT F_NAME || LAST_NAME  "EMP_NAME" , EMP_ID, DEPARTMENT,SALARY
FROM EMPLOYEE
WHERE DEPARTMENT IN('CSE', 'IT','AR') AND SALARY>1000
ORDER BY EMP_ID;
 
-------
CREATE VIEW NEW_ONE (FIRST_NAME, LAST_NAME, UNIQUE_ID, DESIGNATION, COMPENSATION) AS
SELECT F_NAME, LAST_NAME,EMP_ID,DEPARTMENT,SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 1000 AND 40000
ORDER BY EMP_ID;

 SELECT * FROM NEW_ONE;
 
-- DISPLAY THE DETAILS OF EMPLOYEES WHOSE NAME STARTS WITH R
select * from new_one
where first_name like 'R%'-- %R---%R%
order by first_name;
 
---DROP THE VIEW
DROP VIEW NEW_ONE;

--- CONSTRAINTS 
create table PERSON
(
U_ID INT PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
AGE INT
);

INSERT INTO PERSON (U_ID, NAME,AGE) VALUES(1,'RACH', 30);

SELECT * FROM PERSON;
--can't insert because values are null
INSERT INTO PERSON (NAME) VALUES ('ROY');

SELECT * FROM PERSON
WHERE NOT (U_ID IS NULL)
ORDER BY AGE NULLS FIRST;

SELECT * FROM PERSON
WHERE NOT (U_ID IS NULL)
ORDER BY AGE NULLS LAST;






