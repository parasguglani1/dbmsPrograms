q1
create table department
(
deptno number,
deptname varchar2(10),
Location varchar2(10)
);



alter table department
add designation varchar2(10);

desc department;

insert into department values('6','GENERAL','UP','CEO');
insert into department values('5','SERVICE', 'DELHI','DEVELOPER');
insert into department values('8','MARKETING','MEERUT','CFO');
insert into department values('9','RESEARCH', 'Delhi','ANALYST');
insert into department values('10','HR','Chennai','CHRO');
insert into department values('9','RESEARCH', 'Chandigarh','ANALYST');
insert into department values('5','SERVICE', 'PUNJAB','DEVELOPER');
insert into department values('5','SERVICE', 'Banglore','DEVELOPER');
insert into department values('9','RESEARCH', 'BIHAR','ANALYST');
insert into department values('7','SECURITY', 'KOLKATA','GUARD');

drop table department;
select * from department;

select deptno,deptname
from department
group by deptno, deptname;

update department
set deptname='TECHNICAL', LOCATION='HYDERABAD', designation='TECHNICIAN' where deptno='9';
select * from department;

UPDATE department
SET DESIGNATION = NULL
WHERE DESIGNATION IS NOT NULL;

SELECT * FROM department
ORDER BY DEPTNO DESC;












	create table EMP
(
EMPNO NUMBER(4) NOT NULL,
ENAME VARCHAR2(10),
JOB VARCHAR2(9),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(3),
AGE NUMBER(3),
ESAL NUMBER(3)
);

desc EMP;

drop table EMP;
insert into EMP values('9403','PARAS','CEO','7902','22-AUG-16','4500','400','10','19','365');
insert into EMP values('3688','MANAV','DEVELOPER','7902','16-FEB-09','1000','456','10','26','786');
insert into EMP values('9633','MARGHOOB','CFO','7922','12-MAR-16','3500','443','20','28','450');
insert into EMP values('9485','FARDEEN','HR','7554','11-JUN-15','1500','486','10','25','525');
insert into EMP values('9854','ISHAN','CHRO','7221','15-AUG-13','4000','457','18','45','985');
insert into EMP values('7548','AKASH','SALES','7566','14-MAR-19','3000','430','17','50','460');
insert into EMP values('8845','PRAYAS','DESIGNER','7789','19-MAR-17','5000','456','10','60','952');
insert into EMP values('9845','HARSH','ANALYST','8558','10-APR-07','2000','482','20','62','458');
insert into EMP values('4935','LALIT','LAWYER','7789','14-DEC-20','3000','415','20','51','470');
insert into EMP values('8945','NIVESH','DEVELOPER','7789','22-NOV-16','1750','459','12','47','320');

SELECT * FROM EMP;

select ENAME,SAL from EMP where SAL between 1500 and 3500;
select ENAME,MGR from EMP where MGR in(7902,7566,7789);
select ENAME,DEPTNO from EMP where DEPTNO in (10,20);