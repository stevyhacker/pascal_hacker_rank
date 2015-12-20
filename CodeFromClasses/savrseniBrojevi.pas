program savrseniBrojevi;
 var n,i,zd,d:integer;
 begin
   write('n= ');readln(n);
   for i:=2 to n-1 do
     begin
       zd:=1;
       d:=2;
       while(d*d<i) do
         begin
           if(i mod d=0)
             then zd:=zd+d+(i div d);
             d:=d+1;
         end;
         if(d*d=i) then zd:=zd+d;
         if(i=zd)
         then  writeln(i);
     end;
   readln;
 end.