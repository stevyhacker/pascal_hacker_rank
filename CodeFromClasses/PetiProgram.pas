program peti;
var
x1,y1,x2,y2,k,n:REAL;
begin
writeln('Unesi koordinate dvije tacke: ');
write('x1= '); readln(x1);
write('y1= '); readln(y1);
write('x2= '); readln(x2);
write('y2= '); readln(y2);

if(x1=x2) then
  begin
     writeln('Jednacina prave je x= ',x1:5:2);
  end
  else
    begin
     k:=(y2-y1)/(x2-x1);
     n:=(y1*x2-y2*x1)/(x2-x1);
       if(n>0) then
     writeln('Jednacina prave je y=',k:5:2,'*x+',n:5:2)
       else
     writeln('Jednacina prave je y=',k:5:2,'*x',n:5:2);
    end;
     readln;
end.