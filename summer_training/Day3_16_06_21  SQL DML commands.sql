----------------------------------------------------------------DML Commands
--DML commands used to change the data

--student (name, roll, city, section, bal_due)

create table student
(
s_name char(10),
roll int, --unique id but don't use uid
city char(10),
section varchar(10),
bal_due float(5)
);
desc student;

--insert values

insert into student values('Joe',1, 'Delhi', '20A',100.20);
insert into student values('Daniel',2, 'Mumbai', '20A', 2000); 
insert Into student values('Rock',3, 'Delhi', '20A',500);


--skip an entry 
insert into student values('Rohan',4, null, '20B',10000);
insert into student(s_name,roll,section) values ('Sakshi',1,'20B');
insert into student(roll,section) values (4,'20C');
--inserting multiple
insert all 
into student values('Jhanvi',5, 'Ludhiana', '20A', 12000)
into student values('isha',10, 'Bihar', '20B', 500)
select 1 from dual; 




--to fetch values

select * from student;

--fetch a particular columns
select s_name, roll, bal_due from student;
--select a particular entry
select s_name, roll, section, bal_due from student where city='Delhi';

--to delete data 

delete from student 
where roll=10;

delete from student 
where s_name is null;

delete from student 
where city is null;

delete from student 
where s_name='Joe';

delete from student; --all data delete

select * from student;
------------------update command
---To update data 
update student set city='patiala'
where roll=2;

update student set city='NA'
where city is null;

--update multiple entries

update student set
s_name='Jhanvi k' , bal_due=0
where roll=5;

drop table student;