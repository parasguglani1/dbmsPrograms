drop table branch;
drop table customers;

create table Branch(
B_id int NOT NULL primary key, 
B_name varchar(40) NOT NULL, 
B_city varchar(40) NOT NULL , 
B_state varchar(20) NOT NULL );

insert into Branch values('9403', 'Ghantaghar', 'Meerut', 'Uttar Pradesh');
insert into Branch values('1560', 'Vardhman College', 'Kolkata', 'West Bengal');
insert into Branch values('1806', 'IIT Bombay', 'Mumbai', 'Maharashtra');
insert into Branch values('1354', 'AIIMS', 'Pune', 'Maharashtra');
insert into Branch values('1259', 'Gajendra Path', 'Nagpur', 'Maharashtra');
insert into Branch values('1109', 'Metro Plaza', 'Sohlan', 'West Bengal');
Select * from Branch;

create table Customers(
C_id int NOT NULL PRIMARY KEY, 
C_name varchar(30) NOT NULL, 
Gender char(1) NOT NULL,    
schemes char(9), 
B_id int NOT NULL ,
foreign key(B_id) references Branch(B_id), 
check (Gender in ('M', 'F','O')) );

insert into Customers values('41', 'Paras ', 'M', 'RD', '9403');
insert into Customers values('52', 'Manav', 'M', 'RD', '1806');
insert into Customers values('60', 'Baldev ', 'F', 'RD', '1354');
insert into Customers values('72', 'Shivani', 'F', 'TD', '1806');
insert into Customers values('80', 'Nikita', 'F', 'MIS', '1109');
insert into Customers values('30', 'Shubham', 'M', 'SCSS', '1806');
insert into Customers values('12', 'Akash', 'M', 'KVP', '1806');
insert into Customers values('98', 'Asif Rahmaan', 'M', 'KVP', '1560');
insert into Customers values('65', 'Abhijeet', 'M', 'SB', '1560');

select *from Customers;

-- a) 
Select * from Branch;

-- b)
select C_id, C_name from Customers where B_id in (select B_id from Branch where B_city = 'Mumbai');

-- c)
select C_id, C_name, Gender from Customers where Gender = 'M' AND B_id in (select B_id from Branch where B_city = 'Kolkata');

-- d)
select B_state from Branch GROUP BY B_state HAVING COUNT(B_state) > 1;

-- e)
select schemes from Customers GROUP BY schemes;