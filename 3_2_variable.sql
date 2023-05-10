DECLARE

variable1 INT :=20;

y INT :=3;

z INT;

subtraction INT := x-y;

addition INT := x+y;

Modulo INT := MOD(x,y);

multiplication INT := x*y;

division INT := x/y;





BEGIN



DBMS_OUTPUT.PUT_LINE(' x is ' || x || ' and y is ' || y);



DBMS_OUTPUT.PUT_LINE('adding ' || y|| ' to ' ||x|| ' gives ' || addition);

DBMS_OUTPUT.PUT_LINE('subtracting ' || y|| ' from ' ||x|| ' gives ' || subtraction);

DBMS_OUTPUT.PUT_LINE('dividing ' || x || ' by ' ||y|| ' gives remainder ' || Modulo);

DBMS_OUTPUT.PUT_LINE('multiplying ' || x || ' by ' ||y|| ' gives product as ' || multiplication);

DBMS_OUTPUT.PUT_LINE('dividing ' || x || ' by ' ||y|| ' gives ' || division);



End;

/

