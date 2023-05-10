create or replace package circle AS

function area(r IN number, ar OUT number) return number;

procedure circum(r IN number, cir OUT number);

end;
/


create or replace package body circle AS

function area(r in number, ar out number) return number AS

begin 

  ar:=3.14*r*r;

  return (ar);

end area;

procedure circum(r in number, cir out number) AS

begin

  cir:=2*3.14*r;

end circum;

end;
/




declare

  r number:=10;

  a number;

  c number;

begin

  a:=circle.area(r,a);

  circle.circum(r,c);

  dbms_output.put_line('Area is ' || a);

  dbms_output.put_line('Circumference is '|| c);

end;
