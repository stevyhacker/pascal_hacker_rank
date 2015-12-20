program prijateljskiBrojevi;
var n,i,j:integer;
function zd(n:integer):integer;
var d,z:integer;
begin
   z:=1;d:=2;
   while(d*d<n) do
      begin
        if(n mod d=0) then z:=z+d+ n div d;
        d:=d+1;
      end;

   if(d*d=n) then z:=z+d;
   zd:=z;
end;
begin
   write('n: ');readln(n);
   for i:=2 to n-1 do
     begin
        j:=zd(i);
        if(j<n) and (j>i) then
           begin
             if(i=zd(j)) then
                writeln(i:6,j:6);
           end;
     end;
   readln;
end.