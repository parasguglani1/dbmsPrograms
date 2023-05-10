drop table myTable;
drop table myTableDeleted;
create table myTable(id number(10),name varchar2(30), age number(3) );
insert into myTable values(1,'Shivam', 11);
insert into myTable values(2, 'Paras', 14);
insert into myTable values(3,'Ruchika', 13);
insert into myTable values(4,'Vansh', 12);

select * from myTable;
create table myTableDeleted(id number(10),name varchar2(30), age number(3) );
select * from myTableDeleted;


CREATE OR REPLACE TRIGGER saveDeleted 
BEFORE DELETE ON myTable

BEGIN 
    INSERT INTO myTableDeleted VALUES(:OLD.id,:OLD.name,:OLD.age);
END; 
/


DECLARE  
  total_rows number(2); 
BEGIN 
    delete from myTable where age= 14; 
    IF sql%notfound THEN 
        dbms_output.put_line('no data deleted, value not found'); 
    ELSIF sql%found THEN 
    total_rows := sql%rowcount;
        dbms_output.put_line( total_rows || ' data deleted and stored in myTableDeleted '); 
END;

select * from myTable;
select * from myTableDeleted;