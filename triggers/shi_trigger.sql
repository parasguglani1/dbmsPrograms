drop table marksTable;
drop table marksBackup;
create table marksTable(id varchar2(15),name varchar2(30), age number(3), marksOn100 number(3) );
insert into marksTable values('20bcs9337','Shivam', 11, 89);
insert into marksTable values('20bcs9403', 'Paras', 14, 90);
insert into marksTable values('20bcs9285','Ruchika', 13, 80);
insert into marksTable values('20bcs9689','Suraj', 12, 86);

select * from marksTable;
create table  marksBackup(id varchar2(15),name varchar2(30), age number(3), marksOn100 number(3) );
select * from  marksBackup;


CREATE OR REPLACE TRIGGER saveDeleted 
BEFORE DELETE ON marksTable
for each row

BEGIN 
    INSERT INTO  marksBackup VALUES(:OLD.id,:OLD.name,:OLD.age; OLD.marksOn100);
END; 
/


DECLARE  
    total_rows number(2); 
BEGIN 
    delete from marksTable where age= 14; 
    IF sql%notfound THEN 
        dbms_output.put_line('no data deleted, value not found'); 
    ELSIF sql%found THEN 
    total_rows := sql%rowcount;
        dbms_output.put_line( total_rows || ' data deleted and stored in myTableDeleted '); 
        END IF;
END;
/

select * from marksTable;
select * from myTableDeleted;