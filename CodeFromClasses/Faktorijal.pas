program part1;
var n,i,f:integer;
begin
   write('n= ');readln(n);
   f:=1;
   i:=1;
   while(i<=n) do
      begin
       f:=f*i;
       i=i+1;
      end;
     writeln(n,'!=',f);
     readln;
end.