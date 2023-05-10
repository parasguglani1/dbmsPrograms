
CREATE TABLE department(
d_no NUMBER(4) NOT NULL ,
d_name VARCHAR(25) PRIMARY KEY,
d_HOD VARCHAR(25)
); 


CREATE TABLE student(
s_id NUMBER(5) PRIMARY KEY,
s_name VARCHAR2(25),
s_dob DATE NOT NULL,
d_name VARCHAR2(25),
);





CREATE TABLE student(
s_id NUMBER(5) NOT NULL PRIMARY KEY,
s_name VARCHAR(25),
s_dob DATE NOT NULL,
d_name VARCHAR(25),
FOREIGN KEY (d_name) REFERENCES department(d_name)
);

CREATE TABLE faculty(
f_code NUMBER(5) NOT NULL PRIMARY KEY,
f_name VARCHAR(25),
designation VARCHAR(15),
salary NUMBER(10),
d_name VARCHAR(25),
FOREIGN KEY (d_name) REFERENCES department(d_name)
);

INSERT INTO department VALUES(4569, 'Computer Science', 'Vikas Jindal');
INSERT INTO department VALUES(1879, 'Mechanical', 'Ashish Sinha');
INSERT INTO department VALUES(8639, 'Architecture', 'Shivani');
INSERT INTO department VALUES(2549, 'Humanities', 'Rahul');
INSERT INTO department VALUES(8099, 'Electrical', 'Gauri Shankar');
INSERT INTO department VALUES(6521, 'Commerce', 'Raj Rohilla');
INSERT INTO department VALUES(8008, 'Medical', 'Lovisha Arya');

INSERT INTO faculty VALUES(2500 ,'Jaspreet','Coordinator', 30000,'Computer Science');
INSERT INTO faculty VALUES(1436 ,'Navjot','Asst. Professor',24000,'Computer Science');
INSERT INTO faculty VALUES(1162 ,'Jasmeet','Asst. Professor', 24000,'Computer Science');
INSERT INTO faculty VALUES(9007 ,'RUHANI','Professor', 60000,'Architecture');
INSERT INTO faculty VALUES(2361 ,'ABHINAV','Asst. Professor', 30000,'Mechanical');
INSERT INTO faculty VALUES(7000 ,'DIVYA','Asst. Professor', 30000,'Computer Science');
INSERT INTO faculty VALUES(6780 ,'RAVINA','Asst. Professor', 30000,'Computer Science');
INSERT INTO faculty VALUES(9742 ,'RAGHAV','Clerk', 20000,'Computer Science');
INSERT INTO faculty VALUES(1397 ,'MANMEET','Asst. Professor', 45000,'Mechanical');
INSERT INTO faculty VALUES(6000 ,'Suniti','Asst. Professor', 30000,'Humanities');
INSERT INTO faculty VALUES(2748 ,'SANJOLI','Asst. Professor', 26000,'Medical');
INSERT INTO faculty VALUES(0987 ,'HATYESH','Professor', 60000,'Medical');
INSERT INTO faculty VALUES(7866 ,'LUCKY SINGH','Professor', 30000,'Commerce');

INSERT INTO student VALUES(9403, 'Paras', DATE'2001-08-22', 'Computer Science');
INSERT INTO student VALUES(5778, 'Manav', DATE'2002-09-20' , 'Computer Science');
INSERT INTO student VALUES(9870, 'Baldev', DATE'2001-08-22', 'Mechanical');
INSERT INTO student VALUES(7895, 'Abhinav Singh',DATE'2002-12-27', 'Computer Science');
INSERT INTO student VALUES(2345, 'SUNNY KUMAR', DATE'2003-08-27', 'Electrical');
INSERT INTO student VALUES(7865, 'Vaibhav Jha',DATE'2003-05-12' , 'Mechanical');
INSERT INTO student VALUES(9009, 'Ishan Sagar',DATE'2001-03-17' , 'Computer Science');
INSERT INTO student VALUES(2623, 'Sanskar Vyas', DATE'2001-12-06', 'Mechanical');
INSERT INTO student VALUES(3232, 'Jugaad Singh', DATE'2003-02-20', 'Computer Science');
INSERT INTO student VALUES(3215, 'Adarsh  kumar gaud',DATE'2002-01-22' , 'Computer Science');
INSERT INTO student VALUES(8009, 'PALVI', DATE'2003-02-07', 'Electrical');
INSERT INTO student VALUES(7699, 'Priya',DATE'2003-04-17' , 'Computer Science');
INSERT INTO student VALUES(4656, 'DEV',DATE'2002-02-27' , 'Computer Science');
INSERT INTO student VALUES(9000, 'Divya',DATE'2003-12-20', 'Computer Science');
INSERT INTO student VALUES(1200, 'Gaurav', DATE'2001-04-20', 'Electrical');

--List the details of students in the ascending order of date of birth
SELECT * FROM student ORDER BY s_dob;   --by default in ascending order

--Display the details of students from computer department
SELECT * FROM student WHERE d_name = 'Computer Science';

--List the faculties in the descending order of salary
SELECT * FROM faculty ORDER BY salary DESC;

--Display the total number of students in each department
SELECT d_name, COUNT(s_id) FROM student GROUP BY d_name;

--Display the total number of faculties in each department with salary greater than 25000
SELECT d_name, COUNT(f_code) 
FROM faculty 
WHERE salary>25000 
GROUP BY d_name;