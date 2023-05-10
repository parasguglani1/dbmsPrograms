create table staff(
Sno varchar(20),
FName char(20),
LName char(20),
position char(20),
Sex char(10),
DOB varchar(20),
Salary int(100),
bno varchar(100) );

desc staff;
drop table staff;
truncate table staff;


insert into staff values ('SL21', 'Sahil', 'kumar', 'Manager', 'M', '1-oct-45', 30000, 'B005');
insert into staff values ('SG37', 'Nasir', 'Bajwa', 'Assistant', 'M', '10-Nov-60', 12000, 'B003');
insert into staff values ('SG14', 'Davinder', 'Singh', 'Supervisor', 'M', '24-Mar-58', 18000, 'B003');
insert into staff values ('SA9', 'Anjali', 'Mehta', 'Assistant', 'F', '19-Feb-70', 9000, 'B007');
insert into staff values ('SG5', 'Amrit', 'kuar', 'Manager', 'F', '13-Jun-40', 24000, 'B003');

select * from staff;


/*List salaries of all staff, showing only the staff number, the first and last name, and salary*/

select Sno,FName, LName, Salary from staff;



/*list the available position for staff */

select distinct position from staff;

/* Calculated Fields */

/*List the monthly salaries for all staff, showing the staff number, the first and last

names. */

Select Sno,FName,LName,Salary/12 As Monthlysalary from staff;



/*List all staff with a salary greater than 10,000. showing number, name and

salary.*/

Select Sno,FName, LName , Salary from staff where salary>10000;



/*Compound comparison search condition*/

/*List all staff who works as managers or assistants*/

Select Sno, FName, LName, Position from staff where position='Manager' OR position='assistant';



/*List all staff with a salary between 20000 and 30000.*/

select Sno, FName, LName, Salary from Staff where salary between 20000 and 30000;



/*List all Managers or Assistants.*/

select Sno, FName, LName, Position from staff where position in('Manager', 'Assistant');



/*LIKE or NOT LIKE */

/*List all staff with the string ‘Mohali’ in their address.*/

select Sno, FName, LName, address from staff where address like '%Mohali%';



/IS NULL /IS NOT NULL/

/*List the details of all viewing on property PG4 where a comment has not been

supplied.*/

select clientno, Viewdate from viewwing where PropertyNo='PG4' and comment is null;



/*ORDER BY clause*/

/* a list of salaries for all staff, arranged in descending order of salary.*/

SELECT sno, fname, lname, salary

FROM staff

ORDER BY salary DESC;



/*Aggregation*/

/*Property (PropertyNo, Street, City, postcode, Type, OwnerNo, Rooms, Rent)

How many properties cost more than 350 per month to rent?*/

SELECT COUNT(*) AS count
FROM property
WHERE rent > 350;



/*STAFF(sno, fname, lname, position, sex, dob, salary, bno)

Find the total number of Managers and the sum of their salaries.*/

SELECT COUNT(sno) AS count, SUM(salary) AS sum
FROM staff
WHERE position = ‘Manager’;
/GROUP BY clause/

/*STAFF(sno, fname, lname, position, sex, dob, salary, bno)

30

Find the number of staff working in each branch and the sum of their

salaries.*/

SELECT bno, COUNT(sno) AS count, SUM(salary) AS sum
FROM staff
GROUP BY bno;