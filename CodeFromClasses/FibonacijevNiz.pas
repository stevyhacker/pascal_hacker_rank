program FibonacijevNiz;
var n:longint;
function fib1(n:longint):longint;
begin
        if(n>2) then fib1:=fib1(n-1)+fib1(n-2)
                else fib1:=1;
end;
function fib2(n:longint):longint;
var a,b,c,i:longint;
begin
    a:=1;b:=1;i:=2; c:=1;
    while(i<n) do
        begin
                i:=i+1;c:=a+b;a:=b;b:=c;
        end;
    fib2:=c;
end;

begin
        write('N= ');readln(n);
        writeln('F(',n,')=',fib1(n));
        writeln('F(',n,')=',fib2(n));
        readln;
end.