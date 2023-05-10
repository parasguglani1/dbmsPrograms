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
insert into employee (f_name, emp_id,salary,department,loc,yos) values ('Mark',110,5000,'CIV','Ludhiana',1.3);
select *from employee;
 ------------SET OPERATORS
 SELECT * FROM
(SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE YOS>5
UNION
SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE LOC='Delhi');

--UNION is AUB

SELECT * FROM
(SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE YOS>5
UNION ALL
SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE LOC='Delhi');

-- Union ALL is A+B 
-- Union ALL repeats common values but union only shows one value once.

SELECT * FROM
(SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE YOS>5
INTERSECT
SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE LOC='Delhi');

SELECT * FROM
(SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE YOS>5
MINUS
SELECT F_NAME, EMP_ID, DEPARTMENT FROM employee WHERE LOC='Delhi');
--MINUS means A-B
-----------------------Group by
Select * from employee;

SELECT AVG(YOS), DEPARTMENT
FROM EMPLOYEE
GROUP BY DEPARTMENT;

SELECT COUNT(EMP_ID), DEPARTMENT
FROM EMPLOYEE
GROUP BY DEPARTMENT;

--DISPLAY THE COUNT OF EMPLOYEES BASED ON THEIR LOCATION
SELECT COUNT(EMP_ID), LOC
FROM EMPLOYEE
GROUP BY LOC;

----------------------HAVING CLAUSE
--Count the emloyees salary>20000

SELECT DEPARTMENT, COUNT(EMP_ID)
FROM EMPLOYEE
GROUP BY department, SALARY
HAVING salary>=20000;


SELECT DEPARTMENT, COUNT(*) FROM EMPLOYEE
GROUP BY DEPARTMENT,Salary 
HAVING count(*)<=1;

select salary, count(*)
from employee group by salary
having salary>20000;


--COUNT OF EMPLOYEE IN DEPT SALARY > 20000

select salary, department, count(*)
from employee
group by salary, department
having salary>20000;


--order by emp id
SELECT F_NAME, LAST_NAME, DEPARTMENT, EMP_ID
FROM EMPLOYEE
ORDER BY DEPARTMENT;

select salary, department, count(*)
from employee
group by salary, department
having salary> 20000
ORDER BY DEPARTMENT;

--%a% means having a in word
SELECT * FROM EMPLOYEE
WHERE F_NAME LIKE '%a%'
ORDER BY F_NAME;

--J% means having J as first letter
SELECT * FROM EMPLOYEE
WHERE F_NAME LIKE 'J%' 
ORDER BY EMP_ID;