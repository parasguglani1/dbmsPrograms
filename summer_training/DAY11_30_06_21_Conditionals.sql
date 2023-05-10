CREATE table PERSON(
PERSONID INT ,
FIRSTNAME VARCHAR(20) NOT NULL,
AGE INT DeFAULT 0,
SALARY INT DEFAULT 100,
PRIMARY KEY(PERSONID)
);

INSERT INTO PERSON VALUES(1,'AMAN',25,5000);
INSERT INTO PERSON VALUES(2,'JOE',20,5000);
INSERT INTO PERSON VALUES(3,'SIMMI',15,5000);

SELECT *FROM PERSON;
------
DECLARE
PID PERSON.PERSONID%TYPE :=2;
PNAME PERSON.FIRSTNAME%TYPE;
INCOME PERSON.SALARY%TYPE;
BEGIN

SELECT PERSONID,FIRSTNAME,SALARY INTO PID, PNAME,INCOME
FROM PERSON
WHERE PERSONID = PID;

DBMS_OUTPUT.PUT_LINE('NAME=  '|| PNAME||' HAS ID =' ||PID|| 'WITHDRAWS SALARY = '|| INCOME);

END;

--IF THEN
DECLARE
VAR_1 NUMBER(3) :=10;
BEGIN
IF (VAR_1 <100) THEN
DBMS_OUTPUT.PUT_LINE('VALUE IS LESS THAN 100');
END IF;
END;

---
DECLARE
PID PERSON.PERSONID%TYPE :=3;
PNAME PERSON.FIRSTNAME%TYPE;
INCOME PERSON.SALARY%TYPE;
BEGIN

SELECT SALARY INTO INCOME
FROM PERSON
WHERE PERSONID=PID;
IF (INCOME<25000) THEN

UPDATE PERSON SET SALARY=SALARY/2
WHERE PERSONID=PID;
DBMS_OUTPUT.PUT_LINE('UPDATED');

END IF;
END;

--- IF THEN ELSE

DECLARE
VAR_1 NUMBER(3) :=10;
BEGIN
IF(VAR_1>100) THEN
DBMS_OUTPUT.PUT_LINE('VALUE IS GREATER THAN 100');
ELSE
VAR_1:=VAR_1+10;
DBMS_OUTPUT.PUT_LINE('VALUE IS' || VAR_1); 
END IF;
END;

DECLARE
PID PERSON.PERSONID%TYPE ;
PNAME PERSON.FIRSTNAME%TYPE :='AMAN';
INCOME PERSON.SALARY%TYPE;
BEGIN

SELECT PERSONID, FIRSTNAME, SALARY INTO PID,PNAME,INCOME 
FROM PERSON
WHERE FIRSTNAME=PNAME;

IF (INCOME>10000) THEN
UPDATE PERSON SET SALARY=SALARY-1000
WHERE FIRSTNAME=PNAME;

ELSE
UPDATE PERSON SET SALARY=SALARY+2000
WHERE FIRSTNAME=PNAME;

DBMS_OUTPUT.PUT_LINE( 'SALARY UPDATED OF '|| PNAME);
END IF;
END;

---ELSEIF 

DECLARE
PID PERSON.PERSONID%TYPE ;
PNAME PERSON.FIRSTNAME%TYPE :='AMAN';
INCOME PERSON.SALARY%TYPE;
BEGIN

SELECT PERSONID, FIRSTNAME, SALARY INTO PID,PNAME,INCOME 
FROM PERSON
WHERE FIRSTNAME=PNAME;

IF (INCOME>10000) THEN
UPDATE PERSON SET SALARY=SALARY-1000
WHERE FIRSTNAME=PNAME;

ELSIF (INCOME=10000) THEN
UPDATE PERSON SET SALARY=SALARY+2000
WHERE FIRSTNAME=PNAME;

ELSE
UPDATE PERSON SET SALARY=SALARY+3000
WHERE FIRSTNAME=PNAME;

END IF;
DBMS_OUTPUT.PUT_LINE( 'DONE');

END;