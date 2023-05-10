-- Create a table using DDL/DML commands and constraints on it.
drop table person;

CREATE TABLE PERSON(
PID INT,
PNAME VARCHAR(20) NOT NULL,
AGE INT CHECK (AGE>18),
LOC VARCHAR(20) DEFAULT  'HOME STATION',
CONSTRAINT PK PRIMARY KEY(PID)
);

----------------------DML Commands
-- these values satisfy constraints
INSERT INTO PERSON VALUES (9403,'PARAS GUGLANI',20,'MEERUT');
INSERT INTO PERSON VALUES (2,'MANAV GUGLANI',21,'DELHI');
INSERT INTO PERSON VALUES (3,'RAHUL',22,'Chandigarh');
INSERT INTO PERSON VALUES (4,'ROHAN',23,'KOLKATA');
INSERT INTO PERSON(PID, PNAME,AGE) VALUES (5,'ROHIT',25);

SELECT * FROM person;

--UPDATE
update PERSON set LOC='MOHALI'
where PID=9403;
--DELETE
delete from PERSON where PID=5;

----------------------------------DDL COMMANDS
--create command used in beginning
--adding a constraint
ALTER TABLE PERSON
ADD UNIQUE(AGE);

--deleting a constraint
ALTER TABLE PERSON
DROP CONSTRAINT PK;

--rename table
ALTER TABLE PERSON
RENAME TO HUMANS;

select * from HUMANS;

truncate table HUMANS;

select * from HUMANS;

drop table HUMANS;

desc HUMANS;
