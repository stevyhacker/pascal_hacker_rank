program faktorijalBroja;
var n,f:longint;
function f1(n:longint):longint;
var i,f:integer;
begin f:=1;
                for i:=1 to n do  f:=f*i;
                f1:=f;
end;
function f2(n:longint):longint;
begin
        if(n>0) then f2:= n* f2(n-1)
                else f2:=1;
end;
begin
        write('N= ');readln(n);
        writeln(n,'!=',f1(n));
        writeln(n,'!=',f2(n));
        readln;
end.
