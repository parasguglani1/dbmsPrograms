

CREATE TABLE SB_ACCOUNT (ACCOUNT_NO VARCHAR2(10),CUSTOMER_NAME VARCHAR2(25),BALANCE NUMBER(10,2));

insert into SB_ACCOUNT values(1, 'aaa', 1000);
insert into SB_ACCOUNT values(2, 'bbb', 100);
insert into SB_ACCOUNT values(3, 'ccc', 1100);
insert into SB_ACCOUNT values(4, 'ddd', 700);
insert into SB_ACCOUNT values(5, 'eee', 1700); 


Declare
mcbal number(10,2);
mact_no varchar2(10);
withdraw number(10,2);
Deposite number(10,2);
begin
mact_no := 4;
select balance into mcbal from sb_account where account_no=mact_no;
withdraw := 100;
Deposite:= 500;
mc:bal:= mcbal + Deposite;
mcbal := mcbal-withdraw;
if mcbal < 1000 then
dbms_output.put_line('WITHDRAWAL NOT POSSIBLE BALANCE BELOW 1000');
else
update sb_account set balance = mcbal where account_no = mact_no;
end if;
end
/